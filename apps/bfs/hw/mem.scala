import chisel3._
import chisel3.util._

class mem(addr_width: Int) extends Module {
  val io = IO(new Bundle {
    val mem_addr      = Input(UInt(addr_width.W))
    val read          = Input(Bool())
    val write         = Input(Bool())
    val writedata     = Input(UInt(512.W))
    val byteenable    = Input(UInt(64.W))
    val waitrequest   = Output(Bool())
    val readdatavalid = Output(Bool())
    val readdata      = Output(UInt(512.W))
  })

  val mem = VecInit(
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001".U,
    "h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".U
  )

  class delayFifo_t extends Bundle {
    val time = UInt(64.W)
    val value = UInt(512.W)

    override def cloneType = (new delayFifo_t().asInstanceOf[this.type])
  }

  val r = scala.util.Random
  val timer = RegInit(0.U(64.W))
  val delayFifo = Module(new Queue(new delayFifo_t, 16))

  timer := timer + 1.U
  delayFifo.io.enq.valid := false.B
  delayFifo.io.enq.bits := DontCare
  io.waitrequest := !delayFifo.io.enq.ready
  when (io.read) {
    val delayFifo_in = Wire(new delayFifo_t)
    delayFifo_in.value := mem(io.mem_addr(addr_width-1, 6))
    delayFifo_in.time := timer + (40 + r.nextInt(10)).U
    delayFifo.io.enq.bits := delayFifo_in
    delayFifo.io.enq.valid := true.B
  }
  
  io.readdatavalid := false.B
  io.readdata := DontCare
  delayFifo.io.deq.ready := false.B
  when (delayFifo.io.deq.valid) {
    when (delayFifo.io.deq.bits.time <= timer) {
      delayFifo.io.deq.ready := true.B
      io.readdata := delayFifo.io.deq.bits.value
      io.readdatavalid := true.B
    }
  }
}