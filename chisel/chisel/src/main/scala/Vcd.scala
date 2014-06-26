package Chisel
import Node._
import Reg._
import Literal._
import Component._
import ChiselError._
import scala.collection.mutable.HashMap

class VcdBackend extends Backend {
  override def emitTmp(node: Node): String = 
    emitRef(node)

  override def emitRef(node: Node): String = {
    node match {
      case x: Literal =>
        (if (x.isBinary) { 
           var (bits, mask, swidth) = parseLit(x.name);
           var bwidth = if(x.base == 'b') x.width else swidth;
           if (x.isZ) {
             ("LITZ<" + bwidth + ">(0x" + toHex(bits) + ", 0x" + toHex(mask) + ")")
           } else
             ("LIT<" + bwidth + ">(0x" + toHex(bits) + ")")
         } else if(x.base == 'd' || x.base == 'x'){
           ("LIT<" + x.width + ">(" + x.name + "L)")
         } else
           ("LIT<" + x.width + ">(0x" + x.name + "L)")
        )
      case _ =>
        super.emitRef(node)
    }
  }

  def emitDef(node: Node, vcdname: String): String = { // vcdname: String
    "  if (t == 0 || (" + emitRef(node) + " != " + emitRef(node) + "__prev).to_bool())\n" +
    "    dat_dump(f, " + emitRef(node) + ", \"" + vcdname + "\");\n" +
    "  " + emitRef(node) + "__prev = " + emitRef(node) + ";\n"
  }

  override def emitDec(node: Node): String =
    if (isVCD && !node.isLit) "  dat_t<" + node.width + "> " + emitRef(node) + "__prev" + ";\n" else ""

  def dumpVCDScope(c: Component, file: java.io.FileWriter, top: Component, names: HashMap[Node, String]): Unit = {
    file.write("    fprintf(f, \"" + "$scope module " + c.name + " $end" + "\\n\");\n");
    for (mod <- top.omods) {
      if (mod.component == c && mod.isInVCD) {
        file.write("    fprintf(f, \"$var wire " + mod.width + " " + names(mod) + " " + top.stripComponent(emitRef(mod)) + " $end\\n\");\n");
      
      }
    }
    for (child <- c.children) {
      dumpVCDScope(child, file, top, names);
    }
    file.write("    fprintf(f, \"$upscope $end\\n\");\n");
  }

  def dumpVCD(c: Component, file: java.io.FileWriter): Unit = {
    var num = 0;
    val names = new HashMap[Node, String];
    for (mod <- c.omods) {
      if (mod.isInVCD) {
        names(mod) = "N" + num;
        num += 1;
      }
    }
    file.write("void " + c.name + "_t::dump(FILE *f, int t) {\n");
    if (isVCD) {
      file.write("  if (t == 0) {\n");
      file.write("    fprintf(f, \"$timescale 1ps $end\\n\");\n");
      dumpVCDScope(c, file, c, names);
      file.write("    fprintf(f, \"$enddefinitions $end\\n\");\n");
      file.write("    fprintf(f, \"$dumpvars\\n\");\n");
      file.write("    fprintf(f, \"$end\\n\");\n");
      file.write("  }\n");
      file.write("  fprintf(f, \"#%d\\n\", t);\n");
      for (mod <- c.omods) {
        if (mod.isInVCD && mod.name != "reset")
          file.write(emitDef(mod, names(mod)));
      }
    }
    file.write("}\n");
  }

}

