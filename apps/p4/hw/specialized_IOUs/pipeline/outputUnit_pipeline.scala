import chisel3._
import chisel3.util._

class outputUnit(reg_width: Int, num_regs_lg: Int, opcode_width: Int, num_threads: Int, ip_width: Int) extends Module {
  val io = IO(new Bundle {
    val out_ready    = Input(Bool())
    val out_valid    = Output(Bool())
    val out_tag      = Output(UInt(log2Up(num_threads).W))
    val out_data     = Output(UInt(512.W))
    val out_empty    = Output(UInt(6.W))
    val out_last     = Output(Bool())

    val ar_valid     = Input(Bool())
    val ar_tag       = Input(UInt(log2Up(num_threads).W))
    val ar_opcode    = Input(UInt(opcode_width.W))
    val ar_rs        = Input(UInt(num_regs_lg.W))
    val ar_bits      = Input(UInt(32.W))
    val ar_imm       = Input(UInt(32.W))
    val ar_ready     = Output(Bool())

    val r_valid      = Output(Bool())
    val r_flag       = Output(UInt(ip_width.W))
    val r_tag        = Output(UInt(log2Up(num_threads).W))

    // from input unit
    val pkt_buf_data  = Input(new pkt_buf_t(num_threads))
    val pkt_buf_valid = Input(Bool())
    val pkt_buf_ready = Output(Bool())

    // dump regfile interface
    val rd_req_valid  = Output(Bool())
    val rd_req_ready  = Input(Bool())
    val rd_req        = Output(new BFU_regfile_req_t(log2Up(num_threads), num_regs_lg))
    val rd_rsp_valid  = Input(Bool())
    val rd_rsp_ready  = Output(Bool())
    val rd_rsp        = Input(new BFU_regfile_rsp_t(reg_width))
  })
  // opcode(0) = 0: set meta, 1: emit hdr
  // imm(5, 0): length

  val port = RegInit(0.U(9.W))
  val mcast_grp = RegInit(0.U(16.W))
  val outReqState = RegInit(0.U(4.W))
  val outRspState = RegInit(0.U(4.W))
  val threadDone = RegInit(VecInit(Seq.fill(num_threads)(false.B)))
  val hdrModeMem = Reg(Vec(num_threads, UInt(8.W)))
  
  val r_valid_r = RegInit(false.B)
  val hdr_mode = RegInit(0.U(8.W))
  val tag_r = Reg(UInt(log2Up(num_threads).W))
  val out_hdr_mode = RegInit(0.U(8.W))
  val out_tag = Reg(UInt(log2Up(num_threads).W))
  val out_buf = Reg(UInt(512.W))
  val out_valid = RegInit(false.B)
  val out_last = RegInit(false.B)
  val out_empty = Reg(UInt(6.W))

  io.r_flag := 0.U
  io.ar_ready := true.B
  r_valid_r := false.B
  tag_r := io.ar_tag
  when (io.ar_valid) {
    when (io.ar_opcode(1)) {
      threadDone(io.ar_tag) := true.B
      hdrModeMem(io.ar_tag) := io.ar_bits(7, 0)
    } .otherwise {
      port := io.ar_bits(8, 0)
      mcast_grp := io.ar_bits(31, 16)
      r_valid_r := true.B
    }
  }


  io.rd_req_valid := false.B
  io.rd_req := DontCare
  io.rd_req.tag := io.pkt_buf_data.tag
  when (outReqState === 0.U) {
    when (io.pkt_buf_valid) {
      hdr_mode := hdrModeMem(io.pkt_buf_data.tag)
      when (threadDone(io.pkt_buf_data.tag)) {
        io.rd_req_valid := true.B
        io.rd_req.rdAddr1 := 1.U
        io.rd_req.rdAddr2 := 2.U
        when (io.rd_req_ready) {
          when (hdrModeMem(io.pkt_buf_data.tag) > 1.U) {
            outReqState := 1.U
          } .otherwise {
            outReqState := 7.U
          }
        }
      }
    }
  } .elsewhen (outReqState === 1.U) {
    io.rd_req_valid := true.B
    io.rd_req.rdAddr1 := 3.U
    io.rd_req.rdAddr2 := 4.U
    when (io.rd_req_ready) {
      outReqState := 7.U
    }
  } .elsewhen (outReqState === 7.U) {
    outReqState := 0.U
    threadDone(io.pkt_buf_data.tag) := false.B
  }

  io.r_valid := r_valid_r
  io.r_tag := tag_r
  io.pkt_buf_ready := false.B
  io.rd_rsp_ready := false.B
  when (outRspState === 0.U) {
    out_valid := false.B
    io.rd_rsp_ready := true.B
    out_hdr_mode := hdrModeMem(io.pkt_buf_data.tag)
    when (io.rd_rsp_valid) {
      out_tag := io.pkt_buf_data.tag
      out_buf := Cat(0.U, io.rd_rsp.rdData2(159, 0), io.rd_rsp.rdData1(111, 0))
      out_last := false.B
      when (hdrModeMem(io.pkt_buf_data.tag) === 0.U) {
        out_valid := true.B
        out_empty := 50.U
        outRspState := 11.U
      } .elsewhen (hdrModeMem(io.pkt_buf_data.tag) === 1.U) {
        out_valid := true.B
        out_empty := 30.U
        outRspState := 11.U
      } .otherwise {
        outRspState := 1.U
      }
    }
  } .elsewhen (outRspState === 1.U) {
    out_valid := false.B
    io.rd_rsp_ready := true.B
    when (io.rd_rsp_valid) {
      out_last := false.B
      out_valid := true.B
      outRspState := 11.U
      when (out_hdr_mode === 2.U) {
        out_buf := Cat(0.U, io.rd_rsp.rdData1(159, 0), out_buf(271, 0))
        out_empty := 10.U
      } .otherwise {
        out_buf := Cat(0.U, io.rd_rsp.rdData1(63, 0), out_buf(271, 0))
        out_empty := 22.U
      }
    }
  } .elsewhen (outRspState === 11.U) {
    when (io.out_ready) {
      out_valid := false.B
      io.pkt_buf_ready := true.B
      when (io.pkt_buf_valid) {
        out_valid := true.B
        out_tag := io.pkt_buf_data.tag
        out_buf := io.pkt_buf_data.data
        out_last := io.pkt_buf_data.last
        out_empty := io.pkt_buf_data.empty
        when (io.pkt_buf_data.last) {
          outRspState := 12.U
        }
      }
    }
  } .elsewhen (outRspState === 12.U) {
    when (io.out_ready || !out_valid) {
      out_valid := false.B
      when (!r_valid_r) {
        io.r_valid := true.B
        io.r_tag := out_tag
        outRspState := 0.U
      }
    }
  }

  io.out_valid := out_valid
  io.out_tag := out_tag
  io.out_empty := out_empty
  io.out_last := out_last
  io.out_data := out_buf

}