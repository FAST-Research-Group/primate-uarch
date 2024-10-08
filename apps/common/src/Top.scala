import chisel3._
import chisel3.util._

import scala.collection.mutable.ArrayBuffer
import scala.collection.mutable.HashMap


/* This source implements a module that adds a constant value
 * to each input data element, and send the result out as
 * the output data element. The constant value is retrieved
 * through an offload interface.
 */

class Top extends Module with GorillaUtil {
  val io = IO(new gInOutOffBundle(new input_t, new output_t))
  val result = MTEngine("primate.c", 16)
}
