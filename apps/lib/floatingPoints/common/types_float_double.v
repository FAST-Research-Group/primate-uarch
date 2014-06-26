// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2012.2
// Copyright (C) 2012 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="types_float_double_inst,types_float_double,{component_name=types_float_double_inst,HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc6vlx240tff1759-2,HLS_INPUT_CLOCK=2.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.015000,HLS_SYN_LAT=59,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=14,HLS_SYN_FF=8704,HLS_SYN_LUT=5214}" *)

module types_float_double (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        inA,
        inB,
        inC,
        inD,
        out1,
        out1_ap_vld,
        out2,
        out2_ap_vld,
        out3,
        out3_ap_vld,
        out4,
        out4_ap_vld
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
input  [63:0] inA;
input  [63:0] inB;
input  [63:0] inC;
input  [31:0] inD;
output  [63:0] out1;
output   out1_ap_vld;
output  [63:0] out2;
output   out2_ap_vld;
output  [63:0] out3;
output   out3_ap_vld;
output  [31:0] out4;
output   out4_ap_vld;

reg ap_done;
reg ap_idle;
reg out1_ap_vld;
reg out2_ap_vld;
reg out3_ap_vld;
reg out4_ap_vld;
reg   [5:0] ap_CS_fsm = 6'b000000;
wire   [63:0] grp_fu_86_p2;
wire   [63:0] grp_fu_93_p2;
wire   [63:0] grp_fu_100_p2;
wire   [31:0] grp_fu_79_p2;
wire   [31:0] grp_fu_79_p1;
wire   [63:0] grp_fu_86_p0;
wire   [63:0] grp_fu_86_p1;
wire   [63:0] grp_fu_93_p0;
wire   [63:0] grp_fu_93_p1;
wire   [63:0] grp_fu_100_p0;
wire   [63:0] grp_fu_100_p1;
wire   [31:0] grp_fu_79_p0;
wire    grp_fu_79_ce;
wire    grp_fu_86_ce;
wire    grp_fu_93_ce;
wire    grp_fu_100_ce;
reg   [5:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st0_fsm_0 = 6'b000000;
parameter    ap_ST_st1_fsm_1 = 6'b000001;
parameter    ap_ST_st2_fsm_2 = 6'b000010;
parameter    ap_ST_st3_fsm_3 = 6'b000011;
parameter    ap_ST_st4_fsm_4 = 6'b000100;
parameter    ap_ST_st5_fsm_5 = 6'b000101;
parameter    ap_ST_st6_fsm_6 = 6'b000110;
parameter    ap_ST_st7_fsm_7 = 6'b000111;
parameter    ap_ST_st8_fsm_8 = 6'b001000;
parameter    ap_ST_st9_fsm_9 = 6'b001001;
parameter    ap_ST_st10_fsm_10 = 6'b001010;
parameter    ap_ST_st11_fsm_11 = 6'b001011;
parameter    ap_ST_st12_fsm_12 = 6'b001100;
parameter    ap_ST_st13_fsm_13 = 6'b001101;
parameter    ap_ST_st14_fsm_14 = 6'b001110;
parameter    ap_ST_st15_fsm_15 = 6'b001111;
parameter    ap_ST_st16_fsm_16 = 6'b010000;
parameter    ap_ST_st17_fsm_17 = 6'b010001;
parameter    ap_ST_st18_fsm_18 = 6'b010010;
parameter    ap_ST_st19_fsm_19 = 6'b010011;
parameter    ap_ST_st20_fsm_20 = 6'b010100;
parameter    ap_ST_st21_fsm_21 = 6'b010101;
parameter    ap_ST_st22_fsm_22 = 6'b010110;
parameter    ap_ST_st23_fsm_23 = 6'b010111;
parameter    ap_ST_st24_fsm_24 = 6'b011000;
parameter    ap_ST_st25_fsm_25 = 6'b011001;
parameter    ap_ST_st26_fsm_26 = 6'b011010;
parameter    ap_ST_st27_fsm_27 = 6'b011011;
parameter    ap_ST_st28_fsm_28 = 6'b011100;
parameter    ap_ST_st29_fsm_29 = 6'b011101;
parameter    ap_ST_st30_fsm_30 = 6'b011110;
parameter    ap_ST_st31_fsm_31 = 6'b011111;
parameter    ap_ST_st32_fsm_32 = 6'b100000;
parameter    ap_ST_st33_fsm_33 = 6'b100001;
parameter    ap_ST_st34_fsm_34 = 6'b100010;
parameter    ap_ST_st35_fsm_35 = 6'b100011;
parameter    ap_ST_st36_fsm_36 = 6'b100100;
parameter    ap_ST_st37_fsm_37 = 6'b100101;
parameter    ap_ST_st38_fsm_38 = 6'b100110;
parameter    ap_ST_st39_fsm_39 = 6'b100111;
parameter    ap_ST_st40_fsm_40 = 6'b101000;
parameter    ap_ST_st41_fsm_41 = 6'b101001;
parameter    ap_ST_st42_fsm_42 = 6'b101010;
parameter    ap_ST_st43_fsm_43 = 6'b101011;
parameter    ap_ST_st44_fsm_44 = 6'b101100;
parameter    ap_ST_st45_fsm_45 = 6'b101101;
parameter    ap_ST_st46_fsm_46 = 6'b101110;
parameter    ap_ST_st47_fsm_47 = 6'b101111;
parameter    ap_ST_st48_fsm_48 = 6'b110000;
parameter    ap_ST_st49_fsm_49 = 6'b110001;
parameter    ap_ST_st50_fsm_50 = 6'b110010;
parameter    ap_ST_st51_fsm_51 = 6'b110011;
parameter    ap_ST_st52_fsm_52 = 6'b110100;
parameter    ap_ST_st53_fsm_53 = 6'b110101;
parameter    ap_ST_st54_fsm_54 = 6'b110110;
parameter    ap_ST_st55_fsm_55 = 6'b110111;
parameter    ap_ST_st56_fsm_56 = 6'b111000;
parameter    ap_ST_st57_fsm_57 = 6'b111001;
parameter    ap_ST_st58_fsm_58 = 6'b111010;
parameter    ap_ST_st59_fsm_59 = 6'b111011;
parameter    ap_const_lv32_1 = 32'b00000000000000000000000000000001;
parameter    ap_true = 1'b1;


types_float_double_grp_fu_79_ACMP_fsqrt_1 #(
    .ID( 1 ),
    .NUM_STAGE( 30 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
types_float_double_grp_fu_79_ACMP_fsqrt_1_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_79_p0 ),
    .din1( grp_fu_79_p1 ),
    .ce( grp_fu_79_ce ),
    .dout( grp_fu_79_p2 )
);

types_float_double_grp_fu_86_ACMP_dadd_2 #(
    .ID( 2 ),
    .NUM_STAGE( 16 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
types_float_double_grp_fu_86_ACMP_dadd_2_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_86_p0 ),
    .din1( grp_fu_86_p1 ),
    .ce( grp_fu_86_ce ),
    .dout( grp_fu_86_p2 )
);

types_float_double_grp_fu_93_ACMP_dmul_3 #(
    .ID( 3 ),
    .NUM_STAGE( 18 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
types_float_double_grp_fu_93_ACMP_dmul_3_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_93_p0 ),
    .din1( grp_fu_93_p1 ),
    .ce( grp_fu_93_ce ),
    .dout( grp_fu_93_p2 )
);

types_float_double_grp_fu_100_ACMP_ddiv_4 #(
    .ID( 4 ),
    .NUM_STAGE( 59 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
types_float_double_grp_fu_100_ACMP_ddiv_4_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .din0( grp_fu_100_p0 ),
    .din1( grp_fu_100_p1 ),
    .ce( grp_fu_100_ce ),
    .dout( grp_fu_100_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm)
begin
    if (((ap_ST_st59_fsm_59 == ap_CS_fsm) & ~(ap_const_logic_1 == ap_start))) begin
        ap_NS_fsm = ap_ST_st0_fsm_0;
    end else if ((ap_ST_st58_fsm_58 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st59_fsm_59;
    end else if ((ap_ST_st57_fsm_57 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st58_fsm_58;
    end else if ((ap_ST_st56_fsm_56 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st57_fsm_57;
    end else if ((ap_ST_st55_fsm_55 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st56_fsm_56;
    end else if ((ap_ST_st54_fsm_54 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st55_fsm_55;
    end else if ((ap_ST_st53_fsm_53 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st54_fsm_54;
    end else if ((ap_ST_st52_fsm_52 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st53_fsm_53;
    end else if ((ap_ST_st51_fsm_51 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st52_fsm_52;
    end else if ((ap_ST_st50_fsm_50 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st51_fsm_51;
    end else if ((ap_ST_st49_fsm_49 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st50_fsm_50;
    end else if ((ap_ST_st48_fsm_48 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st49_fsm_49;
    end else if ((ap_ST_st47_fsm_47 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st48_fsm_48;
    end else if ((ap_ST_st46_fsm_46 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st47_fsm_47;
    end else if ((ap_ST_st45_fsm_45 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st46_fsm_46;
    end else if ((ap_ST_st44_fsm_44 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st45_fsm_45;
    end else if ((ap_ST_st43_fsm_43 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st44_fsm_44;
    end else if ((ap_ST_st42_fsm_42 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st43_fsm_43;
    end else if ((ap_ST_st41_fsm_41 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st42_fsm_42;
    end else if ((ap_ST_st40_fsm_40 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st41_fsm_41;
    end else if ((ap_ST_st39_fsm_39 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st40_fsm_40;
    end else if ((ap_ST_st38_fsm_38 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st39_fsm_39;
    end else if ((ap_ST_st37_fsm_37 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st38_fsm_38;
    end else if ((ap_ST_st36_fsm_36 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st37_fsm_37;
    end else if ((ap_ST_st35_fsm_35 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st36_fsm_36;
    end else if ((ap_ST_st34_fsm_34 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st35_fsm_35;
    end else if ((ap_ST_st33_fsm_33 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st34_fsm_34;
    end else if ((ap_ST_st32_fsm_32 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st33_fsm_33;
    end else if ((ap_ST_st31_fsm_31 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st32_fsm_32;
    end else if ((ap_ST_st30_fsm_30 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st31_fsm_31;
    end else if ((ap_ST_st29_fsm_29 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st30_fsm_30;
    end else if ((ap_ST_st28_fsm_28 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st29_fsm_29;
    end else if ((ap_ST_st27_fsm_27 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st28_fsm_28;
    end else if ((ap_ST_st26_fsm_26 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st27_fsm_27;
    end else if ((ap_ST_st25_fsm_25 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st26_fsm_26;
    end else if ((ap_ST_st24_fsm_24 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st25_fsm_25;
    end else if ((ap_ST_st23_fsm_23 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st24_fsm_24;
    end else if ((ap_ST_st22_fsm_22 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st23_fsm_23;
    end else if ((ap_ST_st21_fsm_21 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st22_fsm_22;
    end else if ((ap_ST_st20_fsm_20 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st21_fsm_21;
    end else if ((ap_ST_st19_fsm_19 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st20_fsm_20;
    end else if ((ap_ST_st18_fsm_18 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st19_fsm_19;
    end else if ((ap_ST_st17_fsm_17 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st18_fsm_18;
    end else if ((ap_ST_st16_fsm_16 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st17_fsm_17;
    end else if ((ap_ST_st15_fsm_15 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st16_fsm_16;
    end else if ((ap_ST_st14_fsm_14 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st15_fsm_15;
    end else if ((ap_ST_st13_fsm_13 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st14_fsm_14;
    end else if ((ap_ST_st12_fsm_12 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st13_fsm_13;
    end else if ((ap_ST_st11_fsm_11 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st12_fsm_12;
    end else if ((ap_ST_st10_fsm_10 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st11_fsm_11;
    end else if ((ap_ST_st9_fsm_9 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st10_fsm_10;
    end else if ((ap_ST_st8_fsm_8 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st9_fsm_9;
    end else if ((ap_ST_st7_fsm_7 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st8_fsm_8;
    end else if ((ap_ST_st6_fsm_6 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st7_fsm_7;
    end else if ((ap_ST_st5_fsm_5 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st6_fsm_6;
    end else if ((ap_ST_st4_fsm_4 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st5_fsm_5;
    end else if ((ap_ST_st3_fsm_3 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st4_fsm_4;
    end else if ((ap_ST_st2_fsm_2 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st3_fsm_3;
    end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_st2_fsm_2;
    end else if ((((ap_ST_st0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_start)) | ((ap_ST_st59_fsm_59 == ap_CS_fsm) & (ap_const_logic_1 == ap_start)))) begin
        ap_NS_fsm = ap_ST_st1_fsm_1;
    end else begin
        ap_NS_fsm = ap_CS_fsm;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st59_fsm_59 == ap_CS_fsm)) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st0_fsm_0 == ap_CS_fsm)) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// out1_ap_vld assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st18_fsm_18 == ap_CS_fsm)) begin
        out1_ap_vld = ap_const_logic_1;
    end else begin
        out1_ap_vld = ap_const_logic_0;
    end
end

/// out2_ap_vld assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st16_fsm_16 == ap_CS_fsm)) begin
        out2_ap_vld = ap_const_logic_1;
    end else begin
        out2_ap_vld = ap_const_logic_0;
    end
end

/// out3_ap_vld assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st59_fsm_59 == ap_CS_fsm)) begin
        out3_ap_vld = ap_const_logic_1;
    end else begin
        out3_ap_vld = ap_const_logic_0;
    end
end

/// out4_ap_vld assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st59_fsm_59 == ap_CS_fsm)) begin
        out4_ap_vld = ap_const_logic_1;
    end else begin
        out4_ap_vld = ap_const_logic_0;
    end
end
assign grp_fu_100_ce = ap_const_logic_1;
assign grp_fu_100_p0 = inC;
assign grp_fu_100_p1 = inA;
assign grp_fu_79_ce = ap_const_logic_1;
assign grp_fu_79_p0 = ap_const_lv32_1;
assign grp_fu_79_p1 = inD;
assign grp_fu_86_ce = ap_const_logic_1;
assign grp_fu_86_p0 = inB;
assign grp_fu_86_p1 = inA;
assign grp_fu_93_ce = ap_const_logic_1;
assign grp_fu_93_p0 = inA;
assign grp_fu_93_p1 = inB;
assign out1 = grp_fu_93_p2;
assign out2 = grp_fu_86_p2;
assign out3 = grp_fu_100_p2;
assign out4 = grp_fu_79_p2;


endmodule //types_float_double

