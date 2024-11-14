import chisel3._
import chisel3.util._

class alu_bfu1(tag_width: Int, reg_width: Int, opcode_width: Int, num_threads: Int, ip_width: Int) extends Module {
  val io = IO(new Bundle {
    val in_valid      = Input(Bool())
    val in_alu_bfu    = Input(Bool())
    val in_tag        = Input(UInt(tag_width.W))
    val in_opcode     = Input(UInt(opcode_width.W))
    val in_ready      = Output(Bool())
    val in_rs1        = Input(UInt(reg_width.W))
    val in_rs2        = Input(UInt(32.W))
    val in_addEn      = Input(Bool())
    val in_subEn      = Input(Bool())
    val in_sltEn      = Input(Bool())
    val in_sltuEn     = Input(Bool())
    val in_andEn      = Input(Bool())
    val in_orEn       = Input(Bool())
    val in_xorEn      = Input(Bool())
    val in_sllEn      = Input(Bool())
    val in_srEn       = Input(Bool())
    val in_srMode     = Input(Bool())
    val in_luiEn      = Input(Bool())
    val in_catEn      = Input(Bool())
    val in_immSel     = Input(Bool())
    val in_imm        = Input(SInt(32.W))
    val out_valid     = Output(Bool())
    val out_tag       = Output(UInt(tag_width.W))
    val out_flag      = Output(UInt(32.W))
    val out_bits      = Output(UInt(reg_width.W))
    val out_ready     = Input(Bool())

    val ft_out_valid  = Output(Bool())
    val ft_out_tag    = Output(UInt(tag_width.W))
    val ft_out_opcode = Output(UInt(opcode_width.W))
    val ft_out_imm    = Output(UInt(12.W))
    val ft_out_bits   = Output(Vec(1, UInt(reg_width.W)))
    val ft_out_ready  = Input(Bool())
    val ft_in_valid   = Input(Bool())
    val ft_in_tag     = Input(UInt(tag_width.W))
    val ft_in_flag    = Input(UInt(ip_width.W))
    val ft_in_bits    = Input(UInt(reg_width.W))
    val ft_in_ready   = Output(Bool())

    val mem           = new gMemBundle
  })

  val aluInst = Module(new ALU(reg_width))
  val bfuInst = Module(new dynamicMem(tag_width, reg_width, opcode_width, num_threads, ip_width))
  val alu_valid_d0 = RegInit(false.B)
  val tag_r = RegNext(io.in_tag)

  class bfuIn_t extends Bundle {
    val tag    = UInt(tag_width.W)
    val opcode = UInt(opcode_width.W)
    val imm    = UInt(12.W)
    val bits   = Vec(2, UInt(reg_width.W))
  }

  class bfuOut_t extends Bundle {
    val tag    = UInt(tag_width.W)
    val flag   = UInt(ip_width.W)
    val bits   = UInt(reg_width.W)
  }

  // val bfuInputBuf = Module(new Queue(new bfuIn_t, 4))
  val bfuOutputBuf = Module(new Queue(new bfuOut_t, num_threads))
  
  // in_alu_bfu: 0: select alu; 1: select bfu
  alu_valid_d0      := io.in_valid && (!io.in_alu_bfu)
  aluInst.io.rs1    := io.in_rs1   
  aluInst.io.rs2    := io.in_rs2   
  aluInst.io.addEn  := io.in_addEn 
  aluInst.io.subEn  := io.in_subEn 
  aluInst.io.sltEn  := io.in_sltEn 
  aluInst.io.sltuEn := io.in_sltuEn
  aluInst.io.andEn  := io.in_andEn 
  aluInst.io.orEn   := io.in_orEn  
  aluInst.io.xorEn  := io.in_xorEn 
  aluInst.io.sllEn  := io.in_sllEn 
  aluInst.io.srEn   := io.in_srEn  
  aluInst.io.srMode := io.in_srMode
  aluInst.io.luiEn  := io.in_luiEn 
  aluInst.io.catEn  := io.in_catEn 
  aluInst.io.immSel := io.in_immSel
  aluInst.io.imm    := io.in_imm   

  // bfuInputBuf.io.enq.valid := io.in_valid && io.in_alu_bfu
  // bfuInputBuf.io.enq.bits.tag     := io.in_tag
  // bfuInputBuf.io.enq.bits.opcode  := io.in_opcode
  // bfuInputBuf.io.enq.bits.imm     := io.in_imm.asUInt
  // bfuInputBuf.io.enq.bits.bits(0) := io.in_rs1
  // bfuInputBuf.io.enq.bits.bits(1) := io.in_rs2

  // bfuInst.io.in_valid := bfuInputBuf.io.deq.valid
  // bfuInst.io.in_tag := bfuInputBuf.io.deq.bits.tag
  // bfuInst.io.in_opcode := bfuInputBuf.io.deq.bits.opcode
  // bfuInst.io.in_imm := bfuInputBuf.io.deq.bits.imm
  // bfuInst.io.in_bits := bfuInputBuf.io.deq.bits.bits
  // bfuInputBuf.io.deq.ready := bfuInst.io.in_ready

  bfuInst.io.in_valid := io.in_valid && io.in_alu_bfu
  bfuInst.io.in_tag        := io.in_tag
  bfuInst.io.in_opcode     := io.in_opcode
  bfuInst.io.in_imm        := io.in_imm.asUInt
  bfuInst.io.in_bits(0)    := io.in_rs1
  bfuInst.io.in_bits(1)    := io.in_rs2

  bfuOutputBuf.io.enq.valid := bfuInst.io.out_valid
  bfuOutputBuf.io.enq.bits.tag := bfuInst.io.out_tag
  bfuOutputBuf.io.enq.bits.flag := bfuInst.io.out_flag
  bfuOutputBuf.io.enq.bits.bits := bfuInst.io.out_bits
  bfuInst.io.out_ready := true.B

  io.mem.mem_addr := DontCare
  io.mem.read := false.B
  io.mem.write := false.B
  io.mem.writedata := DontCare
  io.mem.byteenable := DontCare

  when (io.in_alu_bfu) {
    io.in_ready := true.B
  } .otherwise {
    io.in_ready := true.B
  }

  bfuOutputBuf.io.deq.ready := false.B
  when (alu_valid_d0) {
    io.out_valid := true.B
    io.out_tag := tag_r
    io.out_flag := aluInst.io.dout
    io.out_bits := aluInst.io.dout
  } .otherwise {
    io.out_valid := bfuOutputBuf.io.deq.valid
    io.out_tag := bfuOutputBuf.io.deq.bits.tag
    io.out_flag := (bfuOutputBuf.io.deq.bits.flag << 2)
    io.out_bits := bfuOutputBuf.io.deq.bits.bits
    bfuOutputBuf.io.deq.ready := true.B
  }

  io.ft_out_valid := false.B
  io.ft_out_tag := DontCare
  io.ft_out_opcode := DontCare
  io.ft_out_imm := DontCare
  io.ft_out_bits := DontCare
  io.ft_in_ready := true.B
}