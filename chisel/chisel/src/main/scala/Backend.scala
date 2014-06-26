package Chisel
import Node._
import Reg._
import ChiselError._
import Component._
import scala.collection.mutable.ArrayBuffer
import scala.collection.mutable.Stack
import scala.collection.mutable.HashSet

object Backend {
}

abstract class Backend {
  def depthString(depth: Int): String = {
    var res = "";
    for (i <- 0 until depth)
      res += "  ";
    res
  }

 def emitTmp(node: Node): String

  def emitRef(node: Node): String = {
    node match {
      case r: Reg => 
        if (r.name == "") "R" + r.emitIndex else r.name
      case _ => 
        if(node.name == "" || !node.named) 
          "T" + node.emitIndex 
        else if(!node.named)
          node.name + "_" + node.emitIndex
        else 
          node.name
    }
  }

  def emitRef(c: Component): String =
    c.name

  def emitDec(node: Node): String = ""

  val transforms = ArrayBuffer[(Component) => Unit]()

  // DFS walk of graph to collect nodes of every component
  def collectNodesIntoComp(c: Component) = {
    val dfsStack = new Stack[(Node, Component)]()
    val walked = new HashSet[Node]()

    def walk = {
      var nextComp = c

      while(!dfsStack.isEmpty) {
        val (node, curComp) = dfsStack.pop

        if(!walked.contains(node)) {
          walked += node
          // push and pop components as necessary
          node match {
            case io: Bits => {
              if (io.dir == OUTPUT) // push
                nextComp = io.component
              else if (io.dir == INPUT) // pop
                nextComp = io.component.parent
              else // do nothing
                nextComp = curComp
            }
            case any => // do nothing
              nextComp = curComp
          }

          // collect inputs into component
          for (input <- node.inputs) {
            if(!walked.contains(input)) {
              nextComp.nodes += input
              if(input.component == null) input.component = nextComp
              dfsStack.push((input, nextComp))
            }
          }
        }
      }

    }

    println("resolving nodes to the components")
    // start DFS from top level inputs
    // dequeing from dfsStack => walked
    for ((name, io) <- c.io.flatten) {
      assert(io.isInstanceOf[Bits])
      if(io.asInstanceOf[Bits].dir == OUTPUT) {
        c.nodes += io
        io.component = c
        dfsStack.push((io, c))
      }
    }

    walk;
    assert(dfsStack.isEmpty)
    println("finished resolving")
  }

  def transform(c: Component, transforms: ArrayBuffer[(Component) => Unit]): Unit = {
    for (t <- transforms)
      t(c)
  }


  def emitDef(node: Node): String = ""

  def elaborate(c: Component): Unit = { }

  def compile(c: Component, flags: String = null): Unit = { }

  def checkPorts(topC: Component) = {

    def prettyPrint(n: Node, c: Component) = {
      val dir = if (n.asInstanceOf[Bits].dir == INPUT) "Input" else "Output"
      val portName = n.name
      val compName = c.name
      val compInstName = c.instanceName
      println("Warning: " + dir + " port " + portName + " is unconnected in module " + 
              compInstName + " " + compName)
    }

    for (c <- components) {
      if (c != topC) {
        for ((n,i) <- c.io.flatten) {
          if (i.inputs.length == 0) {
            prettyPrint(i, c)
          }
        }
      }
    }

  }

}


