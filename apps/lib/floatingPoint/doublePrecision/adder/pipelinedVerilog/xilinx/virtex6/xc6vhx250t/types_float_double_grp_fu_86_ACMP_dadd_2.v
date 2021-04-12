// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2012.2
// Copyright (C) 2012 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module types_float_double_grp_fu_86_ACMP_dadd_2_io(
    clk,
    reset,
    io_ce,
    io_rdy,
    io_a,
    io_b,
    io_result);

input clk;
input io_ce;
output io_rdy;
input reset;
input[64 - 1:0] io_a;
input[64 - 1:0] io_b;
output[64 - 1:0] io_result;

adder64fp m(
    .clk(clk),
    .ce(io_ce), 
    .rdy(io_rdy), 
    .a(io_a),
    .b(io_b),
    .operation(6'd0),  //according to DSP core manual
    .result(io_result));


endmodule

module adder64fp(
    clk,
    ce, 
    rdy, 
    a, 
    b, 
    operation, 
    result);

input clk;
input ce;
output rdy;
input [63 : 0] a;
input [63 : 0] b;
input [5 : 0] operation;
output [63 : 0] result;


//assign result = a + b;
//ACMP_dadd #(
//.ID( ID ),
//.NUM_STAGE( 16 ),
//.din0_WIDTH( din0_WIDTH ),
//.din1_WIDTH( din1_WIDTH ),
//.dout_WIDTH( dout_WIDTH ))
//ACMP_dadd_U(
//    .clk( clk ),
//    .reset( reset ),
//    .ce( ce ),
//    .din0( din0 ),
//    .din1( din1 ),
//    .dout( dout ));

endmodule