module RREncode(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_1(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_2(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module KDistribute(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire T0;
  wire sThreadEncoder_io_chosen;
  wire T1;
  wire T2;
  reg[7:0] State_0;
  wire T3;
  wire T4;
  wire T5;
  wire T6;
  wire[1:0] T7;
  wire vThreadEncoder_io_chosen;
  wire T8;
  wire AllOffloadsValid_0;
  wire T9;
  reg[0:0] subStateTh_0;
  wire T10;
  wire T11;
  wire T12;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire T17;
  wire T18;
  wire rThreadEncoder_io_chosen;
  wire T19;
  wire AllOffloadsReady;
  wire T20;
  wire T21;
  wire[7:0] T22;
  wire[7:0] T23;
  wire[7:0] T24;
  wire T25;
  wire T26;
  wire T27;
  wire T28;
  wire T29;
  wire[7:0] T30;
  wire T31;
  wire T32;
  wire T33;
  wire T34;
  wire T35;
  wire[1:0] T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire[7:0] T41;
  wire T42;
  wire T43;
  reg[0:0] Output_0_centeroidsFinished;
  wire T44;
  wire T45;
  wire T46;
  wire[7:0] T47;
  wire T48;
  wire T49;
  wire T50;
  reg[0:0] Input_0_centeroidsFinished;
  wire T51;
  wire T52;
  wire T53;
  wire[1:0] T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  reg[0:0] Output_0_pointsFinished;
  wire T59;
  wire T60;
  reg[0:0] Input_0_pointsFinished;
  wire T61;
  wire T62;
  wire T63;
  wire T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  wire[7:0] T68;
  wire[7:0] T69;
  wire[7:0] T70;
  reg[7:0] EmitReturnState_0;
  wire T71;
  wire T72;
  wire T73;
  wire T74;
  wire[7:0] T75;
  wire T76;
  wire[7:0] T77;
  wire[7:0] T78;
  wire[7:0] GS_BROADCAST__EmitReturnState;
  wire[7:0] T79;
  wire[7:0] T80;
  wire T81;
  wire[32:0] T82;
  wire[31:0] T83;
  wire[31:0] T84;
  wire[31:0] T85;
  wire[31:0] T86;
  reg[31:0] broadcastIndex_0;
  wire T87;
  wire[31:0] T88;
  wire[31:0] T89;
  wire[31:0] GS_POINT__broadcastIndex;
  wire[31:0] GS_BROADCAST__broadcastIndex;
  wire[31:0] T90;
  wire T91;
  wire T92;
  wire[32:0] T93;
  wire T94;
  wire[32:0] T95;
  wire[7:0] T96;
  wire T97;
  wire T98;
  wire[32:0] T99;
  wire T100;
  wire T101;
  wire[9:0] T102;
  wire[9:0] T103;
  reg[9:0] inputTag_0;
  wire[9:0] T104;

  assign io_in_ready = T0;
  assign T0 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T1 = T101 && T2;
  assign T2 = State_0 == 8'h0/* 0*/;
  assign T3 = T26 || T4;
  assign T4 = T20 && T5;
  assign T5 = T6;
  assign T6 = T7[1'h0/* 0*/:1'h0/* 0*/];
  assign T7 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T8 = T9 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T9 = subStateTh_0 == 1'h1/* 1*/;
  assign T10 = T13 ? 1'h1/* 1*/ : T11;
  assign T11 = T12 ? 1'h0/* 0*/ : subStateTh_0;
  assign T12 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T13 = T15 && T14;
  assign T14 = State_0 != 8'hff/* 255*/;
  assign T15 = T17 && T16;
  assign T16 = State_0 != 8'h0/* 0*/;
  assign T17 = AllOffloadsReady && T18;
  assign T18 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign T19 = subStateTh_0 == 1'h0/* 0*/;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T20 = T25 && T21;
  assign T21 = T23 == T22;
  assign T22 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T23 = State_0 & T24;
  assign T24 = {4'h8/* 8*/{T5}};
  assign T25 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T26 = T32 || T27;
  assign T27 = T28 && T5;
  assign T28 = T31 && T29;
  assign T29 = T23 == T30;
  assign T30 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T31 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T32 = T51 || T33;
  assign T33 = T37 && T34;
  assign T34 = T35;
  assign T35 = T36[1'h0/* 0*/:1'h0/* 0*/];
  assign T36 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T37 = T62 && io_out_ready;
  assign io_out_valid = T38;
  assign T38 = T42 && T39;
  assign T39 = T40 == 8'hff/* 255*/;
  assign T40 = State_0 & T41;
  assign T41 = {4'h8/* 8*/{T34}};
  assign T42 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_out_bits_centeroidsFinished = T43;
  assign T43 = Output_0_centeroidsFinished & T34;
  assign T44 = T45 && T34;
  assign T45 = T48 && T46;
  assign T46 = T40 == T47;
  assign T47 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T48 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T49 = T44 ? T50 : Output_0_centeroidsFinished;
  assign T50 = Input_0_centeroidsFinished & T34;
  assign T51 = T55 && T52;
  assign T52 = T53;
  assign T53 = T54[1'h0/* 0*/:1'h0/* 0*/];
  assign T54 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T55 = T56 && io_in_valid;
  assign T56 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T57 = T51 ? io_in_bits_centeroidsFinished : Input_0_centeroidsFinished;
  assign io_out_bits_pointsFinished = T58;
  assign T58 = Output_0_pointsFinished & T34;
  assign T59 = T44 ? T60 : Output_0_pointsFinished;
  assign T60 = Input_0_pointsFinished & T34;
  assign T61 = T51 ? io_in_bits_pointsFinished : Input_0_pointsFinished;
  assign T62 = T64 && T63;
  assign T63 = T40 == 8'hff/* 255*/;
  assign T64 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T65 = T100 ? 8'hff/* 255*/ : T66;
  assign T66 = T33 ? T69 : T67;
  assign T67 = T51 ? T68 : State_0;
  assign T68 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T69 = EmitReturnState_0 & T70;
  assign T70 = {4'h8/* 8*/{T34}};
  assign T71 = T44 || T72;
  assign T72 = T73 && T34;
  assign T73 = T76 && T74;
  assign T74 = T40 == T75;
  assign T75 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T76 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T77 = T72 ? GS_BROADCAST__EmitReturnState : T78;
  assign T78 = T44 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign GS_BROADCAST__EmitReturnState = T97 ? T96 : T79;
  assign T79 = T81 ? 8'h0/* 0*/ : T80;
  assign T80 = T69;
  assign T81 = T82 >= 33'h0/* 0*/;
  assign T82 = {1'h0/* 0*/, T83};
  assign T83 = T94 ? 32'h0/* 0*/ : T84;
  assign T84 = T85;
  assign T85 = broadcastIndex_0 & T86;
  assign T86 = {6'h20/* 32*/{T34}};
  assign T87 = T44 || T72;
  assign T88 = T72 ? GS_BROADCAST__broadcastIndex : T89;
  assign T89 = T44 ? GS_POINT__broadcastIndex : broadcastIndex_0;
  assign GS_POINT__broadcastIndex = T85;
  assign GS_BROADCAST__broadcastIndex = T91 ? T90 : T83;
  assign T90 = T83 + 32'h1/* 1*/;
  assign T91 = ! T92;
  assign T92 = T93 >= 33'h0/* 0*/;
  assign T93 = {1'h0/* 0*/, T83};
  assign T94 = T95 >= 33'h0/* 0*/;
  assign T95 = {1'h0/* 0*/, T84};
  assign T96 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T97 = ! T98;
  assign T98 = T99 >= 33'h0/* 0*/;
  assign T99 = {1'h0/* 0*/, GS_BROADCAST__broadcastIndex};
  assign T100 = T27 || T4;
  assign T101 = subStateTh_0 == 1'h0/* 0*/;
  assign io_out_tag = T102;
  assign T102 = inputTag_0 & T103;
  assign T103 = {4'ha/* 10*/{T34}};
  assign T104 = T51 ? io_in_tag : inputTag_0;
  RREncode rThreadEncoder(
       .io_valid_0( T19 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_1 vThreadEncoder(
       .io_valid_0( T8 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_2 sThreadEncoder(
       .io_valid_0( T1 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T3) begin
      State_0 <= T65;
    end
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T10;
    if(T44) begin
      Output_0_centeroidsFinished <= T49;
    end
    if(T51) begin
      Input_0_centeroidsFinished <= T57;
    end
    if(T44) begin
      Output_0_pointsFinished <= T59;
    end
    if(T51) begin
      Input_0_pointsFinished <= T61;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T71) begin
      EmitReturnState_0 <= T77;
    end
    if(reset) begin
      broadcastIndex_0 <= 32'h0/* 0*/;
    end else if(T87) begin
      broadcastIndex_0 <= T88;
    end
    if(T51) begin
      inputTag_0 <= T104;
    end
  end
endmodule

module RREncode_3(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_4(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_5(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module KEngine(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_distanceFU_req_ready,
    output mainOff_distanceFU_req_valid,
    output[63:0] mainOff_distanceFU_req_bits_in1_x,
    output[63:0] mainOff_distanceFU_req_bits_in1_y,
    output[63:0] mainOff_distanceFU_req_bits_in1_z,
    output[63:0] mainOff_distanceFU_req_bits_in2_x,
    output[63:0] mainOff_distanceFU_req_bits_in2_y,
    output[63:0] mainOff_distanceFU_req_bits_in2_z,
    output[9:0] mainOff_distanceFU_req_tag,
    output mainOff_distanceFU_rep_ready,
    input  mainOff_distanceFU_rep_valid,
    input [63:0] mainOff_distanceFU_rep_bits_out,
    input [9:0] mainOff_distanceFU_rep_tag,
    input  mainOff_centeroidMem_req_ready,
    output mainOff_centeroidMem_req_valid,
    output[31:0] mainOff_centeroidMem_req_bits_addr,
    output mainOff_centeroidMem_req_bits_rw,
    output[191:0] mainOff_centeroidMem_req_bits_wData,
    output[9:0] mainOff_centeroidMem_req_tag,
    output mainOff_centeroidMem_rep_ready,
    input  mainOff_centeroidMem_rep_valid,
    input [191:0] mainOff_centeroidMem_rep_bits_rData,
    input [9:0] mainOff_centeroidMem_rep_tag,
    input  mainOff_partialAccumulatorMem_req_ready,
    output mainOff_partialAccumulatorMem_req_valid,
    output[31:0] mainOff_partialAccumulatorMem_req_bits_addr,
    output mainOff_partialAccumulatorMem_req_bits_rw,
    output[191:0] mainOff_partialAccumulatorMem_req_bits_wData,
    output[9:0] mainOff_partialAccumulatorMem_req_tag,
    output mainOff_partialAccumulatorMem_rep_ready,
    input  mainOff_partialAccumulatorMem_rep_valid,
    input [191:0] mainOff_partialAccumulatorMem_rep_bits_rData,
    input [9:0] mainOff_partialAccumulatorMem_rep_tag,
    input  mainOff_add_req_ready,
    output mainOff_add_req_valid,
    output[63:0] mainOff_add_req_bits_in1,
    output[63:0] mainOff_add_req_bits_in2,
    output[9:0] mainOff_add_req_tag,
    output mainOff_add_rep_ready,
    input  mainOff_add_rep_valid,
    input [63:0] mainOff_add_rep_bits_out,
    input [9:0] mainOff_add_rep_tag);

  wire T0;
  wire sThreadEncoder_io_chosen;
  wire T1;
  wire T2;
  reg[7:0] State_0;
  wire T3;
  wire T4;
  wire T5;
  wire T6;
  wire[1:0] T7;
  wire vThreadEncoder_io_chosen;
  wire T8;
  wire AllOffloadsValid_0;
  wire T9;
  wire T10;
  wire T11;
  reg[0:0] addPortHadValidRequest_0;
  wire T12;
  wire T13;
  wire T14;
  wire addPort_req_valid;
  wire T15;
  wire T16;
  wire T17;
  wire T18;
  wire[7:0] T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire T22;
  wire T23;
  wire[1:0] T24;
  wire rThreadEncoder_io_chosen;
  wire T25;
  reg[0:0] subStateTh_0;
  wire T26;
  wire T27;
  wire T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire T34;
  wire AllOffloadsReady;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  reg[0:0] addPortHadReadyRequest;
  wire T40;
  wire T41;
  wire T42;
  wire T43;
  reg[0:0] add_ready_received;
  wire T44;
  wire T45;
  wire addPort_req_ready;
  wire addPort_rep_ready;
  wire T46;
  wire T47;
  wire T48;
  wire T49;
  wire T50;
  wire partialAccumulatorMemPort_req_valid;
  wire T51;
  wire T52;
  wire T53;
  wire T54;
  wire[7:0] T55;
  wire T56;
  wire T57;
  wire T58;
  wire T59;
  wire[7:0] T60;
  wire T61;
  wire T62;
  wire T63;
  wire T64;
  wire[7:0] T65;
  wire T66;
  wire T67;
  wire T68;
  wire[7:0] T69;
  wire T70;
  wire T71;
  wire T72;
  wire T73;
  reg[0:0] partialAccumulatorMem_valid_received_0;
  wire T74;
  wire T75;
  wire T76;
  wire T77;
  wire[9:0] T78;
  wire[9:0] partialAccumulatorMemPort_rep_tag;
  wire[9:0] partialAccumulatorMemPort_req_tag;
  wire[9:0] T79;
  wire partialAccumulatorMemPort_rep_valid;
  wire T80;
  wire T81;
  wire[4:0] T82;
  wire T83;
  wire T84;
  reg[0:0] partialAccumulatorMemPortHadReadyRequest;
  wire T85;
  wire T86;
  wire T87;
  wire T88;
  reg[0:0] partialAccumulatorMem_ready_received;
  wire T89;
  wire T90;
  wire partialAccumulatorMemPort_req_ready;
  wire partialAccumulatorMemPort_rep_ready;
  wire T91;
  wire T92;
  wire T93;
  wire T94;
  wire T95;
  wire centeroidMemPort_req_valid;
  wire T96;
  wire T97;
  wire T98;
  wire T99;
  wire[7:0] T100;
  wire T101;
  wire T102;
  wire T103;
  wire[7:0] T104;
  wire T105;
  wire T106;
  wire T107;
  wire T108;
  reg[0:0] centeroidMem_valid_received_0;
  wire T109;
  wire T110;
  wire T111;
  wire T112;
  wire[9:0] T113;
  wire[9:0] centeroidMemPort_rep_tag;
  wire[9:0] centeroidMemPort_req_tag;
  wire[9:0] T114;
  wire centeroidMemPort_rep_valid;
  wire T115;
  wire T116;
  wire[4:0] T117;
  wire T118;
  wire T119;
  reg[0:0] centeroidMemPortHadReadyRequest;
  wire T120;
  wire T121;
  wire T122;
  wire T123;
  reg[0:0] centeroidMem_ready_received;
  wire T124;
  wire T125;
  wire centeroidMemPort_req_ready;
  wire centeroidMemPort_rep_ready;
  wire T126;
  wire T127;
  wire T128;
  wire T129;
  wire distanceFUPort_req_valid;
  wire T130;
  wire T131;
  wire T132;
  wire[7:0] T133;
  wire T134;
  wire T135;
  wire T136;
  wire T137;
  reg[0:0] distanceFU_valid_received_0;
  wire T138;
  wire T139;
  wire T140;
  wire T141;
  wire[9:0] T142;
  wire[9:0] distanceFUPort_rep_tag;
  wire distanceFUPort_rep_ready;
  wire[9:0] distanceFUPort_req_tag;
  wire[9:0] T143;
  wire distanceFUPort_rep_valid;
  wire T144;
  wire T145;
  wire[4:0] T146;
  wire T147;
  wire T148;
  reg[0:0] distanceFUPortHadReadyRequest;
  wire T149;
  wire T150;
  wire T151;
  wire T152;
  reg[0:0] distanceFU_ready_received;
  wire T153;
  wire T154;
  wire distanceFUPort_req_ready;
  wire T155;
  wire T156;
  wire T157;
  wire T158;
  wire T159;
  wire[7:0] T160;
  wire T161;
  wire T162;
  wire T163;
  wire[7:0] T164;
  wire T165;
  wire T166;
  wire T167;
  wire T168;
  reg[0:0] add_valid_received_0;
  wire T169;
  wire T170;
  wire T171;
  wire T172;
  wire[9:0] T173;
  wire[9:0] addPort_rep_tag;
  wire[9:0] addPort_req_tag;
  wire[9:0] T174;
  wire addPort_rep_valid;
  wire T175;
  wire T176;
  wire[4:0] T177;
  wire T178;
  wire T179;
  wire[4:0] T180;
  wire T181;
  wire T182;
  wire[4:0] T183;
  wire T184;
  wire T185;
  wire T186;
  wire[9:0] T187;
  wire T188;
  wire T189;
  wire T190;
  reg[0:0] partialAccumulatorMemPortHadValidRequest_0;
  wire T191;
  wire T192;
  wire T193;
  wire T194;
  wire[4:0] T195;
  wire T196;
  wire T197;
  wire[4:0] T198;
  wire T199;
  wire T200;
  wire T201;
  wire[9:0] T202;
  wire T203;
  wire T204;
  wire T205;
  reg[0:0] centeroidMemPortHadValidRequest_0;
  wire T206;
  wire T207;
  wire T208;
  wire T209;
  wire[4:0] T210;
  wire T211;
  wire T212;
  wire[4:0] T213;
  wire T214;
  wire T215;
  wire T216;
  wire[9:0] T217;
  wire T218;
  wire T219;
  reg[0:0] distanceFUPortHadValidRequest_0;
  wire T220;
  wire T221;
  wire T222;
  wire T223;
  wire[4:0] T224;
  wire T225;
  wire T226;
  wire[4:0] T227;
  wire T228;
  wire T229;
  wire T230;
  wire[9:0] T231;
  wire T232;
  wire T233;
  wire T234;
  wire[7:0] T235;
  wire[7:0] T236;
  wire[7:0] T237;
  wire T238;
  wire T239;
  wire T240;
  wire T241;
  wire T242;
  wire[7:0] T243;
  wire T244;
  wire T245;
  wire T246;
  wire T247;
  wire T248;
  wire[7:0] T249;
  wire T250;
  wire T251;
  wire T252;
  wire T253;
  wire T254;
  wire[7:0] T255;
  wire T256;
  wire T257;
  wire T258;
  wire T259;
  wire T260;
  wire[7:0] T261;
  wire T262;
  wire T263;
  wire T264;
  wire T265;
  wire T266;
  wire[7:0] T267;
  wire T268;
  wire T269;
  wire T270;
  wire T271;
  wire T272;
  wire[7:0] T273;
  wire T274;
  wire T275;
  wire T276;
  wire T277;
  wire T278;
  wire[7:0] T279;
  wire T280;
  wire T281;
  wire T282;
  wire T283;
  wire T284;
  wire[7:0] T285;
  wire T286;
  wire T287;
  wire T288;
  wire T289;
  wire T290;
  wire[7:0] T291;
  wire T292;
  wire T293;
  wire T294;
  wire T295;
  wire T296;
  wire[7:0] T297;
  wire T298;
  wire T299;
  wire T300;
  wire T301;
  wire T302;
  wire[7:0] T303;
  wire T304;
  wire T305;
  wire T306;
  wire T307;
  wire T308;
  wire[7:0] T309;
  wire T310;
  wire T311;
  wire T312;
  wire T313;
  wire T314;
  wire T315;
  wire T316;
  wire[15:0] T317;
  wire[15:0] T318;
  reg[15:0] Output_0_centeroidIndex;
  wire[31:0] T319;
  wire[31:0] T320;
  wire[31:0] GS_SEND_RESULTS__Output_centeroidIndex;
  wire[31:0] T321;
  wire[31:0] T322;
  reg[31:0] centeroidIndex_0;
  wire T323;
  wire T324;
  wire T325;
  wire T326;
  wire T327;
  wire T328;
  wire T329;
  wire[7:0] T330;
  wire T331;
  wire T332;
  wire T333;
  wire T334;
  wire[7:0] T335;
  wire T336;
  wire[31:0] T337;
  wire[31:0] T338;
  wire[31:0] T339;
  wire[31:0] T340;
  wire T341;
  wire[31:0] GS_RECEIVE_CENTROID__centeroidIndex;
  wire[31:0] GS_RECEIVE_CENTROID__cMemIn_addr;
  wire[31:0] GS_DISTANCE__centeroidIndex;
  wire[31:0] T342;
  wire[31:0] GS_SEND_RESULTS__centeroidIndex;
  wire[31:0] T343;
  wire T344;
  wire T345;
  wire T346;
  wire T347;
  wire T348;
  wire T349;
  wire T350;
  wire[1:0] T351;
  wire T352;
  wire T353;
  wire[7:0] T354;
  wire[7:0] T355;
  wire[7:0] T356;
  wire[7:0] T357;
  wire[7:0] T358;
  wire[7:0] T359;
  wire[7:0] T360;
  wire[7:0] T361;
  wire[7:0] T362;
  wire[7:0] T363;
  wire[7:0] T364;
  wire[7:0] T365;
  wire[7:0] T366;
  wire[7:0] T367;
  wire[7:0] T368;
  wire[7:0] T369;
  wire[7:0] T370;
  wire[7:0] T371;
  reg[7:0] EmitReturnState_0;
  wire T372;
  wire T373;
  wire T374;
  wire[7:0] T375;
  wire T376;
  wire[7:0] T377;
  wire[7:0] T378;
  reg[7:0] GS_RECEIVE__State__rviReg;
  wire T379;
  wire T380;
  wire[7:0] T381;
  wire T382;
  wire[7:0] T383;
  wire[7:0] GS_RECEIVE__State;
  wire[7:0] T384;
  wire[7:0] T385;
  wire[7:0] T386;
  wire[7:0] T387;
  wire[7:0] T388;
  wire T389;
  wire[31:0] T390;
  wire[31:0] T391;
  wire[31:0] T392;
  reg[31:0] mode_0;
  wire T393;
  wire[31:0] T394;
  wire[31:0] GS_RECEIVE__mode;
  wire[31:0] T395;
  wire T396;
  reg[0:0] Input_0_centeroidsFinished;
  wire T397;
  wire T398;
  reg[0:0] Input_0_pointsFinished;
  wire T399;
  wire[7:0] T400;
  wire T401;
  wire[7:0] T402;
  reg[7:0] GS_RECEIVE_POINT__State__rviReg;
  wire[7:0] T403;
  wire[7:0] T404;
  wire[7:0] T405;
  wire[7:0] GS_DISTANCE__State;
  wire[7:0] T406;
  wire[7:0] T407;
  wire[7:0] T408;
  wire T409;
  wire[7:0] T410;
  wire T411;
  wire T412;
  wire[7:0] T413;
  wire[7:0] T414;
  wire[7:0] T415;
  wire[7:0] T416;
  reg[7:0] GS_SEND_RESULTS_INIT__State__rviReg;
  wire[7:0] T417;
  wire[7:0] T418;
  wire[7:0] GS_SEND_RESULTS__State;
  wire[7:0] T419;
  wire[7:0] T420;
  wire T421;
  wire[7:0] T422;
  wire T423;
  wire T424;
  wire T425;
  wire[9:0] T426;
  wire[9:0] T427;
  reg[9:0] inputTag_0;
  wire[9:0] T428;

  assign io_in_ready = T0;
  assign T0 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T1 = T425 && T2;
  assign T2 = State_0 == 8'h0/* 0*/;
  assign T3 = T239 || T4;
  assign T4 = T233 && T5;
  assign T5 = T6;
  assign T6 = T7[1'h0/* 0*/:1'h0/* 0*/];
  assign T7 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T8 = T232 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = T9;
  assign T9 = T188 && T10;
  assign T10 = T184 || T11;
  assign T11 = ! addPortHadValidRequest_0;
  assign T12 = T181 && T13;
  assign T13 = addPortHadValidRequest_0 || T14;
  assign T14 = T179 && addPort_req_valid;
  assign addPort_req_valid = T15;
  assign T15 = T166 && T16;
  assign T16 = T157 || T17;
  assign T17 = T156 && T18;
  assign T18 = T20 == T19;
  assign T19 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T20 = State_0 & T21;
  assign T21 = {4'h8/* 8*/{T22}};
  assign T22 = T23;
  assign T23 = T24[1'h0/* 0*/:1'h0/* 0*/];
  assign T24 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T25 = subStateTh_0 == 1'h0/* 0*/;
  assign T26 = T29 ? 1'h1/* 1*/ : T27;
  assign T27 = T28 ? 1'h0/* 0*/ : subStateTh_0;
  assign T28 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T29 = T31 && T30;
  assign T30 = State_0 != 8'hff/* 255*/;
  assign T31 = T33 && T32;
  assign T32 = State_0 != 8'h0/* 0*/;
  assign T33 = AllOffloadsReady && T34;
  assign T34 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = T35;
  assign T35 = T47 && T36;
  assign T36 = T43 || T37;
  assign T37 = T39 && T38;
  assign T38 = ! addPort_req_valid;
  assign T39 = ! addPortHadReadyRequest;
  assign T40 = T42 && T41;
  assign T41 = addPortHadReadyRequest || addPort_req_valid;
  assign T42 = ! AllOffloadsReady;
  assign T43 = addPort_req_ready || add_ready_received;
  assign T44 = T46 && T45;
  assign T45 = add_ready_received || addPort_req_ready;
  assign addPort_req_ready = mainOff_add_req_ready;
  assign mainOff_add_rep_ready = addPort_rep_ready;
  assign addPort_rep_ready = 1'h1/* 1*/;
  assign mainOff_add_req_valid = addPort_req_valid;
  assign T46 = ! AllOffloadsReady;
  assign T47 = T92 && T48;
  assign T48 = T88 || T49;
  assign T49 = T84 && T50;
  assign T50 = ! partialAccumulatorMemPort_req_valid;
  assign partialAccumulatorMemPort_req_valid = T51;
  assign T51 = T71 && T52;
  assign T52 = T57 || T53;
  assign T53 = T56 && T54;
  assign T54 = T20 == T55;
  assign T55 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T56 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T57 = T62 || T58;
  assign T58 = T61 && T59;
  assign T59 = T20 == T60;
  assign T60 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T61 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T62 = T67 || T63;
  assign T63 = T66 && T64;
  assign T64 = T20 == T65;
  assign T65 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T66 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T67 = T70 && T68;
  assign T68 = T20 == T69;
  assign T69 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T70 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T71 = T83 && T72;
  assign T72 = ! T73;
  assign T73 = partialAccumulatorMem_valid_received_0 & T22;
  assign T74 = T80 && T75;
  assign T75 = partialAccumulatorMem_valid_received_0 || T76;
  assign T76 = partialAccumulatorMemPort_rep_valid && T77;
  assign T77 = partialAccumulatorMemPort_rep_tag == T78;
  assign T78 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign partialAccumulatorMemPort_rep_tag = mainOff_partialAccumulatorMem_rep_tag;
  assign mainOff_partialAccumulatorMem_req_tag = partialAccumulatorMemPort_req_tag;
  assign partialAccumulatorMemPort_req_tag = T79;
  assign T79 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign partialAccumulatorMemPort_rep_valid = mainOff_partialAccumulatorMem_rep_valid;
  assign mainOff_partialAccumulatorMem_req_valid = partialAccumulatorMemPort_req_valid;
  assign T80 = ! T81;
  assign T81 = T82 == 5'h0/* 0*/;
  assign T82 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T83 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T84 = ! partialAccumulatorMemPortHadReadyRequest;
  assign T85 = T87 && T86;
  assign T86 = partialAccumulatorMemPortHadReadyRequest || partialAccumulatorMemPort_req_valid;
  assign T87 = ! AllOffloadsReady;
  assign T88 = partialAccumulatorMemPort_req_ready || partialAccumulatorMem_ready_received;
  assign T89 = T91 && T90;
  assign T90 = partialAccumulatorMem_ready_received || partialAccumulatorMemPort_req_ready;
  assign partialAccumulatorMemPort_req_ready = mainOff_partialAccumulatorMem_req_ready;
  assign mainOff_partialAccumulatorMem_rep_ready = partialAccumulatorMemPort_rep_ready;
  assign partialAccumulatorMemPort_rep_ready = 1'h1/* 1*/;
  assign T91 = ! AllOffloadsReady;
  assign T92 = T127 && T93;
  assign T93 = T123 || T94;
  assign T94 = T119 && T95;
  assign T95 = ! centeroidMemPort_req_valid;
  assign centeroidMemPort_req_valid = T96;
  assign T96 = T106 && T97;
  assign T97 = T102 || T98;
  assign T98 = T101 && T99;
  assign T99 = T20 == T100;
  assign T100 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T101 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T102 = T105 && T103;
  assign T103 = T20 == T104;
  assign T104 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T105 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T106 = T118 && T107;
  assign T107 = ! T108;
  assign T108 = centeroidMem_valid_received_0 & T22;
  assign T109 = T115 && T110;
  assign T110 = centeroidMem_valid_received_0 || T111;
  assign T111 = centeroidMemPort_rep_valid && T112;
  assign T112 = centeroidMemPort_rep_tag == T113;
  assign T113 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign centeroidMemPort_rep_tag = mainOff_centeroidMem_rep_tag;
  assign mainOff_centeroidMem_req_tag = centeroidMemPort_req_tag;
  assign centeroidMemPort_req_tag = T114;
  assign T114 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign centeroidMemPort_rep_valid = mainOff_centeroidMem_rep_valid;
  assign mainOff_centeroidMem_req_valid = centeroidMemPort_req_valid;
  assign T115 = ! T116;
  assign T116 = T117 == 5'h0/* 0*/;
  assign T117 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T118 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T119 = ! centeroidMemPortHadReadyRequest;
  assign T120 = T122 && T121;
  assign T121 = centeroidMemPortHadReadyRequest || centeroidMemPort_req_valid;
  assign T122 = ! AllOffloadsReady;
  assign T123 = centeroidMemPort_req_ready || centeroidMem_ready_received;
  assign T124 = T126 && T125;
  assign T125 = centeroidMem_ready_received || centeroidMemPort_req_ready;
  assign centeroidMemPort_req_ready = mainOff_centeroidMem_req_ready;
  assign mainOff_centeroidMem_rep_ready = centeroidMemPort_rep_ready;
  assign centeroidMemPort_rep_ready = 1'h1/* 1*/;
  assign T126 = ! AllOffloadsReady;
  assign T127 = T152 || T128;
  assign T128 = T148 && T129;
  assign T129 = ! distanceFUPort_req_valid;
  assign distanceFUPort_req_valid = T130;
  assign T130 = T135 && T131;
  assign T131 = T134 && T132;
  assign T132 = T20 == T133;
  assign T133 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T134 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T135 = T147 && T136;
  assign T136 = ! T137;
  assign T137 = distanceFU_valid_received_0 & T22;
  assign T138 = T144 && T139;
  assign T139 = distanceFU_valid_received_0 || T140;
  assign T140 = distanceFUPort_rep_valid && T141;
  assign T141 = distanceFUPort_rep_tag == T142;
  assign T142 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign distanceFUPort_rep_tag = mainOff_distanceFU_rep_tag;
  assign mainOff_distanceFU_rep_ready = distanceFUPort_rep_ready;
  assign distanceFUPort_rep_ready = 1'h1/* 1*/;
  assign mainOff_distanceFU_req_valid = distanceFUPort_req_valid;
  assign mainOff_distanceFU_req_tag = distanceFUPort_req_tag;
  assign distanceFUPort_req_tag = T143;
  assign T143 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign distanceFUPort_rep_valid = mainOff_distanceFU_rep_valid;
  assign T144 = ! T145;
  assign T145 = T146 == 5'h0/* 0*/;
  assign T146 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T147 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T148 = ! distanceFUPortHadReadyRequest;
  assign T149 = T151 && T150;
  assign T150 = distanceFUPortHadReadyRequest || distanceFUPort_req_valid;
  assign T151 = ! AllOffloadsReady;
  assign T152 = distanceFUPort_req_ready || distanceFU_ready_received;
  assign T153 = T155 && T154;
  assign T154 = distanceFU_ready_received || distanceFUPort_req_ready;
  assign distanceFUPort_req_ready = mainOff_distanceFU_req_ready;
  assign T155 = ! AllOffloadsReady;
  assign T156 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T157 = T162 || T158;
  assign T158 = T161 && T159;
  assign T159 = T20 == T160;
  assign T160 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T161 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T162 = T165 && T163;
  assign T163 = T20 == T164;
  assign T164 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T165 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T166 = T178 && T167;
  assign T167 = ! T168;
  assign T168 = add_valid_received_0 & T22;
  assign T169 = T175 && T170;
  assign T170 = add_valid_received_0 || T171;
  assign T171 = addPort_rep_valid && T172;
  assign T172 = addPort_rep_tag == T173;
  assign T173 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign addPort_rep_tag = mainOff_add_rep_tag;
  assign mainOff_add_req_tag = addPort_req_tag;
  assign addPort_req_tag = T174;
  assign T174 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign addPort_rep_valid = mainOff_add_rep_valid;
  assign T175 = ! T176;
  assign T176 = T177 == 5'h0/* 0*/;
  assign T177 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T178 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T179 = 5'h0/* 0*/ == T180;
  assign T180 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T181 = ! T182;
  assign T182 = T183 == 5'h0/* 0*/;
  assign T183 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T184 = T185 || add_valid_received_0;
  assign T185 = addPort_rep_valid && T186;
  assign T186 = addPort_rep_tag == T187;
  assign T187 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T188 = T203 && T189;
  assign T189 = T199 || T190;
  assign T190 = ! partialAccumulatorMemPortHadValidRequest_0;
  assign T191 = T196 && T192;
  assign T192 = partialAccumulatorMemPortHadValidRequest_0 || T193;
  assign T193 = T194 && partialAccumulatorMemPort_req_valid;
  assign T194 = 5'h0/* 0*/ == T195;
  assign T195 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T196 = ! T197;
  assign T197 = T198 == 5'h0/* 0*/;
  assign T198 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T199 = T200 || partialAccumulatorMem_valid_received_0;
  assign T200 = partialAccumulatorMemPort_rep_valid && T201;
  assign T201 = partialAccumulatorMemPort_rep_tag == T202;
  assign T202 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T203 = T218 && T204;
  assign T204 = T214 || T205;
  assign T205 = ! centeroidMemPortHadValidRequest_0;
  assign T206 = T211 && T207;
  assign T207 = centeroidMemPortHadValidRequest_0 || T208;
  assign T208 = T209 && centeroidMemPort_req_valid;
  assign T209 = 5'h0/* 0*/ == T210;
  assign T210 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T211 = ! T212;
  assign T212 = T213 == 5'h0/* 0*/;
  assign T213 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T214 = T215 || centeroidMem_valid_received_0;
  assign T215 = centeroidMemPort_rep_valid && T216;
  assign T216 = centeroidMemPort_rep_tag == T217;
  assign T217 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T218 = T228 || T219;
  assign T219 = ! distanceFUPortHadValidRequest_0;
  assign T220 = T225 && T221;
  assign T221 = distanceFUPortHadValidRequest_0 || T222;
  assign T222 = T223 && distanceFUPort_req_valid;
  assign T223 = 5'h0/* 0*/ == T224;
  assign T224 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T225 = ! T226;
  assign T226 = T227 == 5'h0/* 0*/;
  assign T227 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T228 = T229 || distanceFU_valid_received_0;
  assign T229 = distanceFUPort_rep_valid && T230;
  assign T230 = distanceFUPort_rep_tag == T231;
  assign T231 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T232 = subStateTh_0 == 1'h1/* 1*/;
  assign T233 = T238 && T234;
  assign T234 = T236 == T235;
  assign T235 = {4'h0/* 0*/, 4'hd/* 13*/};
  assign T236 = State_0 & T237;
  assign T237 = {4'h8/* 8*/{T5}};
  assign T238 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T239 = T245 || T240;
  assign T240 = T241 && T5;
  assign T241 = T244 && T242;
  assign T242 = T236 == T243;
  assign T243 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T244 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T245 = T251 || T246;
  assign T246 = T247 && T5;
  assign T247 = T250 && T248;
  assign T248 = T236 == T249;
  assign T249 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T250 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T251 = T257 || T252;
  assign T252 = T253 && T5;
  assign T253 = T256 && T254;
  assign T254 = T236 == T255;
  assign T255 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T256 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T257 = T263 || T258;
  assign T258 = T259 && T5;
  assign T259 = T262 && T260;
  assign T260 = T236 == T261;
  assign T261 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T262 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T263 = T269 || T264;
  assign T264 = T265 && T5;
  assign T265 = T268 && T266;
  assign T266 = T236 == T267;
  assign T267 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T268 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T269 = T275 || T270;
  assign T270 = T271 && T5;
  assign T271 = T274 && T272;
  assign T272 = T236 == T273;
  assign T273 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T274 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T275 = T281 || T276;
  assign T276 = T277 && T5;
  assign T277 = T280 && T278;
  assign T278 = T236 == T279;
  assign T279 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T280 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T281 = T287 || T282;
  assign T282 = T283 && T5;
  assign T283 = T286 && T284;
  assign T284 = T236 == T285;
  assign T285 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T286 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T287 = T293 || T288;
  assign T288 = T289 && T5;
  assign T289 = T292 && T290;
  assign T290 = T236 == T291;
  assign T291 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T292 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T293 = T299 || T294;
  assign T294 = T295 && T5;
  assign T295 = T298 && T296;
  assign T296 = T236 == T297;
  assign T297 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T298 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T299 = T305 || T300;
  assign T300 = T301 && T5;
  assign T301 = T304 && T302;
  assign T302 = T236 == T303;
  assign T303 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T304 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T305 = T311 || T306;
  assign T306 = T307 && T5;
  assign T307 = T310 && T308;
  assign T308 = T236 == T309;
  assign T309 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T310 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T311 = T348 || T312;
  assign T312 = T313 && T22;
  assign T313 = T345 && io_out_ready;
  assign io_out_valid = T314;
  assign T314 = T316 && T315;
  assign T315 = T20 == 8'hff/* 255*/;
  assign T316 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_out_bits_centeroidIndex = T317;
  assign T317 = Output_0_centeroidIndex & T318;
  assign T318 = {5'h10/* 16*/{T22}};
  assign T319 = T240 ? GS_SEND_RESULTS__Output_centeroidIndex : T320;
  assign T320 = {16'h0/* 0*/, Output_0_centeroidIndex};
  assign GS_SEND_RESULTS__Output_centeroidIndex = T321;
  assign T321 = centeroidIndex_0 & T322;
  assign T322 = {6'h20/* 32*/{T5}};
  assign T323 = T324 || T240;
  assign T324 = T325 || T282;
  assign T325 = T326 || T300;
  assign T326 = T332 || T327;
  assign T327 = T328 && T22;
  assign T328 = T331 && T329;
  assign T329 = T20 == T330;
  assign T330 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T331 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T332 = T333 && T22;
  assign T333 = T336 && T334;
  assign T334 = T20 == T335;
  assign T335 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T336 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T337 = T240 ? GS_SEND_RESULTS__centeroidIndex : T338;
  assign T338 = T282 ? GS_DISTANCE__centeroidIndex : T339;
  assign T339 = T300 ? GS_RECEIVE_CENTROID__centeroidIndex : T340;
  assign T340 = T341 ? 32'h0/* 0*/ : centeroidIndex_0;
  assign T341 = T332 || T327;
  assign GS_RECEIVE_CENTROID__centeroidIndex = GS_RECEIVE_CENTROID__cMemIn_addr + 32'h1/* 1*/;
  assign GS_RECEIVE_CENTROID__cMemIn_addr = T321;
  assign GS_DISTANCE__centeroidIndex = T342 + 32'h1/* 1*/;
  assign T342 = T321;
  assign GS_SEND_RESULTS__centeroidIndex = T344 ? 32'h0/* 0*/ : T343;
  assign T343 = GS_SEND_RESULTS__Output_centeroidIndex + 32'h1/* 1*/;
  assign T344 = T343 == 32'h3/* 3*/;
  assign T345 = T347 && T346;
  assign T346 = T20 == 8'hff/* 255*/;
  assign T347 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T348 = T352 && T349;
  assign T349 = T350;
  assign T350 = T351[1'h0/* 0*/:1'h0/* 0*/];
  assign T351 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T352 = T353 && io_in_valid;
  assign T353 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T354 = T4 ? 8'hff/* 255*/ : T355;
  assign T355 = T240 ? GS_SEND_RESULTS__State : T356;
  assign T356 = T246 ? GS_SEND_RESULTS_INIT__State__rviReg : T357;
  assign T357 = T252 ? 8'h0/* 0*/ : T358;
  assign T358 = T258 ? T416 : T359;
  assign T359 = T264 ? T415 : T360;
  assign T360 = T270 ? T414 : T361;
  assign T361 = T276 ? T413 : T362;
  assign T362 = T282 ? GS_DISTANCE__State : T363;
  assign T363 = T288 ? T405 : T364;
  assign T364 = T294 ? GS_RECEIVE_POINT__State__rviReg : T365;
  assign T365 = T300 ? 8'h0/* 0*/ : T366;
  assign T366 = T306 ? GS_RECEIVE__State__rviReg : T367;
  assign T367 = T312 ? T370 : T368;
  assign T368 = T348 ? T369 : State_0;
  assign T369 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T370 = EmitReturnState_0 & T371;
  assign T371 = {4'h8/* 8*/{T22}};
  assign T372 = T373 && T22;
  assign T373 = T376 && T374;
  assign T374 = T20 == T375;
  assign T375 = {4'h0/* 0*/, 4'hd/* 13*/};
  assign T376 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T377 = T372 ? T378 : EmitReturnState_0;
  assign T378 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T379 = T382 && T380;
  assign T380 = T20 == T381;
  assign T381 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T382 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T383 = T379 ? GS_RECEIVE__State : GS_RECEIVE__State__rviReg;
  assign GS_RECEIVE__State = T398 ? T402 : T384;
  assign T384 = T401 ? T400 : T385;
  assign T385 = T396 ? 8'h0/* 0*/ : T386;
  assign T386 = T389 ? T388 : T387;
  assign T387 = T20;
  assign T388 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T389 = T390 == 32'h0/* 0*/;
  assign T390 = T391;
  assign T391 = mode_0 & T392;
  assign T392 = {6'h20/* 32*/{T22}};
  assign T393 = T379 && T22;
  assign T394 = T393 ? GS_RECEIVE__mode : mode_0;
  assign GS_RECEIVE__mode = T398 ? 32'h0/* 0*/ : T395;
  assign T395 = T396 ? 32'h1/* 1*/ : T390;
  assign T396 = Input_0_centeroidsFinished & T22;
  assign T397 = T348 ? io_in_bits_centeroidsFinished : Input_0_centeroidsFinished;
  assign T398 = Input_0_pointsFinished & T22;
  assign T399 = T348 ? io_in_bits_pointsFinished : Input_0_pointsFinished;
  assign T400 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T401 = T395 == 32'h1/* 1*/;
  assign T402 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T403 = T333 ? T404 : GS_RECEIVE_POINT__State__rviReg;
  assign T404 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T405 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign GS_DISTANCE__State = T411 ? T410 : T406;
  assign T406 = T409 ? T408 : T407;
  assign T408 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T409 = GS_DISTANCE__centeroidIndex == 32'h3/* 3*/;
  assign T410 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T411 = ! T412;
  assign T412 = GS_DISTANCE__centeroidIndex == 32'h3/* 3*/;
  assign T413 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T414 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T415 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T416 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T417 = T328 ? T418 : GS_SEND_RESULTS_INIT__State__rviReg;
  assign T418 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign GS_SEND_RESULTS__State = T423 ? T422 : T419;
  assign T419 = T421 ? 8'h0/* 0*/ : T420;
  assign T421 = GS_SEND_RESULTS__centeroidIndex == 32'h3/* 3*/;
  assign T422 = {4'h0/* 0*/, 4'hd/* 13*/};
  assign T423 = ! T424;
  assign T424 = GS_SEND_RESULTS__centeroidIndex == 32'h3/* 3*/;
  assign T425 = subStateTh_0 == 1'h0/* 0*/;
  assign io_out_tag = T426;
  assign T426 = inputTag_0 & T427;
  assign T427 = {4'ha/* 10*/{T22}};
  assign T428 = T348 ? io_in_tag : inputTag_0;
  RREncode_3 rThreadEncoder(
       .io_valid_0( T25 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_4 vThreadEncoder(
       .io_valid_0( T8 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_5 sThreadEncoder(
       .io_valid_0( T1 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T3) begin
      State_0 <= T354;
    end
    addPortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T12;
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T26;
    addPortHadReadyRequest <= reset ? 1'h0/* 0*/ : T40;
    add_ready_received <= reset ? 1'h0/* 0*/ : T44;
    partialAccumulatorMem_valid_received_0 <= reset ? 1'h0/* 0*/ : T74;
    partialAccumulatorMemPortHadReadyRequest <= reset ? 1'h0/* 0*/ : T85;
    partialAccumulatorMem_ready_received <= reset ? 1'h0/* 0*/ : T89;
    centeroidMem_valid_received_0 <= reset ? 1'h0/* 0*/ : T109;
    centeroidMemPortHadReadyRequest <= reset ? 1'h0/* 0*/ : T120;
    centeroidMem_ready_received <= reset ? 1'h0/* 0*/ : T124;
    distanceFU_valid_received_0 <= reset ? 1'h0/* 0*/ : T138;
    distanceFUPortHadReadyRequest <= reset ? 1'h0/* 0*/ : T149;
    distanceFU_ready_received <= reset ? 1'h0/* 0*/ : T153;
    add_valid_received_0 <= reset ? 1'h0/* 0*/ : T169;
    partialAccumulatorMemPortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T191;
    centeroidMemPortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T206;
    distanceFUPortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T220;
    if(T240) begin
      Output_0_centeroidIndex <= T319;
    end
    if(reset) begin
      centeroidIndex_0 <= 32'h0/* 0*/;
    end else if(T323) begin
      centeroidIndex_0 <= T337;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T372) begin
      EmitReturnState_0 <= T377;
    end
    if(T379) begin
      GS_RECEIVE__State__rviReg <= T383;
    end
    if(reset) begin
      mode_0 <= 32'h0/* 0*/;
    end else if(T393) begin
      mode_0 <= T394;
    end
    if(T348) begin
      Input_0_centeroidsFinished <= T397;
    end
    if(T348) begin
      Input_0_pointsFinished <= T399;
    end
    if(T333) begin
      GS_RECEIVE_POINT__State__rviReg <= T403;
    end
    if(T328) begin
      GS_SEND_RESULTS_INIT__State__rviReg <= T417;
    end
    if(T348) begin
      inputTag_0 <= T428;
    end
  end
endmodule

module RREncode_6(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_7(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_8(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module distanceFU(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_sub1_req_ready,
    output mainOff_sub1_req_valid,
    output[63:0] mainOff_sub1_req_bits_in1,
    output[63:0] mainOff_sub1_req_bits_in2,
    output[9:0] mainOff_sub1_req_tag,
    output mainOff_sub1_rep_ready,
    input  mainOff_sub1_rep_valid,
    input [63:0] mainOff_sub1_rep_bits_out,
    input [9:0] mainOff_sub1_rep_tag,
    input  mainOff_sub2_req_ready,
    output mainOff_sub2_req_valid,
    output[63:0] mainOff_sub2_req_bits_in1,
    output[63:0] mainOff_sub2_req_bits_in2,
    output[9:0] mainOff_sub2_req_tag,
    output mainOff_sub2_rep_ready,
    input  mainOff_sub2_rep_valid,
    input [63:0] mainOff_sub2_rep_bits_out,
    input [9:0] mainOff_sub2_rep_tag,
    input  mainOff_sub3_req_ready,
    output mainOff_sub3_req_valid,
    output[63:0] mainOff_sub3_req_bits_in1,
    output[63:0] mainOff_sub3_req_bits_in2,
    output[9:0] mainOff_sub3_req_tag,
    output mainOff_sub3_rep_ready,
    input  mainOff_sub3_rep_valid,
    input [63:0] mainOff_sub3_rep_bits_out,
    input [9:0] mainOff_sub3_rep_tag,
    input  mainOff_add1_req_ready,
    output mainOff_add1_req_valid,
    output[63:0] mainOff_add1_req_bits_in1,
    output[63:0] mainOff_add1_req_bits_in2,
    output[9:0] mainOff_add1_req_tag,
    output mainOff_add1_rep_ready,
    input  mainOff_add1_rep_valid,
    input [63:0] mainOff_add1_rep_bits_out,
    input [9:0] mainOff_add1_rep_tag,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_mul1_req_ready,
    output mainOff_mul1_req_valid,
    output[63:0] mainOff_mul1_req_bits_in1,
    output[63:0] mainOff_mul1_req_bits_in2,
    output[9:0] mainOff_mul1_req_tag,
    output mainOff_mul1_rep_ready,
    input  mainOff_mul1_rep_valid,
    input [63:0] mainOff_mul1_rep_bits_out,
    input [9:0] mainOff_mul1_rep_tag,
    input  mainOff_mul2_req_ready,
    output mainOff_mul2_req_valid,
    output[63:0] mainOff_mul2_req_bits_in1,
    output[63:0] mainOff_mul2_req_bits_in2,
    output[9:0] mainOff_mul2_req_tag,
    output mainOff_mul2_rep_ready,
    input  mainOff_mul2_rep_valid,
    input [63:0] mainOff_mul2_rep_bits_out,
    input [9:0] mainOff_mul2_rep_tag,
    input  mainOff_mul3_req_ready,
    output mainOff_mul3_req_valid,
    output[63:0] mainOff_mul3_req_bits_in1,
    output[63:0] mainOff_mul3_req_bits_in2,
    output[9:0] mainOff_mul3_req_tag,
    output mainOff_mul3_rep_ready,
    input  mainOff_mul3_rep_valid,
    input [63:0] mainOff_mul3_rep_bits_out,
    input [9:0] mainOff_mul3_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[0:0] sqrtPortHadValidRequest_0;
  wire T13;
  wire T14;
  wire T15;
  wire sqrtPort_req_valid;
  wire T16;
  wire T17;
  wire T18;
  wire[7:0] T19;
  wire[7:0] T20;
  wire[7:0] T21;
  reg[7:0] State_0;
  wire T22;
  wire T23;
  wire T24;
  wire T25;
  wire[1:0] T26;
  wire T27;
  wire T28;
  wire[7:0] T29;
  wire[7:0] T30;
  wire[7:0] T31;
  wire T32;
  wire T33;
  wire T34;
  wire T35;
  wire T36;
  wire[7:0] T37;
  wire T38;
  wire T39;
  wire T40;
  wire T41;
  wire T42;
  wire[7:0] T43;
  wire T44;
  wire T45;
  wire T46;
  wire T47;
  wire T48;
  wire[7:0] T49;
  wire T50;
  wire T51;
  wire T52;
  wire T53;
  wire T54;
  wire[7:0] T55;
  wire T56;
  wire T57;
  wire T58;
  wire T59;
  wire T60;
  wire[7:0] T61;
  wire T62;
  wire T63;
  wire T64;
  wire T65;
  wire T66;
  wire T67;
  wire T68;
  wire T69;
  wire T70;
  wire T71;
  wire[1:0] T72;
  wire sThreadEncoder_io_chosen;
  wire T73;
  wire T74;
  wire T75;
  wire T76;
  wire T77;
  wire[7:0] T78;
  wire[7:0] T79;
  wire[7:0] T80;
  wire[7:0] T81;
  wire[7:0] T82;
  wire[7:0] T83;
  wire[7:0] T84;
  wire[7:0] T85;
  wire[7:0] T86;
  wire[7:0] T87;
  wire[7:0] T88;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T89;
  wire[7:0] T90;
  wire[7:0] T91;
  wire[7:0] T92;
  wire[7:0] T93;
  wire[7:0] T94;
  wire T95;
  wire T96;
  wire T97;
  wire T98;
  reg[0:0] sqrt_valid_received_0;
  wire T99;
  wire T100;
  wire T101;
  wire T102;
  wire[9:0] T103;
  wire[9:0] sqrtPort_rep_tag;
  wire sqrtPort_rep_ready;
  wire[9:0] sqrtPort_req_tag;
  wire[9:0] T104;
  wire sqrtPort_rep_valid;
  wire T105;
  wire T106;
  wire[4:0] T107;
  wire T108;
  wire T109;
  wire[4:0] T110;
  wire T111;
  wire T112;
  wire[4:0] T113;
  wire T114;
  wire T115;
  wire T116;
  wire[9:0] T117;
  wire T118;
  wire T119;
  wire T120;
  reg[0:0] mul3PortHadValidRequest_0;
  wire T121;
  wire T122;
  wire T123;
  wire mul3Port_req_valid;
  wire T124;
  wire T125;
  wire T126;
  wire[7:0] T127;
  wire T128;
  wire T129;
  wire T130;
  wire T131;
  reg[0:0] mul3_valid_received_0;
  wire T132;
  wire T133;
  wire T134;
  wire T135;
  wire[9:0] T136;
  wire[9:0] mul3Port_rep_tag;
  wire mul3Port_rep_ready;
  wire[9:0] mul3Port_req_tag;
  wire[9:0] T137;
  wire mul3Port_rep_valid;
  wire T138;
  wire T139;
  wire[4:0] T140;
  wire T141;
  wire T142;
  wire[4:0] T143;
  wire T144;
  wire T145;
  wire[4:0] T146;
  wire T147;
  wire T148;
  wire T149;
  wire[9:0] T150;
  wire T151;
  wire T152;
  wire T153;
  reg[0:0] mul2PortHadValidRequest_0;
  wire T154;
  wire T155;
  wire T156;
  wire mul2Port_req_valid;
  wire T157;
  wire T158;
  wire T159;
  wire[7:0] T160;
  wire T161;
  wire T162;
  wire T163;
  wire T164;
  reg[0:0] mul2_valid_received_0;
  wire T165;
  wire T166;
  wire T167;
  wire T168;
  wire[9:0] T169;
  wire[9:0] mul2Port_rep_tag;
  wire mul2Port_rep_ready;
  wire[9:0] mul2Port_req_tag;
  wire[9:0] T170;
  wire mul2Port_rep_valid;
  wire T171;
  wire T172;
  wire[4:0] T173;
  wire T174;
  wire T175;
  wire[4:0] T176;
  wire T177;
  wire T178;
  wire[4:0] T179;
  wire T180;
  wire T181;
  wire T182;
  wire[9:0] T183;
  wire T184;
  wire T185;
  wire T186;
  reg[0:0] mul1PortHadValidRequest_0;
  wire T187;
  wire T188;
  wire T189;
  wire mul1Port_req_valid;
  wire T190;
  wire T191;
  wire T192;
  wire[7:0] T193;
  wire T194;
  wire T195;
  wire T196;
  wire T197;
  reg[0:0] mul1_valid_received_0;
  wire T198;
  wire T199;
  wire T200;
  wire T201;
  wire[9:0] T202;
  wire[9:0] mul1Port_rep_tag;
  wire mul1Port_rep_ready;
  wire[9:0] mul1Port_req_tag;
  wire[9:0] T203;
  wire mul1Port_rep_valid;
  wire T204;
  wire T205;
  wire[4:0] T206;
  wire T207;
  wire T208;
  wire[4:0] T209;
  wire T210;
  wire T211;
  wire[4:0] T212;
  wire T213;
  wire T214;
  wire T215;
  wire[9:0] T216;
  wire T217;
  wire T218;
  wire T219;
  reg[0:0] add2PortHadValidRequest_0;
  wire T220;
  wire T221;
  wire T222;
  wire add2Port_req_valid;
  wire T223;
  wire T224;
  wire T225;
  wire[7:0] T226;
  wire T227;
  wire T228;
  wire T229;
  wire T230;
  reg[0:0] add2_valid_received_0;
  wire T231;
  wire T232;
  wire T233;
  wire T234;
  wire[9:0] T235;
  wire[9:0] add2Port_rep_tag;
  wire add2Port_rep_ready;
  wire[9:0] add2Port_req_tag;
  wire[9:0] T236;
  wire add2Port_rep_valid;
  wire T237;
  wire T238;
  wire[4:0] T239;
  wire T240;
  wire T241;
  wire[4:0] T242;
  wire T243;
  wire T244;
  wire[4:0] T245;
  wire T246;
  wire T247;
  wire T248;
  wire[9:0] T249;
  wire T250;
  wire T251;
  wire T252;
  reg[0:0] add1PortHadValidRequest_0;
  wire T253;
  wire T254;
  wire T255;
  wire add1Port_req_valid;
  wire T256;
  wire T257;
  wire T258;
  wire[7:0] T259;
  wire T260;
  wire T261;
  wire T262;
  wire T263;
  reg[0:0] add1_valid_received_0;
  wire T264;
  wire T265;
  wire T266;
  wire T267;
  wire[9:0] T268;
  wire[9:0] add1Port_rep_tag;
  wire add1Port_rep_ready;
  wire[9:0] add1Port_req_tag;
  wire[9:0] T269;
  wire add1Port_rep_valid;
  wire T270;
  wire T271;
  wire[4:0] T272;
  wire T273;
  wire T274;
  wire[4:0] T275;
  wire T276;
  wire T277;
  wire[4:0] T278;
  wire T279;
  wire T280;
  wire T281;
  wire[9:0] T282;
  wire T283;
  wire T284;
  wire T285;
  reg[0:0] sub3PortHadValidRequest_0;
  wire T286;
  wire T287;
  wire T288;
  wire sub3Port_req_valid;
  wire T289;
  wire T290;
  wire T291;
  wire[7:0] T292;
  wire T293;
  wire T294;
  wire T295;
  wire T296;
  reg[0:0] sub3_valid_received_0;
  wire T297;
  wire T298;
  wire T299;
  wire T300;
  wire[9:0] T301;
  wire[9:0] sub3Port_rep_tag;
  wire sub3Port_rep_ready;
  wire[9:0] sub3Port_req_tag;
  wire[9:0] T302;
  wire sub3Port_rep_valid;
  wire T303;
  wire T304;
  wire[4:0] T305;
  wire T306;
  wire T307;
  wire[4:0] T308;
  wire T309;
  wire T310;
  wire[4:0] T311;
  wire T312;
  wire T313;
  wire T314;
  wire[9:0] T315;
  wire T316;
  wire T317;
  wire T318;
  reg[0:0] sub2PortHadValidRequest_0;
  wire T319;
  wire T320;
  wire T321;
  wire sub2Port_req_valid;
  wire T322;
  wire T323;
  wire T324;
  wire[7:0] T325;
  wire T326;
  wire T327;
  wire T328;
  wire T329;
  reg[0:0] sub2_valid_received_0;
  wire T330;
  wire T331;
  wire T332;
  wire T333;
  wire[9:0] T334;
  wire[9:0] sub2Port_rep_tag;
  wire sub2Port_rep_ready;
  wire[9:0] sub2Port_req_tag;
  wire[9:0] T335;
  wire sub2Port_rep_valid;
  wire T336;
  wire T337;
  wire[4:0] T338;
  wire T339;
  wire T340;
  wire[4:0] T341;
  wire T342;
  wire T343;
  wire[4:0] T344;
  wire T345;
  wire T346;
  wire T347;
  wire[9:0] T348;
  wire T349;
  wire T350;
  reg[0:0] sub1PortHadValidRequest_0;
  wire T351;
  wire T352;
  wire T353;
  wire sub1Port_req_valid;
  wire T354;
  wire T355;
  wire T356;
  wire[7:0] T357;
  wire T358;
  wire T359;
  wire T360;
  wire T361;
  reg[0:0] sub1_valid_received_0;
  wire T362;
  wire T363;
  wire T364;
  wire T365;
  wire[9:0] T366;
  wire[9:0] sub1Port_rep_tag;
  wire sub1Port_rep_ready;
  wire[9:0] sub1Port_req_tag;
  wire[9:0] T367;
  wire sub1Port_rep_valid;
  wire T368;
  wire T369;
  wire[4:0] T370;
  wire T371;
  wire T372;
  wire[4:0] T373;
  wire T374;
  wire T375;
  wire[4:0] T376;
  wire T377;
  wire T378;
  wire T379;
  wire[9:0] T380;
  wire T381;
  wire T382;
  wire T383;
  wire T384;
  wire T385;
  wire T386;
  wire T387;
  wire AllOffloadsReady;
  wire T388;
  wire T389;
  wire T390;
  wire T391;
  wire T392;
  reg[0:0] sqrtPortHadReadyRequest;
  wire T393;
  wire T394;
  wire T395;
  wire T396;
  reg[0:0] sqrt_ready_received;
  wire T397;
  wire T398;
  wire sqrtPort_req_ready;
  wire T399;
  wire T400;
  wire T401;
  wire T402;
  wire T403;
  wire T404;
  reg[0:0] mul3PortHadReadyRequest;
  wire T405;
  wire T406;
  wire T407;
  wire T408;
  reg[0:0] mul3_ready_received;
  wire T409;
  wire T410;
  wire mul3Port_req_ready;
  wire T411;
  wire T412;
  wire T413;
  wire T414;
  wire T415;
  wire T416;
  reg[0:0] mul2PortHadReadyRequest;
  wire T417;
  wire T418;
  wire T419;
  wire T420;
  reg[0:0] mul2_ready_received;
  wire T421;
  wire T422;
  wire mul2Port_req_ready;
  wire T423;
  wire T424;
  wire T425;
  wire T426;
  wire T427;
  wire T428;
  reg[0:0] mul1PortHadReadyRequest;
  wire T429;
  wire T430;
  wire T431;
  wire T432;
  reg[0:0] mul1_ready_received;
  wire T433;
  wire T434;
  wire mul1Port_req_ready;
  wire T435;
  wire T436;
  wire T437;
  wire T438;
  wire T439;
  wire T440;
  reg[0:0] add2PortHadReadyRequest;
  wire T441;
  wire T442;
  wire T443;
  wire T444;
  reg[0:0] add2_ready_received;
  wire T445;
  wire T446;
  wire add2Port_req_ready;
  wire T447;
  wire T448;
  wire T449;
  wire T450;
  wire T451;
  wire T452;
  reg[0:0] add1PortHadReadyRequest;
  wire T453;
  wire T454;
  wire T455;
  wire T456;
  reg[0:0] add1_ready_received;
  wire T457;
  wire T458;
  wire add1Port_req_ready;
  wire T459;
  wire T460;
  wire T461;
  wire T462;
  wire T463;
  wire T464;
  reg[0:0] sub3PortHadReadyRequest;
  wire T465;
  wire T466;
  wire T467;
  wire T468;
  reg[0:0] sub3_ready_received;
  wire T469;
  wire T470;
  wire sub3Port_req_ready;
  wire T471;
  wire T472;
  wire T473;
  wire T474;
  wire T475;
  wire T476;
  reg[0:0] sub2PortHadReadyRequest;
  wire T477;
  wire T478;
  wire T479;
  wire T480;
  reg[0:0] sub2_ready_received;
  wire T481;
  wire T482;
  wire sub2Port_req_ready;
  wire T483;
  wire T484;
  wire T485;
  wire T486;
  wire T487;
  reg[0:0] sub1PortHadReadyRequest;
  wire T488;
  wire T489;
  wire T490;
  wire T491;
  reg[0:0] sub1_ready_received;
  wire T492;
  wire T493;
  wire sub1Port_req_ready;
  wire T494;
  reg[9:0] inputTag_0;
  wire[9:0] T495;
  wire T496;
  wire T497;
  wire T498;
  wire T499;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T382 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T381 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = T10;
  assign T10 = T118 && T11;
  assign T11 = T114 || T12;
  assign T12 = ! sqrtPortHadValidRequest_0;
  assign T13 = T111 && T14;
  assign T14 = sqrtPortHadValidRequest_0 || T15;
  assign T15 = T109 && sqrtPort_req_valid;
  assign sqrtPort_req_valid = T16;
  assign T16 = T96 && T17;
  assign T17 = T95 && T18;
  assign T18 = T20 == T19;
  assign T19 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T20 = State_0 & T21;
  assign T21 = {4'h8/* 8*/{T2}};
  assign T22 = T33 || T23;
  assign T23 = T27 && T24;
  assign T24 = T25;
  assign T25 = T26[1'h0/* 0*/:1'h0/* 0*/];
  assign T26 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T27 = T32 && T28;
  assign T28 = T30 == T29;
  assign T29 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T30 = State_0 & T31;
  assign T31 = {4'h8/* 8*/{T24}};
  assign T32 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T33 = T39 || T34;
  assign T34 = T35 && T24;
  assign T35 = T38 && T36;
  assign T36 = T30 == T37;
  assign T37 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T38 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T39 = T45 || T40;
  assign T40 = T41 && T24;
  assign T41 = T44 && T42;
  assign T42 = T30 == T43;
  assign T43 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T44 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T45 = T51 || T46;
  assign T46 = T47 && T24;
  assign T47 = T50 && T48;
  assign T48 = T30 == T49;
  assign T49 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T50 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T51 = T57 || T52;
  assign T52 = T53 && T24;
  assign T53 = T56 && T54;
  assign T54 = T30 == T55;
  assign T55 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T56 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T57 = T63 || T58;
  assign T58 = T59 && T24;
  assign T59 = T62 && T60;
  assign T60 = T30 == T61;
  assign T61 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T62 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T63 = T69 || T64;
  assign T64 = T65 && T2;
  assign T65 = T66 && io_out_ready;
  assign T66 = T68 && T67;
  assign T67 = T20 == 8'hff/* 255*/;
  assign T68 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T69 = T76 && T70;
  assign T70 = T71;
  assign T71 = T72[1'h0/* 0*/:1'h0/* 0*/];
  assign T72 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T73 = T75 && T74;
  assign T74 = State_0 == 8'h0/* 0*/;
  assign T75 = subStateTh_0 == 1'h0/* 0*/;
  assign T76 = T77 && io_in_valid;
  assign T77 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T78 = T23 ? 8'hff/* 255*/ : T79;
  assign T79 = T34 ? T94 : T80;
  assign T80 = T40 ? T93 : T81;
  assign T81 = T46 ? T92 : T82;
  assign T82 = T52 ? T91 : T83;
  assign T83 = T58 ? T90 : T84;
  assign T84 = T64 ? T87 : T85;
  assign T85 = T69 ? T86 : State_0;
  assign T86 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T87 = EmitReturnState_0 & T88;
  assign T88 = {4'h8/* 8*/{T2}};
  assign T89 = T23 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T90 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T91 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T92 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T93 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T94 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T95 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T96 = T108 && T97;
  assign T97 = ! T98;
  assign T98 = sqrt_valid_received_0 & T2;
  assign T99 = T105 && T100;
  assign T100 = sqrt_valid_received_0 || T101;
  assign T101 = sqrtPort_rep_valid && T102;
  assign T102 = sqrtPort_rep_tag == T103;
  assign T103 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign sqrtPort_rep_tag = mainOff_sqrt_rep_tag;
  assign mainOff_sqrt_rep_ready = sqrtPort_rep_ready;
  assign sqrtPort_rep_ready = 1'h1/* 1*/;
  assign mainOff_sqrt_req_valid = sqrtPort_req_valid;
  assign mainOff_sqrt_req_tag = sqrtPort_req_tag;
  assign sqrtPort_req_tag = T104;
  assign T104 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign sqrtPort_rep_valid = mainOff_sqrt_rep_valid;
  assign T105 = ! T106;
  assign T106 = T107 == 5'h0/* 0*/;
  assign T107 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T108 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T109 = 5'h0/* 0*/ == T110;
  assign T110 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T111 = ! T112;
  assign T112 = T113 == 5'h0/* 0*/;
  assign T113 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T114 = T115 || sqrt_valid_received_0;
  assign T115 = sqrtPort_rep_valid && T116;
  assign T116 = sqrtPort_rep_tag == T117;
  assign T117 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T118 = T151 && T119;
  assign T119 = T147 || T120;
  assign T120 = ! mul3PortHadValidRequest_0;
  assign T121 = T144 && T122;
  assign T122 = mul3PortHadValidRequest_0 || T123;
  assign T123 = T142 && mul3Port_req_valid;
  assign mul3Port_req_valid = T124;
  assign T124 = T129 && T125;
  assign T125 = T128 && T126;
  assign T126 = T20 == T127;
  assign T127 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T128 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T129 = T141 && T130;
  assign T130 = ! T131;
  assign T131 = mul3_valid_received_0 & T2;
  assign T132 = T138 && T133;
  assign T133 = mul3_valid_received_0 || T134;
  assign T134 = mul3Port_rep_valid && T135;
  assign T135 = mul3Port_rep_tag == T136;
  assign T136 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign mul3Port_rep_tag = mainOff_mul3_rep_tag;
  assign mainOff_mul3_rep_ready = mul3Port_rep_ready;
  assign mul3Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_mul3_req_valid = mul3Port_req_valid;
  assign mainOff_mul3_req_tag = mul3Port_req_tag;
  assign mul3Port_req_tag = T137;
  assign T137 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign mul3Port_rep_valid = mainOff_mul3_rep_valid;
  assign T138 = ! T139;
  assign T139 = T140 == 5'h0/* 0*/;
  assign T140 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T141 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T142 = 5'h0/* 0*/ == T143;
  assign T143 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T144 = ! T145;
  assign T145 = T146 == 5'h0/* 0*/;
  assign T146 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T147 = T148 || mul3_valid_received_0;
  assign T148 = mul3Port_rep_valid && T149;
  assign T149 = mul3Port_rep_tag == T150;
  assign T150 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T151 = T184 && T152;
  assign T152 = T180 || T153;
  assign T153 = ! mul2PortHadValidRequest_0;
  assign T154 = T177 && T155;
  assign T155 = mul2PortHadValidRequest_0 || T156;
  assign T156 = T175 && mul2Port_req_valid;
  assign mul2Port_req_valid = T157;
  assign T157 = T162 && T158;
  assign T158 = T161 && T159;
  assign T159 = T20 == T160;
  assign T160 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T161 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T162 = T174 && T163;
  assign T163 = ! T164;
  assign T164 = mul2_valid_received_0 & T2;
  assign T165 = T171 && T166;
  assign T166 = mul2_valid_received_0 || T167;
  assign T167 = mul2Port_rep_valid && T168;
  assign T168 = mul2Port_rep_tag == T169;
  assign T169 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign mul2Port_rep_tag = mainOff_mul2_rep_tag;
  assign mainOff_mul2_rep_ready = mul2Port_rep_ready;
  assign mul2Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_mul2_req_valid = mul2Port_req_valid;
  assign mainOff_mul2_req_tag = mul2Port_req_tag;
  assign mul2Port_req_tag = T170;
  assign T170 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign mul2Port_rep_valid = mainOff_mul2_rep_valid;
  assign T171 = ! T172;
  assign T172 = T173 == 5'h0/* 0*/;
  assign T173 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T174 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T175 = 5'h0/* 0*/ == T176;
  assign T176 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T177 = ! T178;
  assign T178 = T179 == 5'h0/* 0*/;
  assign T179 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T180 = T181 || mul2_valid_received_0;
  assign T181 = mul2Port_rep_valid && T182;
  assign T182 = mul2Port_rep_tag == T183;
  assign T183 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T184 = T217 && T185;
  assign T185 = T213 || T186;
  assign T186 = ! mul1PortHadValidRequest_0;
  assign T187 = T210 && T188;
  assign T188 = mul1PortHadValidRequest_0 || T189;
  assign T189 = T208 && mul1Port_req_valid;
  assign mul1Port_req_valid = T190;
  assign T190 = T195 && T191;
  assign T191 = T194 && T192;
  assign T192 = T20 == T193;
  assign T193 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T194 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T195 = T207 && T196;
  assign T196 = ! T197;
  assign T197 = mul1_valid_received_0 & T2;
  assign T198 = T204 && T199;
  assign T199 = mul1_valid_received_0 || T200;
  assign T200 = mul1Port_rep_valid && T201;
  assign T201 = mul1Port_rep_tag == T202;
  assign T202 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign mul1Port_rep_tag = mainOff_mul1_rep_tag;
  assign mainOff_mul1_rep_ready = mul1Port_rep_ready;
  assign mul1Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_mul1_req_valid = mul1Port_req_valid;
  assign mainOff_mul1_req_tag = mul1Port_req_tag;
  assign mul1Port_req_tag = T203;
  assign T203 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign mul1Port_rep_valid = mainOff_mul1_rep_valid;
  assign T204 = ! T205;
  assign T205 = T206 == 5'h0/* 0*/;
  assign T206 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T207 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T208 = 5'h0/* 0*/ == T209;
  assign T209 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T210 = ! T211;
  assign T211 = T212 == 5'h0/* 0*/;
  assign T212 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T213 = T214 || mul1_valid_received_0;
  assign T214 = mul1Port_rep_valid && T215;
  assign T215 = mul1Port_rep_tag == T216;
  assign T216 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T217 = T250 && T218;
  assign T218 = T246 || T219;
  assign T219 = ! add2PortHadValidRequest_0;
  assign T220 = T243 && T221;
  assign T221 = add2PortHadValidRequest_0 || T222;
  assign T222 = T241 && add2Port_req_valid;
  assign add2Port_req_valid = T223;
  assign T223 = T228 && T224;
  assign T224 = T227 && T225;
  assign T225 = T20 == T226;
  assign T226 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T227 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T228 = T240 && T229;
  assign T229 = ! T230;
  assign T230 = add2_valid_received_0 & T2;
  assign T231 = T237 && T232;
  assign T232 = add2_valid_received_0 || T233;
  assign T233 = add2Port_rep_valid && T234;
  assign T234 = add2Port_rep_tag == T235;
  assign T235 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign add2Port_rep_tag = mainOff_add2_rep_tag;
  assign mainOff_add2_rep_ready = add2Port_rep_ready;
  assign add2Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_add2_req_valid = add2Port_req_valid;
  assign mainOff_add2_req_tag = add2Port_req_tag;
  assign add2Port_req_tag = T236;
  assign T236 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign add2Port_rep_valid = mainOff_add2_rep_valid;
  assign T237 = ! T238;
  assign T238 = T239 == 5'h0/* 0*/;
  assign T239 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T240 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T241 = 5'h0/* 0*/ == T242;
  assign T242 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T243 = ! T244;
  assign T244 = T245 == 5'h0/* 0*/;
  assign T245 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T246 = T247 || add2_valid_received_0;
  assign T247 = add2Port_rep_valid && T248;
  assign T248 = add2Port_rep_tag == T249;
  assign T249 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T250 = T283 && T251;
  assign T251 = T279 || T252;
  assign T252 = ! add1PortHadValidRequest_0;
  assign T253 = T276 && T254;
  assign T254 = add1PortHadValidRequest_0 || T255;
  assign T255 = T274 && add1Port_req_valid;
  assign add1Port_req_valid = T256;
  assign T256 = T261 && T257;
  assign T257 = T260 && T258;
  assign T258 = T20 == T259;
  assign T259 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T260 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T261 = T273 && T262;
  assign T262 = ! T263;
  assign T263 = add1_valid_received_0 & T2;
  assign T264 = T270 && T265;
  assign T265 = add1_valid_received_0 || T266;
  assign T266 = add1Port_rep_valid && T267;
  assign T267 = add1Port_rep_tag == T268;
  assign T268 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign add1Port_rep_tag = mainOff_add1_rep_tag;
  assign mainOff_add1_rep_ready = add1Port_rep_ready;
  assign add1Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_add1_req_valid = add1Port_req_valid;
  assign mainOff_add1_req_tag = add1Port_req_tag;
  assign add1Port_req_tag = T269;
  assign T269 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign add1Port_rep_valid = mainOff_add1_rep_valid;
  assign T270 = ! T271;
  assign T271 = T272 == 5'h0/* 0*/;
  assign T272 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T273 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T274 = 5'h0/* 0*/ == T275;
  assign T275 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T276 = ! T277;
  assign T277 = T278 == 5'h0/* 0*/;
  assign T278 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T279 = T280 || add1_valid_received_0;
  assign T280 = add1Port_rep_valid && T281;
  assign T281 = add1Port_rep_tag == T282;
  assign T282 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T283 = T316 && T284;
  assign T284 = T312 || T285;
  assign T285 = ! sub3PortHadValidRequest_0;
  assign T286 = T309 && T287;
  assign T287 = sub3PortHadValidRequest_0 || T288;
  assign T288 = T307 && sub3Port_req_valid;
  assign sub3Port_req_valid = T289;
  assign T289 = T294 && T290;
  assign T290 = T293 && T291;
  assign T291 = T20 == T292;
  assign T292 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T293 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T294 = T306 && T295;
  assign T295 = ! T296;
  assign T296 = sub3_valid_received_0 & T2;
  assign T297 = T303 && T298;
  assign T298 = sub3_valid_received_0 || T299;
  assign T299 = sub3Port_rep_valid && T300;
  assign T300 = sub3Port_rep_tag == T301;
  assign T301 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign sub3Port_rep_tag = mainOff_sub3_rep_tag;
  assign mainOff_sub3_rep_ready = sub3Port_rep_ready;
  assign sub3Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_sub3_req_valid = sub3Port_req_valid;
  assign mainOff_sub3_req_tag = sub3Port_req_tag;
  assign sub3Port_req_tag = T302;
  assign T302 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign sub3Port_rep_valid = mainOff_sub3_rep_valid;
  assign T303 = ! T304;
  assign T304 = T305 == 5'h0/* 0*/;
  assign T305 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T306 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T307 = 5'h0/* 0*/ == T308;
  assign T308 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T309 = ! T310;
  assign T310 = T311 == 5'h0/* 0*/;
  assign T311 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T312 = T313 || sub3_valid_received_0;
  assign T313 = sub3Port_rep_valid && T314;
  assign T314 = sub3Port_rep_tag == T315;
  assign T315 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T316 = T349 && T317;
  assign T317 = T345 || T318;
  assign T318 = ! sub2PortHadValidRequest_0;
  assign T319 = T342 && T320;
  assign T320 = sub2PortHadValidRequest_0 || T321;
  assign T321 = T340 && sub2Port_req_valid;
  assign sub2Port_req_valid = T322;
  assign T322 = T327 && T323;
  assign T323 = T326 && T324;
  assign T324 = T20 == T325;
  assign T325 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T326 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T327 = T339 && T328;
  assign T328 = ! T329;
  assign T329 = sub2_valid_received_0 & T2;
  assign T330 = T336 && T331;
  assign T331 = sub2_valid_received_0 || T332;
  assign T332 = sub2Port_rep_valid && T333;
  assign T333 = sub2Port_rep_tag == T334;
  assign T334 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign sub2Port_rep_tag = mainOff_sub2_rep_tag;
  assign mainOff_sub2_rep_ready = sub2Port_rep_ready;
  assign sub2Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_sub2_req_valid = sub2Port_req_valid;
  assign mainOff_sub2_req_tag = sub2Port_req_tag;
  assign sub2Port_req_tag = T335;
  assign T335 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign sub2Port_rep_valid = mainOff_sub2_rep_valid;
  assign T336 = ! T337;
  assign T337 = T338 == 5'h0/* 0*/;
  assign T338 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T339 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T340 = 5'h0/* 0*/ == T341;
  assign T341 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T342 = ! T343;
  assign T343 = T344 == 5'h0/* 0*/;
  assign T344 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T345 = T346 || sub2_valid_received_0;
  assign T346 = sub2Port_rep_valid && T347;
  assign T347 = sub2Port_rep_tag == T348;
  assign T348 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T349 = T377 || T350;
  assign T350 = ! sub1PortHadValidRequest_0;
  assign T351 = T374 && T352;
  assign T352 = sub1PortHadValidRequest_0 || T353;
  assign T353 = T372 && sub1Port_req_valid;
  assign sub1Port_req_valid = T354;
  assign T354 = T359 && T355;
  assign T355 = T358 && T356;
  assign T356 = T20 == T357;
  assign T357 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T358 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T359 = T371 && T360;
  assign T360 = ! T361;
  assign T361 = sub1_valid_received_0 & T2;
  assign T362 = T368 && T363;
  assign T363 = sub1_valid_received_0 || T364;
  assign T364 = sub1Port_rep_valid && T365;
  assign T365 = sub1Port_rep_tag == T366;
  assign T366 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign sub1Port_rep_tag = mainOff_sub1_rep_tag;
  assign mainOff_sub1_rep_ready = sub1Port_rep_ready;
  assign sub1Port_rep_ready = 1'h1/* 1*/;
  assign mainOff_sub1_req_valid = sub1Port_req_valid;
  assign mainOff_sub1_req_tag = sub1Port_req_tag;
  assign sub1Port_req_tag = T367;
  assign T367 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign sub1Port_rep_valid = mainOff_sub1_rep_valid;
  assign T368 = ! T369;
  assign T369 = T370 == 5'h0/* 0*/;
  assign T370 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T371 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T372 = 5'h0/* 0*/ == T373;
  assign T373 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T374 = ! T375;
  assign T375 = T376 == 5'h0/* 0*/;
  assign T376 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T377 = T378 || sub1_valid_received_0;
  assign T378 = sub1Port_rep_valid && T379;
  assign T379 = sub1Port_rep_tag == T380;
  assign T380 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T381 = subStateTh_0 == 1'h1/* 1*/;
  assign T382 = T384 && T383;
  assign T383 = State_0 != 8'hff/* 255*/;
  assign T384 = T386 && T385;
  assign T385 = State_0 != 8'h0/* 0*/;
  assign T386 = AllOffloadsReady && T387;
  assign T387 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = T388;
  assign T388 = T400 && T389;
  assign T389 = T396 || T390;
  assign T390 = T392 && T391;
  assign T391 = ! sqrtPort_req_valid;
  assign T392 = ! sqrtPortHadReadyRequest;
  assign T393 = T395 && T394;
  assign T394 = sqrtPortHadReadyRequest || sqrtPort_req_valid;
  assign T395 = ! AllOffloadsReady;
  assign T396 = sqrtPort_req_ready || sqrt_ready_received;
  assign T397 = T399 && T398;
  assign T398 = sqrt_ready_received || sqrtPort_req_ready;
  assign sqrtPort_req_ready = mainOff_sqrt_req_ready;
  assign T399 = ! AllOffloadsReady;
  assign T400 = T412 && T401;
  assign T401 = T408 || T402;
  assign T402 = T404 && T403;
  assign T403 = ! mul3Port_req_valid;
  assign T404 = ! mul3PortHadReadyRequest;
  assign T405 = T407 && T406;
  assign T406 = mul3PortHadReadyRequest || mul3Port_req_valid;
  assign T407 = ! AllOffloadsReady;
  assign T408 = mul3Port_req_ready || mul3_ready_received;
  assign T409 = T411 && T410;
  assign T410 = mul3_ready_received || mul3Port_req_ready;
  assign mul3Port_req_ready = mainOff_mul3_req_ready;
  assign T411 = ! AllOffloadsReady;
  assign T412 = T424 && T413;
  assign T413 = T420 || T414;
  assign T414 = T416 && T415;
  assign T415 = ! mul2Port_req_valid;
  assign T416 = ! mul2PortHadReadyRequest;
  assign T417 = T419 && T418;
  assign T418 = mul2PortHadReadyRequest || mul2Port_req_valid;
  assign T419 = ! AllOffloadsReady;
  assign T420 = mul2Port_req_ready || mul2_ready_received;
  assign T421 = T423 && T422;
  assign T422 = mul2_ready_received || mul2Port_req_ready;
  assign mul2Port_req_ready = mainOff_mul2_req_ready;
  assign T423 = ! AllOffloadsReady;
  assign T424 = T436 && T425;
  assign T425 = T432 || T426;
  assign T426 = T428 && T427;
  assign T427 = ! mul1Port_req_valid;
  assign T428 = ! mul1PortHadReadyRequest;
  assign T429 = T431 && T430;
  assign T430 = mul1PortHadReadyRequest || mul1Port_req_valid;
  assign T431 = ! AllOffloadsReady;
  assign T432 = mul1Port_req_ready || mul1_ready_received;
  assign T433 = T435 && T434;
  assign T434 = mul1_ready_received || mul1Port_req_ready;
  assign mul1Port_req_ready = mainOff_mul1_req_ready;
  assign T435 = ! AllOffloadsReady;
  assign T436 = T448 && T437;
  assign T437 = T444 || T438;
  assign T438 = T440 && T439;
  assign T439 = ! add2Port_req_valid;
  assign T440 = ! add2PortHadReadyRequest;
  assign T441 = T443 && T442;
  assign T442 = add2PortHadReadyRequest || add2Port_req_valid;
  assign T443 = ! AllOffloadsReady;
  assign T444 = add2Port_req_ready || add2_ready_received;
  assign T445 = T447 && T446;
  assign T446 = add2_ready_received || add2Port_req_ready;
  assign add2Port_req_ready = mainOff_add2_req_ready;
  assign T447 = ! AllOffloadsReady;
  assign T448 = T460 && T449;
  assign T449 = T456 || T450;
  assign T450 = T452 && T451;
  assign T451 = ! add1Port_req_valid;
  assign T452 = ! add1PortHadReadyRequest;
  assign T453 = T455 && T454;
  assign T454 = add1PortHadReadyRequest || add1Port_req_valid;
  assign T455 = ! AllOffloadsReady;
  assign T456 = add1Port_req_ready || add1_ready_received;
  assign T457 = T459 && T458;
  assign T458 = add1_ready_received || add1Port_req_ready;
  assign add1Port_req_ready = mainOff_add1_req_ready;
  assign T459 = ! AllOffloadsReady;
  assign T460 = T472 && T461;
  assign T461 = T468 || T462;
  assign T462 = T464 && T463;
  assign T463 = ! sub3Port_req_valid;
  assign T464 = ! sub3PortHadReadyRequest;
  assign T465 = T467 && T466;
  assign T466 = sub3PortHadReadyRequest || sub3Port_req_valid;
  assign T467 = ! AllOffloadsReady;
  assign T468 = sub3Port_req_ready || sub3_ready_received;
  assign T469 = T471 && T470;
  assign T470 = sub3_ready_received || sub3Port_req_ready;
  assign sub3Port_req_ready = mainOff_sub3_req_ready;
  assign T471 = ! AllOffloadsReady;
  assign T472 = T484 && T473;
  assign T473 = T480 || T474;
  assign T474 = T476 && T475;
  assign T475 = ! sub2Port_req_valid;
  assign T476 = ! sub2PortHadReadyRequest;
  assign T477 = T479 && T478;
  assign T478 = sub2PortHadReadyRequest || sub2Port_req_valid;
  assign T479 = ! AllOffloadsReady;
  assign T480 = sub2Port_req_ready || sub2_ready_received;
  assign T481 = T483 && T482;
  assign T482 = sub2_ready_received || sub2Port_req_ready;
  assign sub2Port_req_ready = mainOff_sub2_req_ready;
  assign T483 = ! AllOffloadsReady;
  assign T484 = T491 || T485;
  assign T485 = T487 && T486;
  assign T486 = ! sub1Port_req_valid;
  assign T487 = ! sub1PortHadReadyRequest;
  assign T488 = T490 && T489;
  assign T489 = sub1PortHadReadyRequest || sub1Port_req_valid;
  assign T490 = ! AllOffloadsReady;
  assign T491 = sub1Port_req_ready || sub1_ready_received;
  assign T492 = T494 && T493;
  assign T493 = sub1_ready_received || sub1Port_req_ready;
  assign sub1Port_req_ready = mainOff_sub1_req_ready;
  assign T494 = ! AllOffloadsReady;
  assign T495 = T69 ? io_in_tag : inputTag_0;
  assign io_out_valid = T496;
  assign T496 = T498 && T497;
  assign T497 = T20 == 8'hff/* 255*/;
  assign T498 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T499;
  assign T499 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_6 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_7 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_8 sThreadEncoder(
       .io_valid_0( T73 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    sqrtPortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T13;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T22) begin
      State_0 <= T78;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T23) begin
      EmitReturnState_0 <= T89;
    end
    sqrt_valid_received_0 <= reset ? 1'h0/* 0*/ : T99;
    mul3PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T121;
    mul3_valid_received_0 <= reset ? 1'h0/* 0*/ : T132;
    mul2PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T154;
    mul2_valid_received_0 <= reset ? 1'h0/* 0*/ : T165;
    mul1PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T187;
    mul1_valid_received_0 <= reset ? 1'h0/* 0*/ : T198;
    add2PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T220;
    add2_valid_received_0 <= reset ? 1'h0/* 0*/ : T231;
    add1PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T253;
    add1_valid_received_0 <= reset ? 1'h0/* 0*/ : T264;
    sub3PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T286;
    sub3_valid_received_0 <= reset ? 1'h0/* 0*/ : T297;
    sub2PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T319;
    sub2_valid_received_0 <= reset ? 1'h0/* 0*/ : T330;
    sub1PortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T351;
    sub1_valid_received_0 <= reset ? 1'h0/* 0*/ : T362;
    sqrtPortHadReadyRequest <= reset ? 1'h0/* 0*/ : T393;
    sqrt_ready_received <= reset ? 1'h0/* 0*/ : T397;
    mul3PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T405;
    mul3_ready_received <= reset ? 1'h0/* 0*/ : T409;
    mul2PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T417;
    mul2_ready_received <= reset ? 1'h0/* 0*/ : T421;
    mul1PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T429;
    mul1_ready_received <= reset ? 1'h0/* 0*/ : T433;
    add2PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T441;
    add2_ready_received <= reset ? 1'h0/* 0*/ : T445;
    add1PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T453;
    add1_ready_received <= reset ? 1'h0/* 0*/ : T457;
    sub3PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T465;
    sub3_ready_received <= reset ? 1'h0/* 0*/ : T469;
    sub2PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T477;
    sub2_ready_received <= reset ? 1'h0/* 0*/ : T481;
    sub1PortHadReadyRequest <= reset ? 1'h0/* 0*/ : T488;
    sub1_ready_received <= reset ? 1'h0/* 0*/ : T492;
    if(T69) begin
      inputTag_0 <= T495;
    end
  end
endmodule

module RREncode_9(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_10(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_11(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module adder(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire[7:0] T47;
  wire[7:0] T48;
  wire T49;
  wire T50;
  wire T51;
  wire T52;
  wire[1:0] T53;
  wire sThreadEncoder_io_chosen;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  wire[7:0] T59;
  wire[7:0] T60;
  wire[7:0] T61;
  wire[7:0] T62;
  wire[7:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T68;
  reg[7:0] GS_step1__State__rviReg;
  wire T69;
  wire T70;
  wire[7:0] T71;
  wire T72;
  wire[7:0] T73;
  wire[7:0] T74;
  reg[7:0] GS_step2__State__rviReg;
  wire T75;
  wire T76;
  wire[7:0] T77;
  wire T78;
  wire[7:0] T79;
  wire[7:0] T80;
  reg[7:0] GS_step3__State__rviReg;
  wire T81;
  wire T82;
  wire[7:0] T83;
  wire T84;
  wire[7:0] T85;
  wire[7:0] T86;
  wire T87;
  wire T88;
  wire T89;
  wire T90;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T91;
  wire T92;
  wire T93;
  wire T94;
  wire T95;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T87 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T50 || T43;
  assign T43 = T44 && T2;
  assign T44 = T45 && io_out_ready;
  assign T45 = T49 && T46;
  assign T46 = T47 == 8'hff/* 255*/;
  assign T47 = State_0 & T48;
  assign T48 = {4'h8/* 8*/{T2}};
  assign T49 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T50 = T57 && T51;
  assign T51 = T52;
  assign T52 = T53[1'h0/* 0*/:1'h0/* 0*/];
  assign T53 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T54 = T56 && T55;
  assign T55 = State_0 == 8'h0/* 0*/;
  assign T56 = subStateTh_0 == 1'h0/* 0*/;
  assign T57 = T58 && io_in_valid;
  assign T58 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T59 = T14 ? 8'hff/* 255*/ : T60;
  assign T60 = T25 ? GS_step3__State__rviReg : T61;
  assign T61 = T31 ? GS_step2__State__rviReg : T62;
  assign T62 = T37 ? GS_step1__State__rviReg : T63;
  assign T63 = T43 ? T66 : T64;
  assign T64 = T50 ? T65 : State_0;
  assign T65 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T66 = EmitReturnState_0 & T67;
  assign T67 = {4'h8/* 8*/{T2}};
  assign T68 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T69 = T72 && T70;
  assign T70 = T47 == T71;
  assign T71 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T72 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T73 = T69 ? T74 : GS_step1__State__rviReg;
  assign T74 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T75 = T78 && T76;
  assign T76 = T47 == T77;
  assign T77 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T78 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T79 = T75 ? T80 : GS_step2__State__rviReg;
  assign T80 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T81 = T84 && T82;
  assign T82 = T47 == T83;
  assign T83 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T84 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T85 = T81 ? T86 : GS_step3__State__rviReg;
  assign T86 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T87 = T89 && T88;
  assign T88 = State_0 != 8'h0/* 0*/;
  assign T89 = AllOffloadsReady && T90;
  assign T90 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T91 = T50 ? io_in_tag : inputTag_0;
  assign io_out_valid = T92;
  assign T92 = T94 && T93;
  assign T93 = T47 == 8'hff/* 255*/;
  assign T94 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T95;
  assign T95 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_9 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_10 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_11 sThreadEncoder(
       .io_valid_0( T54 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T59;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T68;
    end
    if(T69) begin
      GS_step1__State__rviReg <= T73;
    end
    if(T75) begin
      GS_step2__State__rviReg <= T79;
    end
    if(T81) begin
      GS_step3__State__rviReg <= T85;
    end
    if(T50) begin
      inputTag_0 <= T91;
    end
  end
endmodule

module gOffloadedComponent(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_sub2_req_ready,
    output mainOff_sub2_req_valid,
    output[63:0] mainOff_sub2_req_bits_in1,
    output[63:0] mainOff_sub2_req_bits_in2,
    output[9:0] mainOff_sub2_req_tag,
    output mainOff_sub2_rep_ready,
    input  mainOff_sub2_rep_valid,
    input [63:0] mainOff_sub2_rep_bits_out,
    input [9:0] mainOff_sub2_rep_tag,
    input  mainOff_sub3_req_ready,
    output mainOff_sub3_req_valid,
    output[63:0] mainOff_sub3_req_bits_in1,
    output[63:0] mainOff_sub3_req_bits_in2,
    output[9:0] mainOff_sub3_req_tag,
    output mainOff_sub3_rep_ready,
    input  mainOff_sub3_rep_valid,
    input [63:0] mainOff_sub3_rep_bits_out,
    input [9:0] mainOff_sub3_rep_tag,
    input  mainOff_add1_req_ready,
    output mainOff_add1_req_valid,
    output[63:0] mainOff_add1_req_bits_in1,
    output[63:0] mainOff_add1_req_bits_in2,
    output[9:0] mainOff_add1_req_tag,
    output mainOff_add1_rep_ready,
    input  mainOff_add1_rep_valid,
    input [63:0] mainOff_add1_rep_bits_out,
    input [9:0] mainOff_add1_rep_tag,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_mul1_req_ready,
    output mainOff_mul1_req_valid,
    output[63:0] mainOff_mul1_req_bits_in1,
    output[63:0] mainOff_mul1_req_bits_in2,
    output[9:0] mainOff_mul1_req_tag,
    output mainOff_mul1_rep_ready,
    input  mainOff_mul1_rep_valid,
    input [63:0] mainOff_mul1_rep_bits_out,
    input [9:0] mainOff_mul1_rep_tag,
    input  mainOff_mul2_req_ready,
    output mainOff_mul2_req_valid,
    output[63:0] mainOff_mul2_req_bits_in1,
    output[63:0] mainOff_mul2_req_bits_in2,
    output[9:0] mainOff_mul2_req_tag,
    output mainOff_mul2_rep_ready,
    input  mainOff_mul2_rep_valid,
    input [63:0] mainOff_mul2_rep_bits_out,
    input [9:0] mainOff_mul2_rep_tag,
    input  mainOff_mul3_req_ready,
    output mainOff_mul3_req_valid,
    output[63:0] mainOff_mul3_req_bits_in1,
    output[63:0] mainOff_mul3_req_bits_in2,
    output[9:0] mainOff_mul3_req_tag,
    output mainOff_mul3_rep_ready,
    input  mainOff_mul3_rep_valid,
    input [63:0] mainOff_mul3_rep_bits_out,
    input [9:0] mainOff_mul3_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire mainComp_mainOff_mul3_rep_ready;
  wire mainComp_mainOff_mul3_req_valid;
  wire[9:0] mainComp_mainOff_mul3_req_tag;
  wire mainComp_mainOff_mul2_rep_ready;
  wire mainComp_mainOff_mul2_req_valid;
  wire[9:0] mainComp_mainOff_mul2_req_tag;
  wire mainComp_mainOff_mul1_rep_ready;
  wire mainComp_mainOff_mul1_req_valid;
  wire[9:0] mainComp_mainOff_mul1_req_tag;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire mainComp_mainOff_add1_rep_ready;
  wire mainComp_mainOff_add1_req_valid;
  wire[9:0] mainComp_mainOff_add1_req_tag;
  wire mainComp_mainOff_sub3_rep_ready;
  wire mainComp_mainOff_sub3_req_valid;
  wire[9:0] mainComp_mainOff_sub3_req_tag;
  wire mainComp_mainOff_sub2_rep_ready;
  wire mainComp_mainOff_sub2_req_valid;
  wire[9:0] mainComp_mainOff_sub2_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_sub1_rep_ready;
  wire mainComp_mainOff_sub1_req_valid;
  wire[9:0] mainComp_mainOff_sub1_req_tag;
  wire offComp_io_out_valid;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign mainOff_mul3_rep_ready = mainComp_mainOff_mul3_rep_ready;
  assign mainOff_mul3_req_valid = mainComp_mainOff_mul3_req_valid;
  assign mainOff_mul3_req_tag = mainComp_mainOff_mul3_req_tag;
  assign mainOff_mul2_rep_ready = mainComp_mainOff_mul2_rep_ready;
  assign mainOff_mul2_req_valid = mainComp_mainOff_mul2_req_valid;
  assign mainOff_mul2_req_tag = mainComp_mainOff_mul2_req_tag;
  assign mainOff_mul1_rep_ready = mainComp_mainOff_mul1_rep_ready;
  assign mainOff_mul1_req_valid = mainComp_mainOff_mul1_req_valid;
  assign mainOff_mul1_req_tag = mainComp_mainOff_mul1_req_tag;
  assign mainOff_add2_rep_ready = mainComp_mainOff_add2_rep_ready;
  assign mainOff_add2_req_valid = mainComp_mainOff_add2_req_valid;
  assign mainOff_add2_req_tag = mainComp_mainOff_add2_req_tag;
  assign mainOff_add1_rep_ready = mainComp_mainOff_add1_rep_ready;
  assign mainOff_add1_req_valid = mainComp_mainOff_add1_req_valid;
  assign mainOff_add1_req_tag = mainComp_mainOff_add1_req_tag;
  assign mainOff_sub3_rep_ready = mainComp_mainOff_sub3_rep_ready;
  assign mainOff_sub3_req_valid = mainComp_mainOff_sub3_req_valid;
  assign mainOff_sub3_req_tag = mainComp_mainOff_sub3_req_tag;
  assign mainOff_sub2_rep_ready = mainComp_mainOff_sub2_rep_ready;
  assign mainOff_sub2_req_valid = mainComp_mainOff_sub2_req_valid;
  assign mainOff_sub2_req_tag = mainComp_mainOff_sub2_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  distanceFU mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_sub1_req_ready( offComp_io_in_ready ),
       .mainOff_sub1_req_valid( mainComp_mainOff_sub1_req_valid ),
       .mainOff_sub1_req_bits_in1(  ),
       .mainOff_sub1_req_bits_in2(  ),
       .mainOff_sub1_req_tag( mainComp_mainOff_sub1_req_tag ),
       .mainOff_sub1_rep_ready( mainComp_mainOff_sub1_rep_ready ),
       .mainOff_sub1_rep_valid( offComp_io_out_valid ),
       .mainOff_sub1_rep_bits_out(  ),
       .mainOff_sub1_rep_tag( offComp_io_out_tag ),
       .mainOff_sub2_req_ready( mainOff_sub2_req_ready ),
       .mainOff_sub2_req_valid( mainComp_mainOff_sub2_req_valid ),
       .mainOff_sub2_req_bits_in1(  ),
       .mainOff_sub2_req_bits_in2(  ),
       .mainOff_sub2_req_tag( mainComp_mainOff_sub2_req_tag ),
       .mainOff_sub2_rep_ready( mainComp_mainOff_sub2_rep_ready ),
       .mainOff_sub2_rep_valid( mainOff_sub2_rep_valid ),
       .mainOff_sub2_rep_bits_out(  ),
       .mainOff_sub2_rep_tag( mainOff_sub2_rep_tag ),
       .mainOff_sub3_req_ready( mainOff_sub3_req_ready ),
       .mainOff_sub3_req_valid( mainComp_mainOff_sub3_req_valid ),
       .mainOff_sub3_req_bits_in1(  ),
       .mainOff_sub3_req_bits_in2(  ),
       .mainOff_sub3_req_tag( mainComp_mainOff_sub3_req_tag ),
       .mainOff_sub3_rep_ready( mainComp_mainOff_sub3_rep_ready ),
       .mainOff_sub3_rep_valid( mainOff_sub3_rep_valid ),
       .mainOff_sub3_rep_bits_out(  ),
       .mainOff_sub3_rep_tag( mainOff_sub3_rep_tag ),
       .mainOff_add1_req_ready( mainOff_add1_req_ready ),
       .mainOff_add1_req_valid( mainComp_mainOff_add1_req_valid ),
       .mainOff_add1_req_bits_in1(  ),
       .mainOff_add1_req_bits_in2(  ),
       .mainOff_add1_req_tag( mainComp_mainOff_add1_req_tag ),
       .mainOff_add1_rep_ready( mainComp_mainOff_add1_rep_ready ),
       .mainOff_add1_rep_valid( mainOff_add1_rep_valid ),
       .mainOff_add1_rep_bits_out(  ),
       .mainOff_add1_rep_tag( mainOff_add1_rep_tag ),
       .mainOff_add2_req_ready( mainOff_add2_req_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( mainOff_add2_rep_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( mainOff_add2_rep_tag ),
       .mainOff_mul1_req_ready( mainOff_mul1_req_ready ),
       .mainOff_mul1_req_valid( mainComp_mainOff_mul1_req_valid ),
       .mainOff_mul1_req_bits_in1(  ),
       .mainOff_mul1_req_bits_in2(  ),
       .mainOff_mul1_req_tag( mainComp_mainOff_mul1_req_tag ),
       .mainOff_mul1_rep_ready( mainComp_mainOff_mul1_rep_ready ),
       .mainOff_mul1_rep_valid( mainOff_mul1_rep_valid ),
       .mainOff_mul1_rep_bits_out(  ),
       .mainOff_mul1_rep_tag( mainOff_mul1_rep_tag ),
       .mainOff_mul2_req_ready( mainOff_mul2_req_ready ),
       .mainOff_mul2_req_valid( mainComp_mainOff_mul2_req_valid ),
       .mainOff_mul2_req_bits_in1(  ),
       .mainOff_mul2_req_bits_in2(  ),
       .mainOff_mul2_req_tag( mainComp_mainOff_mul2_req_tag ),
       .mainOff_mul2_rep_ready( mainComp_mainOff_mul2_rep_ready ),
       .mainOff_mul2_rep_valid( mainOff_mul2_rep_valid ),
       .mainOff_mul2_rep_bits_out(  ),
       .mainOff_mul2_rep_tag( mainOff_mul2_rep_tag ),
       .mainOff_mul3_req_ready( mainOff_mul3_req_ready ),
       .mainOff_mul3_req_valid( mainComp_mainOff_mul3_req_valid ),
       .mainOff_mul3_req_bits_in1(  ),
       .mainOff_mul3_req_bits_in2(  ),
       .mainOff_mul3_req_tag( mainComp_mainOff_mul3_req_tag ),
       .mainOff_mul3_rep_ready( mainComp_mainOff_mul3_rep_ready ),
       .mainOff_mul3_rep_valid( mainOff_mul3_rep_valid ),
       .mainOff_mul3_rep_bits_out(  ),
       .mainOff_mul3_rep_tag( mainOff_mul3_rep_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  adder offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_sub1_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_sub1_req_tag ),
       .io_out_ready( mainComp_mainOff_sub1_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_12(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_13(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_14(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module adder_1(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire[7:0] T47;
  wire[7:0] T48;
  wire T49;
  wire T50;
  wire T51;
  wire T52;
  wire[1:0] T53;
  wire sThreadEncoder_io_chosen;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  wire[7:0] T59;
  wire[7:0] T60;
  wire[7:0] T61;
  wire[7:0] T62;
  wire[7:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T68;
  reg[7:0] GS_step1__State__rviReg;
  wire T69;
  wire T70;
  wire[7:0] T71;
  wire T72;
  wire[7:0] T73;
  wire[7:0] T74;
  reg[7:0] GS_step2__State__rviReg;
  wire T75;
  wire T76;
  wire[7:0] T77;
  wire T78;
  wire[7:0] T79;
  wire[7:0] T80;
  reg[7:0] GS_step3__State__rviReg;
  wire T81;
  wire T82;
  wire[7:0] T83;
  wire T84;
  wire[7:0] T85;
  wire[7:0] T86;
  wire T87;
  wire T88;
  wire T89;
  wire T90;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T91;
  wire T92;
  wire T93;
  wire T94;
  wire T95;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T87 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T50 || T43;
  assign T43 = T44 && T2;
  assign T44 = T45 && io_out_ready;
  assign T45 = T49 && T46;
  assign T46 = T47 == 8'hff/* 255*/;
  assign T47 = State_0 & T48;
  assign T48 = {4'h8/* 8*/{T2}};
  assign T49 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T50 = T57 && T51;
  assign T51 = T52;
  assign T52 = T53[1'h0/* 0*/:1'h0/* 0*/];
  assign T53 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T54 = T56 && T55;
  assign T55 = State_0 == 8'h0/* 0*/;
  assign T56 = subStateTh_0 == 1'h0/* 0*/;
  assign T57 = T58 && io_in_valid;
  assign T58 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T59 = T14 ? 8'hff/* 255*/ : T60;
  assign T60 = T25 ? GS_step3__State__rviReg : T61;
  assign T61 = T31 ? GS_step2__State__rviReg : T62;
  assign T62 = T37 ? GS_step1__State__rviReg : T63;
  assign T63 = T43 ? T66 : T64;
  assign T64 = T50 ? T65 : State_0;
  assign T65 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T66 = EmitReturnState_0 & T67;
  assign T67 = {4'h8/* 8*/{T2}};
  assign T68 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T69 = T72 && T70;
  assign T70 = T47 == T71;
  assign T71 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T72 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T73 = T69 ? T74 : GS_step1__State__rviReg;
  assign T74 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T75 = T78 && T76;
  assign T76 = T47 == T77;
  assign T77 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T78 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T79 = T75 ? T80 : GS_step2__State__rviReg;
  assign T80 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T81 = T84 && T82;
  assign T82 = T47 == T83;
  assign T83 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T84 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T85 = T81 ? T86 : GS_step3__State__rviReg;
  assign T86 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T87 = T89 && T88;
  assign T88 = State_0 != 8'h0/* 0*/;
  assign T89 = AllOffloadsReady && T90;
  assign T90 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T91 = T50 ? io_in_tag : inputTag_0;
  assign io_out_valid = T92;
  assign T92 = T94 && T93;
  assign T93 = T47 == 8'hff/* 255*/;
  assign T94 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T95;
  assign T95 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_12 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_13 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_14 sThreadEncoder(
       .io_valid_0( T54 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T59;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T68;
    end
    if(T69) begin
      GS_step1__State__rviReg <= T73;
    end
    if(T75) begin
      GS_step2__State__rviReg <= T79;
    end
    if(T81) begin
      GS_step3__State__rviReg <= T85;
    end
    if(T50) begin
      inputTag_0 <= T91;
    end
  end
endmodule

module gOffloadedComponent_1(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_sub3_req_ready,
    output mainOff_sub3_req_valid,
    output[63:0] mainOff_sub3_req_bits_in1,
    output[63:0] mainOff_sub3_req_bits_in2,
    output[9:0] mainOff_sub3_req_tag,
    output mainOff_sub3_rep_ready,
    input  mainOff_sub3_rep_valid,
    input [63:0] mainOff_sub3_rep_bits_out,
    input [9:0] mainOff_sub3_rep_tag,
    input  mainOff_add1_req_ready,
    output mainOff_add1_req_valid,
    output[63:0] mainOff_add1_req_bits_in1,
    output[63:0] mainOff_add1_req_bits_in2,
    output[9:0] mainOff_add1_req_tag,
    output mainOff_add1_rep_ready,
    input  mainOff_add1_rep_valid,
    input [63:0] mainOff_add1_rep_bits_out,
    input [9:0] mainOff_add1_rep_tag,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_mul1_req_ready,
    output mainOff_mul1_req_valid,
    output[63:0] mainOff_mul1_req_bits_in1,
    output[63:0] mainOff_mul1_req_bits_in2,
    output[9:0] mainOff_mul1_req_tag,
    output mainOff_mul1_rep_ready,
    input  mainOff_mul1_rep_valid,
    input [63:0] mainOff_mul1_rep_bits_out,
    input [9:0] mainOff_mul1_rep_tag,
    input  mainOff_mul2_req_ready,
    output mainOff_mul2_req_valid,
    output[63:0] mainOff_mul2_req_bits_in1,
    output[63:0] mainOff_mul2_req_bits_in2,
    output[9:0] mainOff_mul2_req_tag,
    output mainOff_mul2_rep_ready,
    input  mainOff_mul2_rep_valid,
    input [63:0] mainOff_mul2_rep_bits_out,
    input [9:0] mainOff_mul2_rep_tag,
    input  mainOff_mul3_req_ready,
    output mainOff_mul3_req_valid,
    output[63:0] mainOff_mul3_req_bits_in1,
    output[63:0] mainOff_mul3_req_bits_in2,
    output[9:0] mainOff_mul3_req_tag,
    output mainOff_mul3_rep_ready,
    input  mainOff_mul3_rep_valid,
    input [63:0] mainOff_mul3_rep_bits_out,
    input [9:0] mainOff_mul3_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire mainComp_mainOff_mul3_rep_ready;
  wire mainComp_mainOff_mul3_req_valid;
  wire[9:0] mainComp_mainOff_mul3_req_tag;
  wire mainComp_mainOff_mul2_rep_ready;
  wire mainComp_mainOff_mul2_req_valid;
  wire[9:0] mainComp_mainOff_mul2_req_tag;
  wire mainComp_mainOff_mul1_rep_ready;
  wire mainComp_mainOff_mul1_req_valid;
  wire[9:0] mainComp_mainOff_mul1_req_tag;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire mainComp_mainOff_add1_rep_ready;
  wire mainComp_mainOff_add1_req_valid;
  wire[9:0] mainComp_mainOff_add1_req_tag;
  wire mainComp_mainOff_sub3_rep_ready;
  wire mainComp_mainOff_sub3_req_valid;
  wire[9:0] mainComp_mainOff_sub3_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_sub2_rep_ready;
  wire mainComp_mainOff_sub2_req_valid;
  wire[9:0] mainComp_mainOff_sub2_req_tag;
  wire offComp_io_out_valid;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign mainOff_mul3_rep_ready = mainComp_mainOff_mul3_rep_ready;
  assign mainOff_mul3_req_valid = mainComp_mainOff_mul3_req_valid;
  assign mainOff_mul3_req_tag = mainComp_mainOff_mul3_req_tag;
  assign mainOff_mul2_rep_ready = mainComp_mainOff_mul2_rep_ready;
  assign mainOff_mul2_req_valid = mainComp_mainOff_mul2_req_valid;
  assign mainOff_mul2_req_tag = mainComp_mainOff_mul2_req_tag;
  assign mainOff_mul1_rep_ready = mainComp_mainOff_mul1_rep_ready;
  assign mainOff_mul1_req_valid = mainComp_mainOff_mul1_req_valid;
  assign mainOff_mul1_req_tag = mainComp_mainOff_mul1_req_tag;
  assign mainOff_add2_rep_ready = mainComp_mainOff_add2_rep_ready;
  assign mainOff_add2_req_valid = mainComp_mainOff_add2_req_valid;
  assign mainOff_add2_req_tag = mainComp_mainOff_add2_req_tag;
  assign mainOff_add1_rep_ready = mainComp_mainOff_add1_rep_ready;
  assign mainOff_add1_req_valid = mainComp_mainOff_add1_req_valid;
  assign mainOff_add1_req_tag = mainComp_mainOff_add1_req_tag;
  assign mainOff_sub3_rep_ready = mainComp_mainOff_sub3_rep_ready;
  assign mainOff_sub3_req_valid = mainComp_mainOff_sub3_req_valid;
  assign mainOff_sub3_req_tag = mainComp_mainOff_sub3_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_sub2_req_ready( offComp_io_in_ready ),
       .mainOff_sub2_req_valid( mainComp_mainOff_sub2_req_valid ),
       .mainOff_sub2_req_bits_in1(  ),
       .mainOff_sub2_req_bits_in2(  ),
       .mainOff_sub2_req_tag( mainComp_mainOff_sub2_req_tag ),
       .mainOff_sub2_rep_ready( mainComp_mainOff_sub2_rep_ready ),
       .mainOff_sub2_rep_valid( offComp_io_out_valid ),
       .mainOff_sub2_rep_bits_out(  ),
       .mainOff_sub2_rep_tag( offComp_io_out_tag ),
       .mainOff_sub3_req_ready( mainOff_sub3_req_ready ),
       .mainOff_sub3_req_valid( mainComp_mainOff_sub3_req_valid ),
       .mainOff_sub3_req_bits_in1(  ),
       .mainOff_sub3_req_bits_in2(  ),
       .mainOff_sub3_req_tag( mainComp_mainOff_sub3_req_tag ),
       .mainOff_sub3_rep_ready( mainComp_mainOff_sub3_rep_ready ),
       .mainOff_sub3_rep_valid( mainOff_sub3_rep_valid ),
       .mainOff_sub3_rep_bits_out(  ),
       .mainOff_sub3_rep_tag( mainOff_sub3_rep_tag ),
       .mainOff_add1_req_ready( mainOff_add1_req_ready ),
       .mainOff_add1_req_valid( mainComp_mainOff_add1_req_valid ),
       .mainOff_add1_req_bits_in1(  ),
       .mainOff_add1_req_bits_in2(  ),
       .mainOff_add1_req_tag( mainComp_mainOff_add1_req_tag ),
       .mainOff_add1_rep_ready( mainComp_mainOff_add1_rep_ready ),
       .mainOff_add1_rep_valid( mainOff_add1_rep_valid ),
       .mainOff_add1_rep_bits_out(  ),
       .mainOff_add1_rep_tag( mainOff_add1_rep_tag ),
       .mainOff_add2_req_ready( mainOff_add2_req_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( mainOff_add2_rep_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( mainOff_add2_rep_tag ),
       .mainOff_mul1_req_ready( mainOff_mul1_req_ready ),
       .mainOff_mul1_req_valid( mainComp_mainOff_mul1_req_valid ),
       .mainOff_mul1_req_bits_in1(  ),
       .mainOff_mul1_req_bits_in2(  ),
       .mainOff_mul1_req_tag( mainComp_mainOff_mul1_req_tag ),
       .mainOff_mul1_rep_ready( mainComp_mainOff_mul1_rep_ready ),
       .mainOff_mul1_rep_valid( mainOff_mul1_rep_valid ),
       .mainOff_mul1_rep_bits_out(  ),
       .mainOff_mul1_rep_tag( mainOff_mul1_rep_tag ),
       .mainOff_mul2_req_ready( mainOff_mul2_req_ready ),
       .mainOff_mul2_req_valid( mainComp_mainOff_mul2_req_valid ),
       .mainOff_mul2_req_bits_in1(  ),
       .mainOff_mul2_req_bits_in2(  ),
       .mainOff_mul2_req_tag( mainComp_mainOff_mul2_req_tag ),
       .mainOff_mul2_rep_ready( mainComp_mainOff_mul2_rep_ready ),
       .mainOff_mul2_rep_valid( mainOff_mul2_rep_valid ),
       .mainOff_mul2_rep_bits_out(  ),
       .mainOff_mul2_rep_tag( mainOff_mul2_rep_tag ),
       .mainOff_mul3_req_ready( mainOff_mul3_req_ready ),
       .mainOff_mul3_req_valid( mainComp_mainOff_mul3_req_valid ),
       .mainOff_mul3_req_bits_in1(  ),
       .mainOff_mul3_req_bits_in2(  ),
       .mainOff_mul3_req_tag( mainComp_mainOff_mul3_req_tag ),
       .mainOff_mul3_rep_ready( mainComp_mainOff_mul3_rep_ready ),
       .mainOff_mul3_rep_valid( mainOff_mul3_rep_valid ),
       .mainOff_mul3_rep_bits_out(  ),
       .mainOff_mul3_rep_tag( mainOff_mul3_rep_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  adder_1 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_sub2_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_sub2_req_tag ),
       .io_out_ready( mainComp_mainOff_sub2_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_15(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_16(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_17(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module adder_2(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire[7:0] T47;
  wire[7:0] T48;
  wire T49;
  wire T50;
  wire T51;
  wire T52;
  wire[1:0] T53;
  wire sThreadEncoder_io_chosen;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  wire[7:0] T59;
  wire[7:0] T60;
  wire[7:0] T61;
  wire[7:0] T62;
  wire[7:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T68;
  reg[7:0] GS_step1__State__rviReg;
  wire T69;
  wire T70;
  wire[7:0] T71;
  wire T72;
  wire[7:0] T73;
  wire[7:0] T74;
  reg[7:0] GS_step2__State__rviReg;
  wire T75;
  wire T76;
  wire[7:0] T77;
  wire T78;
  wire[7:0] T79;
  wire[7:0] T80;
  reg[7:0] GS_step3__State__rviReg;
  wire T81;
  wire T82;
  wire[7:0] T83;
  wire T84;
  wire[7:0] T85;
  wire[7:0] T86;
  wire T87;
  wire T88;
  wire T89;
  wire T90;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T91;
  wire T92;
  wire T93;
  wire T94;
  wire T95;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T87 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T50 || T43;
  assign T43 = T44 && T2;
  assign T44 = T45 && io_out_ready;
  assign T45 = T49 && T46;
  assign T46 = T47 == 8'hff/* 255*/;
  assign T47 = State_0 & T48;
  assign T48 = {4'h8/* 8*/{T2}};
  assign T49 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T50 = T57 && T51;
  assign T51 = T52;
  assign T52 = T53[1'h0/* 0*/:1'h0/* 0*/];
  assign T53 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T54 = T56 && T55;
  assign T55 = State_0 == 8'h0/* 0*/;
  assign T56 = subStateTh_0 == 1'h0/* 0*/;
  assign T57 = T58 && io_in_valid;
  assign T58 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T59 = T14 ? 8'hff/* 255*/ : T60;
  assign T60 = T25 ? GS_step3__State__rviReg : T61;
  assign T61 = T31 ? GS_step2__State__rviReg : T62;
  assign T62 = T37 ? GS_step1__State__rviReg : T63;
  assign T63 = T43 ? T66 : T64;
  assign T64 = T50 ? T65 : State_0;
  assign T65 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T66 = EmitReturnState_0 & T67;
  assign T67 = {4'h8/* 8*/{T2}};
  assign T68 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T69 = T72 && T70;
  assign T70 = T47 == T71;
  assign T71 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T72 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T73 = T69 ? T74 : GS_step1__State__rviReg;
  assign T74 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T75 = T78 && T76;
  assign T76 = T47 == T77;
  assign T77 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T78 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T79 = T75 ? T80 : GS_step2__State__rviReg;
  assign T80 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T81 = T84 && T82;
  assign T82 = T47 == T83;
  assign T83 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T84 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T85 = T81 ? T86 : GS_step3__State__rviReg;
  assign T86 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T87 = T89 && T88;
  assign T88 = State_0 != 8'h0/* 0*/;
  assign T89 = AllOffloadsReady && T90;
  assign T90 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T91 = T50 ? io_in_tag : inputTag_0;
  assign io_out_valid = T92;
  assign T92 = T94 && T93;
  assign T93 = T47 == 8'hff/* 255*/;
  assign T94 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T95;
  assign T95 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_15 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_16 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_17 sThreadEncoder(
       .io_valid_0( T54 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T59;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T68;
    end
    if(T69) begin
      GS_step1__State__rviReg <= T73;
    end
    if(T75) begin
      GS_step2__State__rviReg <= T79;
    end
    if(T81) begin
      GS_step3__State__rviReg <= T85;
    end
    if(T50) begin
      inputTag_0 <= T91;
    end
  end
endmodule

module gOffloadedComponent_2(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_add1_req_ready,
    output mainOff_add1_req_valid,
    output[63:0] mainOff_add1_req_bits_in1,
    output[63:0] mainOff_add1_req_bits_in2,
    output[9:0] mainOff_add1_req_tag,
    output mainOff_add1_rep_ready,
    input  mainOff_add1_rep_valid,
    input [63:0] mainOff_add1_rep_bits_out,
    input [9:0] mainOff_add1_rep_tag,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_mul1_req_ready,
    output mainOff_mul1_req_valid,
    output[63:0] mainOff_mul1_req_bits_in1,
    output[63:0] mainOff_mul1_req_bits_in2,
    output[9:0] mainOff_mul1_req_tag,
    output mainOff_mul1_rep_ready,
    input  mainOff_mul1_rep_valid,
    input [63:0] mainOff_mul1_rep_bits_out,
    input [9:0] mainOff_mul1_rep_tag,
    input  mainOff_mul2_req_ready,
    output mainOff_mul2_req_valid,
    output[63:0] mainOff_mul2_req_bits_in1,
    output[63:0] mainOff_mul2_req_bits_in2,
    output[9:0] mainOff_mul2_req_tag,
    output mainOff_mul2_rep_ready,
    input  mainOff_mul2_rep_valid,
    input [63:0] mainOff_mul2_rep_bits_out,
    input [9:0] mainOff_mul2_rep_tag,
    input  mainOff_mul3_req_ready,
    output mainOff_mul3_req_valid,
    output[63:0] mainOff_mul3_req_bits_in1,
    output[63:0] mainOff_mul3_req_bits_in2,
    output[9:0] mainOff_mul3_req_tag,
    output mainOff_mul3_rep_ready,
    input  mainOff_mul3_rep_valid,
    input [63:0] mainOff_mul3_rep_bits_out,
    input [9:0] mainOff_mul3_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire mainComp_mainOff_mul3_rep_ready;
  wire mainComp_mainOff_mul3_req_valid;
  wire[9:0] mainComp_mainOff_mul3_req_tag;
  wire mainComp_mainOff_mul2_rep_ready;
  wire mainComp_mainOff_mul2_req_valid;
  wire[9:0] mainComp_mainOff_mul2_req_tag;
  wire mainComp_mainOff_mul1_rep_ready;
  wire mainComp_mainOff_mul1_req_valid;
  wire[9:0] mainComp_mainOff_mul1_req_tag;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire mainComp_mainOff_add1_rep_ready;
  wire mainComp_mainOff_add1_req_valid;
  wire[9:0] mainComp_mainOff_add1_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_sub3_rep_ready;
  wire mainComp_mainOff_sub3_req_valid;
  wire[9:0] mainComp_mainOff_sub3_req_tag;
  wire offComp_io_out_valid;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign mainOff_mul3_rep_ready = mainComp_mainOff_mul3_rep_ready;
  assign mainOff_mul3_req_valid = mainComp_mainOff_mul3_req_valid;
  assign mainOff_mul3_req_tag = mainComp_mainOff_mul3_req_tag;
  assign mainOff_mul2_rep_ready = mainComp_mainOff_mul2_rep_ready;
  assign mainOff_mul2_req_valid = mainComp_mainOff_mul2_req_valid;
  assign mainOff_mul2_req_tag = mainComp_mainOff_mul2_req_tag;
  assign mainOff_mul1_rep_ready = mainComp_mainOff_mul1_rep_ready;
  assign mainOff_mul1_req_valid = mainComp_mainOff_mul1_req_valid;
  assign mainOff_mul1_req_tag = mainComp_mainOff_mul1_req_tag;
  assign mainOff_add2_rep_ready = mainComp_mainOff_add2_rep_ready;
  assign mainOff_add2_req_valid = mainComp_mainOff_add2_req_valid;
  assign mainOff_add2_req_tag = mainComp_mainOff_add2_req_tag;
  assign mainOff_add1_rep_ready = mainComp_mainOff_add1_rep_ready;
  assign mainOff_add1_req_valid = mainComp_mainOff_add1_req_valid;
  assign mainOff_add1_req_tag = mainComp_mainOff_add1_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent_1 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_sub3_req_ready( offComp_io_in_ready ),
       .mainOff_sub3_req_valid( mainComp_mainOff_sub3_req_valid ),
       .mainOff_sub3_req_bits_in1(  ),
       .mainOff_sub3_req_bits_in2(  ),
       .mainOff_sub3_req_tag( mainComp_mainOff_sub3_req_tag ),
       .mainOff_sub3_rep_ready( mainComp_mainOff_sub3_rep_ready ),
       .mainOff_sub3_rep_valid( offComp_io_out_valid ),
       .mainOff_sub3_rep_bits_out(  ),
       .mainOff_sub3_rep_tag( offComp_io_out_tag ),
       .mainOff_add1_req_ready( mainOff_add1_req_ready ),
       .mainOff_add1_req_valid( mainComp_mainOff_add1_req_valid ),
       .mainOff_add1_req_bits_in1(  ),
       .mainOff_add1_req_bits_in2(  ),
       .mainOff_add1_req_tag( mainComp_mainOff_add1_req_tag ),
       .mainOff_add1_rep_ready( mainComp_mainOff_add1_rep_ready ),
       .mainOff_add1_rep_valid( mainOff_add1_rep_valid ),
       .mainOff_add1_rep_bits_out(  ),
       .mainOff_add1_rep_tag( mainOff_add1_rep_tag ),
       .mainOff_add2_req_ready( mainOff_add2_req_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( mainOff_add2_rep_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( mainOff_add2_rep_tag ),
       .mainOff_mul1_req_ready( mainOff_mul1_req_ready ),
       .mainOff_mul1_req_valid( mainComp_mainOff_mul1_req_valid ),
       .mainOff_mul1_req_bits_in1(  ),
       .mainOff_mul1_req_bits_in2(  ),
       .mainOff_mul1_req_tag( mainComp_mainOff_mul1_req_tag ),
       .mainOff_mul1_rep_ready( mainComp_mainOff_mul1_rep_ready ),
       .mainOff_mul1_rep_valid( mainOff_mul1_rep_valid ),
       .mainOff_mul1_rep_bits_out(  ),
       .mainOff_mul1_rep_tag( mainOff_mul1_rep_tag ),
       .mainOff_mul2_req_ready( mainOff_mul2_req_ready ),
       .mainOff_mul2_req_valid( mainComp_mainOff_mul2_req_valid ),
       .mainOff_mul2_req_bits_in1(  ),
       .mainOff_mul2_req_bits_in2(  ),
       .mainOff_mul2_req_tag( mainComp_mainOff_mul2_req_tag ),
       .mainOff_mul2_rep_ready( mainComp_mainOff_mul2_rep_ready ),
       .mainOff_mul2_rep_valid( mainOff_mul2_rep_valid ),
       .mainOff_mul2_rep_bits_out(  ),
       .mainOff_mul2_rep_tag( mainOff_mul2_rep_tag ),
       .mainOff_mul3_req_ready( mainOff_mul3_req_ready ),
       .mainOff_mul3_req_valid( mainComp_mainOff_mul3_req_valid ),
       .mainOff_mul3_req_bits_in1(  ),
       .mainOff_mul3_req_bits_in2(  ),
       .mainOff_mul3_req_tag( mainComp_mainOff_mul3_req_tag ),
       .mainOff_mul3_rep_ready( mainComp_mainOff_mul3_rep_ready ),
       .mainOff_mul3_rep_valid( mainOff_mul3_rep_valid ),
       .mainOff_mul3_rep_bits_out(  ),
       .mainOff_mul3_rep_tag( mainOff_mul3_rep_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  adder_2 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_sub3_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_sub3_req_tag ),
       .io_out_ready( mainComp_mainOff_sub3_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_18(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_19(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_20(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module multiplier(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire[7:0] T46;
  wire T47;
  wire T48;
  wire T49;
  wire T50;
  wire T51;
  wire[7:0] T52;
  wire T53;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire[7:0] T58;
  wire T59;
  wire T60;
  wire T61;
  wire T62;
  wire T63;
  wire[7:0] T64;
  wire T65;
  wire T66;
  wire T67;
  wire T68;
  wire T69;
  wire[7:0] T70;
  wire T71;
  wire T72;
  wire T73;
  wire T74;
  wire T75;
  wire[7:0] T76;
  wire T77;
  wire T78;
  wire T79;
  wire T80;
  wire T81;
  wire[7:0] T82;
  wire T83;
  wire T84;
  wire T85;
  wire T86;
  wire T87;
  wire[7:0] T88;
  wire T89;
  wire T90;
  wire T91;
  wire T92;
  wire T93;
  wire T94;
  wire[7:0] T95;
  wire[7:0] T96;
  wire T97;
  wire T98;
  wire T99;
  wire T100;
  wire[1:0] T101;
  wire sThreadEncoder_io_chosen;
  wire T102;
  wire T103;
  wire T104;
  wire T105;
  wire T106;
  wire[7:0] T107;
  wire[7:0] T108;
  wire[7:0] T109;
  wire[7:0] T110;
  wire[7:0] T111;
  wire[7:0] T112;
  wire[7:0] T113;
  wire[7:0] T114;
  wire[7:0] T115;
  wire[7:0] T116;
  wire[7:0] T117;
  wire[7:0] T118;
  wire[7:0] T119;
  wire[7:0] T120;
  wire[7:0] T121;
  wire[7:0] T122;
  wire[7:0] T123;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T124;
  reg[7:0] GS_step1__State__rviReg;
  wire T125;
  wire T126;
  wire[7:0] T127;
  wire T128;
  wire[7:0] T129;
  wire[7:0] T130;
  reg[7:0] GS_step2__State__rviReg;
  wire T131;
  wire T132;
  wire[7:0] T133;
  wire T134;
  wire[7:0] T135;
  wire[7:0] T136;
  reg[7:0] GS_step3__State__rviReg;
  wire T137;
  wire T138;
  wire[7:0] T139;
  wire T140;
  wire[7:0] T141;
  wire[7:0] T142;
  reg[7:0] GS_step4__State__rviReg;
  wire T143;
  wire T144;
  wire[7:0] T145;
  wire T146;
  wire[7:0] T147;
  wire[7:0] T148;
  reg[7:0] GS_step5__State__rviReg;
  wire T149;
  wire T150;
  wire[7:0] T151;
  wire T152;
  wire[7:0] T153;
  wire[7:0] T154;
  reg[7:0] GS_step6__State__rviReg;
  wire T155;
  wire T156;
  wire[7:0] T157;
  wire T158;
  wire[7:0] T159;
  wire[7:0] T160;
  reg[7:0] GS_step7__State__rviReg;
  wire T161;
  wire T162;
  wire[7:0] T163;
  wire T164;
  wire[7:0] T165;
  wire[7:0] T166;
  reg[7:0] GS_step8__State__rviReg;
  wire T167;
  wire T168;
  wire[7:0] T169;
  wire T170;
  wire[7:0] T171;
  wire[7:0] T172;
  reg[7:0] GS_step9__State__rviReg;
  wire T173;
  wire T174;
  wire[7:0] T175;
  wire T176;
  wire[7:0] T177;
  wire[7:0] T178;
  reg[7:0] GS_step10__State__rviReg;
  wire T179;
  wire T180;
  wire[7:0] T181;
  wire T182;
  wire[7:0] T183;
  wire[7:0] T184;
  reg[7:0] GS_step11__State__rviReg;
  wire T185;
  wire T186;
  wire[7:0] T187;
  wire T188;
  wire[7:0] T189;
  wire[7:0] T190;
  wire T191;
  wire T192;
  wire T193;
  wire T194;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T195;
  wire T196;
  wire T197;
  wire T198;
  wire T199;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T191 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T48 || T43;
  assign T43 = T44 && T15;
  assign T44 = T47 && T45;
  assign T45 = T21 == T46;
  assign T46 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T47 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T48 = T54 || T49;
  assign T49 = T50 && T15;
  assign T50 = T53 && T51;
  assign T51 = T21 == T52;
  assign T52 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T53 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T54 = T60 || T55;
  assign T55 = T56 && T15;
  assign T56 = T59 && T57;
  assign T57 = T21 == T58;
  assign T58 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T59 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T60 = T66 || T61;
  assign T61 = T62 && T15;
  assign T62 = T65 && T63;
  assign T63 = T21 == T64;
  assign T64 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T65 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T66 = T72 || T67;
  assign T67 = T68 && T15;
  assign T68 = T71 && T69;
  assign T69 = T21 == T70;
  assign T70 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T71 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T72 = T78 || T73;
  assign T73 = T74 && T15;
  assign T74 = T77 && T75;
  assign T75 = T21 == T76;
  assign T76 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T77 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T78 = T84 || T79;
  assign T79 = T80 && T15;
  assign T80 = T83 && T81;
  assign T81 = T21 == T82;
  assign T82 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T83 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T84 = T90 || T85;
  assign T85 = T86 && T15;
  assign T86 = T89 && T87;
  assign T87 = T21 == T88;
  assign T88 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T89 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T90 = T98 || T91;
  assign T91 = T92 && T2;
  assign T92 = T93 && io_out_ready;
  assign T93 = T97 && T94;
  assign T94 = T95 == 8'hff/* 255*/;
  assign T95 = State_0 & T96;
  assign T96 = {4'h8/* 8*/{T2}};
  assign T97 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T98 = T105 && T99;
  assign T99 = T100;
  assign T100 = T101[1'h0/* 0*/:1'h0/* 0*/];
  assign T101 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T102 = T104 && T103;
  assign T103 = State_0 == 8'h0/* 0*/;
  assign T104 = subStateTh_0 == 1'h0/* 0*/;
  assign T105 = T106 && io_in_valid;
  assign T106 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T107 = T14 ? 8'hff/* 255*/ : T108;
  assign T108 = T25 ? GS_step11__State__rviReg : T109;
  assign T109 = T31 ? GS_step10__State__rviReg : T110;
  assign T110 = T37 ? GS_step9__State__rviReg : T111;
  assign T111 = T43 ? GS_step8__State__rviReg : T112;
  assign T112 = T49 ? GS_step7__State__rviReg : T113;
  assign T113 = T55 ? GS_step6__State__rviReg : T114;
  assign T114 = T61 ? GS_step5__State__rviReg : T115;
  assign T115 = T67 ? GS_step4__State__rviReg : T116;
  assign T116 = T73 ? GS_step3__State__rviReg : T117;
  assign T117 = T79 ? GS_step2__State__rviReg : T118;
  assign T118 = T85 ? GS_step1__State__rviReg : T119;
  assign T119 = T91 ? T122 : T120;
  assign T120 = T98 ? T121 : State_0;
  assign T121 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T122 = EmitReturnState_0 & T123;
  assign T123 = {4'h8/* 8*/{T2}};
  assign T124 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T125 = T128 && T126;
  assign T126 = T95 == T127;
  assign T127 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T128 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T129 = T125 ? T130 : GS_step1__State__rviReg;
  assign T130 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T131 = T134 && T132;
  assign T132 = T95 == T133;
  assign T133 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T134 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T135 = T131 ? T136 : GS_step2__State__rviReg;
  assign T136 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T137 = T140 && T138;
  assign T138 = T95 == T139;
  assign T139 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T140 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T141 = T137 ? T142 : GS_step3__State__rviReg;
  assign T142 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T143 = T146 && T144;
  assign T144 = T95 == T145;
  assign T145 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T146 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T147 = T143 ? T148 : GS_step4__State__rviReg;
  assign T148 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T149 = T152 && T150;
  assign T150 = T95 == T151;
  assign T151 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T152 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T153 = T149 ? T154 : GS_step5__State__rviReg;
  assign T154 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T155 = T158 && T156;
  assign T156 = T95 == T157;
  assign T157 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T158 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T159 = T155 ? T160 : GS_step6__State__rviReg;
  assign T160 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T161 = T164 && T162;
  assign T162 = T95 == T163;
  assign T163 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T164 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T165 = T161 ? T166 : GS_step7__State__rviReg;
  assign T166 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T167 = T170 && T168;
  assign T168 = T95 == T169;
  assign T169 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T170 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T171 = T167 ? T172 : GS_step8__State__rviReg;
  assign T172 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T173 = T176 && T174;
  assign T174 = T95 == T175;
  assign T175 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T176 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T177 = T173 ? T178 : GS_step9__State__rviReg;
  assign T178 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T179 = T182 && T180;
  assign T180 = T95 == T181;
  assign T181 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T182 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T183 = T179 ? T184 : GS_step10__State__rviReg;
  assign T184 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T185 = T188 && T186;
  assign T186 = T95 == T187;
  assign T187 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T188 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T189 = T185 ? T190 : GS_step11__State__rviReg;
  assign T190 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T191 = T193 && T192;
  assign T192 = State_0 != 8'h0/* 0*/;
  assign T193 = AllOffloadsReady && T194;
  assign T194 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T195 = T98 ? io_in_tag : inputTag_0;
  assign io_out_valid = T196;
  assign T196 = T198 && T197;
  assign T197 = T95 == 8'hff/* 255*/;
  assign T198 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T199;
  assign T199 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_18 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_19 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_20 sThreadEncoder(
       .io_valid_0( T102 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T107;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T124;
    end
    if(T125) begin
      GS_step1__State__rviReg <= T129;
    end
    if(T131) begin
      GS_step2__State__rviReg <= T135;
    end
    if(T137) begin
      GS_step3__State__rviReg <= T141;
    end
    if(T143) begin
      GS_step4__State__rviReg <= T147;
    end
    if(T149) begin
      GS_step5__State__rviReg <= T153;
    end
    if(T155) begin
      GS_step6__State__rviReg <= T159;
    end
    if(T161) begin
      GS_step7__State__rviReg <= T165;
    end
    if(T167) begin
      GS_step8__State__rviReg <= T171;
    end
    if(T173) begin
      GS_step9__State__rviReg <= T177;
    end
    if(T179) begin
      GS_step10__State__rviReg <= T183;
    end
    if(T185) begin
      GS_step11__State__rviReg <= T189;
    end
    if(T98) begin
      inputTag_0 <= T195;
    end
  end
endmodule

module gOffloadedComponent_3(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_add1_req_ready,
    output mainOff_add1_req_valid,
    output[63:0] mainOff_add1_req_bits_in1,
    output[63:0] mainOff_add1_req_bits_in2,
    output[9:0] mainOff_add1_req_tag,
    output mainOff_add1_rep_ready,
    input  mainOff_add1_rep_valid,
    input [63:0] mainOff_add1_rep_bits_out,
    input [9:0] mainOff_add1_rep_tag,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_mul2_req_ready,
    output mainOff_mul2_req_valid,
    output[63:0] mainOff_mul2_req_bits_in1,
    output[63:0] mainOff_mul2_req_bits_in2,
    output[9:0] mainOff_mul2_req_tag,
    output mainOff_mul2_rep_ready,
    input  mainOff_mul2_rep_valid,
    input [63:0] mainOff_mul2_rep_bits_out,
    input [9:0] mainOff_mul2_rep_tag,
    input  mainOff_mul3_req_ready,
    output mainOff_mul3_req_valid,
    output[63:0] mainOff_mul3_req_bits_in1,
    output[63:0] mainOff_mul3_req_bits_in2,
    output[9:0] mainOff_mul3_req_tag,
    output mainOff_mul3_rep_ready,
    input  mainOff_mul3_rep_valid,
    input [63:0] mainOff_mul3_rep_bits_out,
    input [9:0] mainOff_mul3_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire mainComp_mainOff_mul3_rep_ready;
  wire mainComp_mainOff_mul3_req_valid;
  wire[9:0] mainComp_mainOff_mul3_req_tag;
  wire mainComp_mainOff_mul2_rep_ready;
  wire mainComp_mainOff_mul2_req_valid;
  wire[9:0] mainComp_mainOff_mul2_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_mul1_rep_ready;
  wire mainComp_mainOff_mul1_req_valid;
  wire[9:0] mainComp_mainOff_mul1_req_tag;
  wire offComp_io_out_valid;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire mainComp_mainOff_add1_rep_ready;
  wire mainComp_mainOff_add1_req_valid;
  wire[9:0] mainComp_mainOff_add1_req_tag;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign mainOff_mul3_rep_ready = mainComp_mainOff_mul3_rep_ready;
  assign mainOff_mul3_req_valid = mainComp_mainOff_mul3_req_valid;
  assign mainOff_mul3_req_tag = mainComp_mainOff_mul3_req_tag;
  assign mainOff_mul2_rep_ready = mainComp_mainOff_mul2_rep_ready;
  assign mainOff_mul2_req_valid = mainComp_mainOff_mul2_req_valid;
  assign mainOff_mul2_req_tag = mainComp_mainOff_mul2_req_tag;
  assign mainOff_add2_rep_ready = mainComp_mainOff_add2_rep_ready;
  assign mainOff_add2_req_valid = mainComp_mainOff_add2_req_valid;
  assign mainOff_add2_req_tag = mainComp_mainOff_add2_req_tag;
  assign mainOff_add1_rep_ready = mainComp_mainOff_add1_rep_ready;
  assign mainOff_add1_req_valid = mainComp_mainOff_add1_req_valid;
  assign mainOff_add1_req_tag = mainComp_mainOff_add1_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent_2 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_add1_req_ready( mainOff_add1_req_ready ),
       .mainOff_add1_req_valid( mainComp_mainOff_add1_req_valid ),
       .mainOff_add1_req_bits_in1(  ),
       .mainOff_add1_req_bits_in2(  ),
       .mainOff_add1_req_tag( mainComp_mainOff_add1_req_tag ),
       .mainOff_add1_rep_ready( mainComp_mainOff_add1_rep_ready ),
       .mainOff_add1_rep_valid( mainOff_add1_rep_valid ),
       .mainOff_add1_rep_bits_out(  ),
       .mainOff_add1_rep_tag( mainOff_add1_rep_tag ),
       .mainOff_add2_req_ready( mainOff_add2_req_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( mainOff_add2_rep_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( mainOff_add2_rep_tag ),
       .mainOff_mul1_req_ready( offComp_io_in_ready ),
       .mainOff_mul1_req_valid( mainComp_mainOff_mul1_req_valid ),
       .mainOff_mul1_req_bits_in1(  ),
       .mainOff_mul1_req_bits_in2(  ),
       .mainOff_mul1_req_tag( mainComp_mainOff_mul1_req_tag ),
       .mainOff_mul1_rep_ready( mainComp_mainOff_mul1_rep_ready ),
       .mainOff_mul1_rep_valid( offComp_io_out_valid ),
       .mainOff_mul1_rep_bits_out(  ),
       .mainOff_mul1_rep_tag( offComp_io_out_tag ),
       .mainOff_mul2_req_ready( mainOff_mul2_req_ready ),
       .mainOff_mul2_req_valid( mainComp_mainOff_mul2_req_valid ),
       .mainOff_mul2_req_bits_in1(  ),
       .mainOff_mul2_req_bits_in2(  ),
       .mainOff_mul2_req_tag( mainComp_mainOff_mul2_req_tag ),
       .mainOff_mul2_rep_ready( mainComp_mainOff_mul2_rep_ready ),
       .mainOff_mul2_rep_valid( mainOff_mul2_rep_valid ),
       .mainOff_mul2_rep_bits_out(  ),
       .mainOff_mul2_rep_tag( mainOff_mul2_rep_tag ),
       .mainOff_mul3_req_ready( mainOff_mul3_req_ready ),
       .mainOff_mul3_req_valid( mainComp_mainOff_mul3_req_valid ),
       .mainOff_mul3_req_bits_in1(  ),
       .mainOff_mul3_req_bits_in2(  ),
       .mainOff_mul3_req_tag( mainComp_mainOff_mul3_req_tag ),
       .mainOff_mul3_rep_ready( mainComp_mainOff_mul3_rep_ready ),
       .mainOff_mul3_rep_valid( mainOff_mul3_rep_valid ),
       .mainOff_mul3_rep_bits_out(  ),
       .mainOff_mul3_rep_tag( mainOff_mul3_rep_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  multiplier offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_mul1_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_mul1_req_tag ),
       .io_out_ready( mainComp_mainOff_mul1_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_21(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_22(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_23(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module multiplier_1(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire[7:0] T46;
  wire T47;
  wire T48;
  wire T49;
  wire T50;
  wire T51;
  wire[7:0] T52;
  wire T53;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire[7:0] T58;
  wire T59;
  wire T60;
  wire T61;
  wire T62;
  wire T63;
  wire[7:0] T64;
  wire T65;
  wire T66;
  wire T67;
  wire T68;
  wire T69;
  wire[7:0] T70;
  wire T71;
  wire T72;
  wire T73;
  wire T74;
  wire T75;
  wire[7:0] T76;
  wire T77;
  wire T78;
  wire T79;
  wire T80;
  wire T81;
  wire[7:0] T82;
  wire T83;
  wire T84;
  wire T85;
  wire T86;
  wire T87;
  wire[7:0] T88;
  wire T89;
  wire T90;
  wire T91;
  wire T92;
  wire T93;
  wire T94;
  wire[7:0] T95;
  wire[7:0] T96;
  wire T97;
  wire T98;
  wire T99;
  wire T100;
  wire[1:0] T101;
  wire sThreadEncoder_io_chosen;
  wire T102;
  wire T103;
  wire T104;
  wire T105;
  wire T106;
  wire[7:0] T107;
  wire[7:0] T108;
  wire[7:0] T109;
  wire[7:0] T110;
  wire[7:0] T111;
  wire[7:0] T112;
  wire[7:0] T113;
  wire[7:0] T114;
  wire[7:0] T115;
  wire[7:0] T116;
  wire[7:0] T117;
  wire[7:0] T118;
  wire[7:0] T119;
  wire[7:0] T120;
  wire[7:0] T121;
  wire[7:0] T122;
  wire[7:0] T123;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T124;
  reg[7:0] GS_step1__State__rviReg;
  wire T125;
  wire T126;
  wire[7:0] T127;
  wire T128;
  wire[7:0] T129;
  wire[7:0] T130;
  reg[7:0] GS_step2__State__rviReg;
  wire T131;
  wire T132;
  wire[7:0] T133;
  wire T134;
  wire[7:0] T135;
  wire[7:0] T136;
  reg[7:0] GS_step3__State__rviReg;
  wire T137;
  wire T138;
  wire[7:0] T139;
  wire T140;
  wire[7:0] T141;
  wire[7:0] T142;
  reg[7:0] GS_step4__State__rviReg;
  wire T143;
  wire T144;
  wire[7:0] T145;
  wire T146;
  wire[7:0] T147;
  wire[7:0] T148;
  reg[7:0] GS_step5__State__rviReg;
  wire T149;
  wire T150;
  wire[7:0] T151;
  wire T152;
  wire[7:0] T153;
  wire[7:0] T154;
  reg[7:0] GS_step6__State__rviReg;
  wire T155;
  wire T156;
  wire[7:0] T157;
  wire T158;
  wire[7:0] T159;
  wire[7:0] T160;
  reg[7:0] GS_step7__State__rviReg;
  wire T161;
  wire T162;
  wire[7:0] T163;
  wire T164;
  wire[7:0] T165;
  wire[7:0] T166;
  reg[7:0] GS_step8__State__rviReg;
  wire T167;
  wire T168;
  wire[7:0] T169;
  wire T170;
  wire[7:0] T171;
  wire[7:0] T172;
  reg[7:0] GS_step9__State__rviReg;
  wire T173;
  wire T174;
  wire[7:0] T175;
  wire T176;
  wire[7:0] T177;
  wire[7:0] T178;
  reg[7:0] GS_step10__State__rviReg;
  wire T179;
  wire T180;
  wire[7:0] T181;
  wire T182;
  wire[7:0] T183;
  wire[7:0] T184;
  reg[7:0] GS_step11__State__rviReg;
  wire T185;
  wire T186;
  wire[7:0] T187;
  wire T188;
  wire[7:0] T189;
  wire[7:0] T190;
  wire T191;
  wire T192;
  wire T193;
  wire T194;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T195;
  wire T196;
  wire T197;
  wire T198;
  wire T199;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T191 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T48 || T43;
  assign T43 = T44 && T15;
  assign T44 = T47 && T45;
  assign T45 = T21 == T46;
  assign T46 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T47 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T48 = T54 || T49;
  assign T49 = T50 && T15;
  assign T50 = T53 && T51;
  assign T51 = T21 == T52;
  assign T52 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T53 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T54 = T60 || T55;
  assign T55 = T56 && T15;
  assign T56 = T59 && T57;
  assign T57 = T21 == T58;
  assign T58 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T59 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T60 = T66 || T61;
  assign T61 = T62 && T15;
  assign T62 = T65 && T63;
  assign T63 = T21 == T64;
  assign T64 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T65 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T66 = T72 || T67;
  assign T67 = T68 && T15;
  assign T68 = T71 && T69;
  assign T69 = T21 == T70;
  assign T70 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T71 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T72 = T78 || T73;
  assign T73 = T74 && T15;
  assign T74 = T77 && T75;
  assign T75 = T21 == T76;
  assign T76 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T77 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T78 = T84 || T79;
  assign T79 = T80 && T15;
  assign T80 = T83 && T81;
  assign T81 = T21 == T82;
  assign T82 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T83 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T84 = T90 || T85;
  assign T85 = T86 && T15;
  assign T86 = T89 && T87;
  assign T87 = T21 == T88;
  assign T88 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T89 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T90 = T98 || T91;
  assign T91 = T92 && T2;
  assign T92 = T93 && io_out_ready;
  assign T93 = T97 && T94;
  assign T94 = T95 == 8'hff/* 255*/;
  assign T95 = State_0 & T96;
  assign T96 = {4'h8/* 8*/{T2}};
  assign T97 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T98 = T105 && T99;
  assign T99 = T100;
  assign T100 = T101[1'h0/* 0*/:1'h0/* 0*/];
  assign T101 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T102 = T104 && T103;
  assign T103 = State_0 == 8'h0/* 0*/;
  assign T104 = subStateTh_0 == 1'h0/* 0*/;
  assign T105 = T106 && io_in_valid;
  assign T106 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T107 = T14 ? 8'hff/* 255*/ : T108;
  assign T108 = T25 ? GS_step11__State__rviReg : T109;
  assign T109 = T31 ? GS_step10__State__rviReg : T110;
  assign T110 = T37 ? GS_step9__State__rviReg : T111;
  assign T111 = T43 ? GS_step8__State__rviReg : T112;
  assign T112 = T49 ? GS_step7__State__rviReg : T113;
  assign T113 = T55 ? GS_step6__State__rviReg : T114;
  assign T114 = T61 ? GS_step5__State__rviReg : T115;
  assign T115 = T67 ? GS_step4__State__rviReg : T116;
  assign T116 = T73 ? GS_step3__State__rviReg : T117;
  assign T117 = T79 ? GS_step2__State__rviReg : T118;
  assign T118 = T85 ? GS_step1__State__rviReg : T119;
  assign T119 = T91 ? T122 : T120;
  assign T120 = T98 ? T121 : State_0;
  assign T121 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T122 = EmitReturnState_0 & T123;
  assign T123 = {4'h8/* 8*/{T2}};
  assign T124 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T125 = T128 && T126;
  assign T126 = T95 == T127;
  assign T127 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T128 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T129 = T125 ? T130 : GS_step1__State__rviReg;
  assign T130 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T131 = T134 && T132;
  assign T132 = T95 == T133;
  assign T133 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T134 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T135 = T131 ? T136 : GS_step2__State__rviReg;
  assign T136 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T137 = T140 && T138;
  assign T138 = T95 == T139;
  assign T139 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T140 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T141 = T137 ? T142 : GS_step3__State__rviReg;
  assign T142 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T143 = T146 && T144;
  assign T144 = T95 == T145;
  assign T145 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T146 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T147 = T143 ? T148 : GS_step4__State__rviReg;
  assign T148 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T149 = T152 && T150;
  assign T150 = T95 == T151;
  assign T151 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T152 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T153 = T149 ? T154 : GS_step5__State__rviReg;
  assign T154 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T155 = T158 && T156;
  assign T156 = T95 == T157;
  assign T157 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T158 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T159 = T155 ? T160 : GS_step6__State__rviReg;
  assign T160 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T161 = T164 && T162;
  assign T162 = T95 == T163;
  assign T163 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T164 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T165 = T161 ? T166 : GS_step7__State__rviReg;
  assign T166 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T167 = T170 && T168;
  assign T168 = T95 == T169;
  assign T169 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T170 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T171 = T167 ? T172 : GS_step8__State__rviReg;
  assign T172 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T173 = T176 && T174;
  assign T174 = T95 == T175;
  assign T175 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T176 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T177 = T173 ? T178 : GS_step9__State__rviReg;
  assign T178 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T179 = T182 && T180;
  assign T180 = T95 == T181;
  assign T181 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T182 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T183 = T179 ? T184 : GS_step10__State__rviReg;
  assign T184 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T185 = T188 && T186;
  assign T186 = T95 == T187;
  assign T187 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T188 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T189 = T185 ? T190 : GS_step11__State__rviReg;
  assign T190 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T191 = T193 && T192;
  assign T192 = State_0 != 8'h0/* 0*/;
  assign T193 = AllOffloadsReady && T194;
  assign T194 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T195 = T98 ? io_in_tag : inputTag_0;
  assign io_out_valid = T196;
  assign T196 = T198 && T197;
  assign T197 = T95 == 8'hff/* 255*/;
  assign T198 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T199;
  assign T199 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_21 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_22 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_23 sThreadEncoder(
       .io_valid_0( T102 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T107;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T124;
    end
    if(T125) begin
      GS_step1__State__rviReg <= T129;
    end
    if(T131) begin
      GS_step2__State__rviReg <= T135;
    end
    if(T137) begin
      GS_step3__State__rviReg <= T141;
    end
    if(T143) begin
      GS_step4__State__rviReg <= T147;
    end
    if(T149) begin
      GS_step5__State__rviReg <= T153;
    end
    if(T155) begin
      GS_step6__State__rviReg <= T159;
    end
    if(T161) begin
      GS_step7__State__rviReg <= T165;
    end
    if(T167) begin
      GS_step8__State__rviReg <= T171;
    end
    if(T173) begin
      GS_step9__State__rviReg <= T177;
    end
    if(T179) begin
      GS_step10__State__rviReg <= T183;
    end
    if(T185) begin
      GS_step11__State__rviReg <= T189;
    end
    if(T98) begin
      inputTag_0 <= T195;
    end
  end
endmodule

module gOffloadedComponent_4(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_add1_req_ready,
    output mainOff_add1_req_valid,
    output[63:0] mainOff_add1_req_bits_in1,
    output[63:0] mainOff_add1_req_bits_in2,
    output[9:0] mainOff_add1_req_tag,
    output mainOff_add1_rep_ready,
    input  mainOff_add1_rep_valid,
    input [63:0] mainOff_add1_rep_bits_out,
    input [9:0] mainOff_add1_rep_tag,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_mul3_req_ready,
    output mainOff_mul3_req_valid,
    output[63:0] mainOff_mul3_req_bits_in1,
    output[63:0] mainOff_mul3_req_bits_in2,
    output[9:0] mainOff_mul3_req_tag,
    output mainOff_mul3_rep_ready,
    input  mainOff_mul3_rep_valid,
    input [63:0] mainOff_mul3_rep_bits_out,
    input [9:0] mainOff_mul3_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire mainComp_mainOff_mul3_rep_ready;
  wire mainComp_mainOff_mul3_req_valid;
  wire[9:0] mainComp_mainOff_mul3_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_mul2_rep_ready;
  wire mainComp_mainOff_mul2_req_valid;
  wire[9:0] mainComp_mainOff_mul2_req_tag;
  wire offComp_io_out_valid;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire mainComp_mainOff_add1_rep_ready;
  wire mainComp_mainOff_add1_req_valid;
  wire[9:0] mainComp_mainOff_add1_req_tag;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign mainOff_mul3_rep_ready = mainComp_mainOff_mul3_rep_ready;
  assign mainOff_mul3_req_valid = mainComp_mainOff_mul3_req_valid;
  assign mainOff_mul3_req_tag = mainComp_mainOff_mul3_req_tag;
  assign mainOff_add2_rep_ready = mainComp_mainOff_add2_rep_ready;
  assign mainOff_add2_req_valid = mainComp_mainOff_add2_req_valid;
  assign mainOff_add2_req_tag = mainComp_mainOff_add2_req_tag;
  assign mainOff_add1_rep_ready = mainComp_mainOff_add1_rep_ready;
  assign mainOff_add1_req_valid = mainComp_mainOff_add1_req_valid;
  assign mainOff_add1_req_tag = mainComp_mainOff_add1_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent_3 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_add1_req_ready( mainOff_add1_req_ready ),
       .mainOff_add1_req_valid( mainComp_mainOff_add1_req_valid ),
       .mainOff_add1_req_bits_in1(  ),
       .mainOff_add1_req_bits_in2(  ),
       .mainOff_add1_req_tag( mainComp_mainOff_add1_req_tag ),
       .mainOff_add1_rep_ready( mainComp_mainOff_add1_rep_ready ),
       .mainOff_add1_rep_valid( mainOff_add1_rep_valid ),
       .mainOff_add1_rep_bits_out(  ),
       .mainOff_add1_rep_tag( mainOff_add1_rep_tag ),
       .mainOff_add2_req_ready( mainOff_add2_req_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( mainOff_add2_rep_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( mainOff_add2_rep_tag ),
       .mainOff_mul2_req_ready( offComp_io_in_ready ),
       .mainOff_mul2_req_valid( mainComp_mainOff_mul2_req_valid ),
       .mainOff_mul2_req_bits_in1(  ),
       .mainOff_mul2_req_bits_in2(  ),
       .mainOff_mul2_req_tag( mainComp_mainOff_mul2_req_tag ),
       .mainOff_mul2_rep_ready( mainComp_mainOff_mul2_rep_ready ),
       .mainOff_mul2_rep_valid( offComp_io_out_valid ),
       .mainOff_mul2_rep_bits_out(  ),
       .mainOff_mul2_rep_tag( offComp_io_out_tag ),
       .mainOff_mul3_req_ready( mainOff_mul3_req_ready ),
       .mainOff_mul3_req_valid( mainComp_mainOff_mul3_req_valid ),
       .mainOff_mul3_req_bits_in1(  ),
       .mainOff_mul3_req_bits_in2(  ),
       .mainOff_mul3_req_tag( mainComp_mainOff_mul3_req_tag ),
       .mainOff_mul3_rep_ready( mainComp_mainOff_mul3_rep_ready ),
       .mainOff_mul3_rep_valid( mainOff_mul3_rep_valid ),
       .mainOff_mul3_rep_bits_out(  ),
       .mainOff_mul3_rep_tag( mainOff_mul3_rep_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  multiplier_1 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_mul2_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_mul2_req_tag ),
       .io_out_ready( mainComp_mainOff_mul2_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_24(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_25(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_26(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module multiplier_2(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire[7:0] T46;
  wire T47;
  wire T48;
  wire T49;
  wire T50;
  wire T51;
  wire[7:0] T52;
  wire T53;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire[7:0] T58;
  wire T59;
  wire T60;
  wire T61;
  wire T62;
  wire T63;
  wire[7:0] T64;
  wire T65;
  wire T66;
  wire T67;
  wire T68;
  wire T69;
  wire[7:0] T70;
  wire T71;
  wire T72;
  wire T73;
  wire T74;
  wire T75;
  wire[7:0] T76;
  wire T77;
  wire T78;
  wire T79;
  wire T80;
  wire T81;
  wire[7:0] T82;
  wire T83;
  wire T84;
  wire T85;
  wire T86;
  wire T87;
  wire[7:0] T88;
  wire T89;
  wire T90;
  wire T91;
  wire T92;
  wire T93;
  wire T94;
  wire[7:0] T95;
  wire[7:0] T96;
  wire T97;
  wire T98;
  wire T99;
  wire T100;
  wire[1:0] T101;
  wire sThreadEncoder_io_chosen;
  wire T102;
  wire T103;
  wire T104;
  wire T105;
  wire T106;
  wire[7:0] T107;
  wire[7:0] T108;
  wire[7:0] T109;
  wire[7:0] T110;
  wire[7:0] T111;
  wire[7:0] T112;
  wire[7:0] T113;
  wire[7:0] T114;
  wire[7:0] T115;
  wire[7:0] T116;
  wire[7:0] T117;
  wire[7:0] T118;
  wire[7:0] T119;
  wire[7:0] T120;
  wire[7:0] T121;
  wire[7:0] T122;
  wire[7:0] T123;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T124;
  reg[7:0] GS_step1__State__rviReg;
  wire T125;
  wire T126;
  wire[7:0] T127;
  wire T128;
  wire[7:0] T129;
  wire[7:0] T130;
  reg[7:0] GS_step2__State__rviReg;
  wire T131;
  wire T132;
  wire[7:0] T133;
  wire T134;
  wire[7:0] T135;
  wire[7:0] T136;
  reg[7:0] GS_step3__State__rviReg;
  wire T137;
  wire T138;
  wire[7:0] T139;
  wire T140;
  wire[7:0] T141;
  wire[7:0] T142;
  reg[7:0] GS_step4__State__rviReg;
  wire T143;
  wire T144;
  wire[7:0] T145;
  wire T146;
  wire[7:0] T147;
  wire[7:0] T148;
  reg[7:0] GS_step5__State__rviReg;
  wire T149;
  wire T150;
  wire[7:0] T151;
  wire T152;
  wire[7:0] T153;
  wire[7:0] T154;
  reg[7:0] GS_step6__State__rviReg;
  wire T155;
  wire T156;
  wire[7:0] T157;
  wire T158;
  wire[7:0] T159;
  wire[7:0] T160;
  reg[7:0] GS_step7__State__rviReg;
  wire T161;
  wire T162;
  wire[7:0] T163;
  wire T164;
  wire[7:0] T165;
  wire[7:0] T166;
  reg[7:0] GS_step8__State__rviReg;
  wire T167;
  wire T168;
  wire[7:0] T169;
  wire T170;
  wire[7:0] T171;
  wire[7:0] T172;
  reg[7:0] GS_step9__State__rviReg;
  wire T173;
  wire T174;
  wire[7:0] T175;
  wire T176;
  wire[7:0] T177;
  wire[7:0] T178;
  reg[7:0] GS_step10__State__rviReg;
  wire T179;
  wire T180;
  wire[7:0] T181;
  wire T182;
  wire[7:0] T183;
  wire[7:0] T184;
  reg[7:0] GS_step11__State__rviReg;
  wire T185;
  wire T186;
  wire[7:0] T187;
  wire T188;
  wire[7:0] T189;
  wire[7:0] T190;
  wire T191;
  wire T192;
  wire T193;
  wire T194;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T195;
  wire T196;
  wire T197;
  wire T198;
  wire T199;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T191 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T48 || T43;
  assign T43 = T44 && T15;
  assign T44 = T47 && T45;
  assign T45 = T21 == T46;
  assign T46 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T47 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T48 = T54 || T49;
  assign T49 = T50 && T15;
  assign T50 = T53 && T51;
  assign T51 = T21 == T52;
  assign T52 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T53 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T54 = T60 || T55;
  assign T55 = T56 && T15;
  assign T56 = T59 && T57;
  assign T57 = T21 == T58;
  assign T58 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T59 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T60 = T66 || T61;
  assign T61 = T62 && T15;
  assign T62 = T65 && T63;
  assign T63 = T21 == T64;
  assign T64 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T65 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T66 = T72 || T67;
  assign T67 = T68 && T15;
  assign T68 = T71 && T69;
  assign T69 = T21 == T70;
  assign T70 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T71 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T72 = T78 || T73;
  assign T73 = T74 && T15;
  assign T74 = T77 && T75;
  assign T75 = T21 == T76;
  assign T76 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T77 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T78 = T84 || T79;
  assign T79 = T80 && T15;
  assign T80 = T83 && T81;
  assign T81 = T21 == T82;
  assign T82 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T83 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T84 = T90 || T85;
  assign T85 = T86 && T15;
  assign T86 = T89 && T87;
  assign T87 = T21 == T88;
  assign T88 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T89 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T90 = T98 || T91;
  assign T91 = T92 && T2;
  assign T92 = T93 && io_out_ready;
  assign T93 = T97 && T94;
  assign T94 = T95 == 8'hff/* 255*/;
  assign T95 = State_0 & T96;
  assign T96 = {4'h8/* 8*/{T2}};
  assign T97 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T98 = T105 && T99;
  assign T99 = T100;
  assign T100 = T101[1'h0/* 0*/:1'h0/* 0*/];
  assign T101 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T102 = T104 && T103;
  assign T103 = State_0 == 8'h0/* 0*/;
  assign T104 = subStateTh_0 == 1'h0/* 0*/;
  assign T105 = T106 && io_in_valid;
  assign T106 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T107 = T14 ? 8'hff/* 255*/ : T108;
  assign T108 = T25 ? GS_step11__State__rviReg : T109;
  assign T109 = T31 ? GS_step10__State__rviReg : T110;
  assign T110 = T37 ? GS_step9__State__rviReg : T111;
  assign T111 = T43 ? GS_step8__State__rviReg : T112;
  assign T112 = T49 ? GS_step7__State__rviReg : T113;
  assign T113 = T55 ? GS_step6__State__rviReg : T114;
  assign T114 = T61 ? GS_step5__State__rviReg : T115;
  assign T115 = T67 ? GS_step4__State__rviReg : T116;
  assign T116 = T73 ? GS_step3__State__rviReg : T117;
  assign T117 = T79 ? GS_step2__State__rviReg : T118;
  assign T118 = T85 ? GS_step1__State__rviReg : T119;
  assign T119 = T91 ? T122 : T120;
  assign T120 = T98 ? T121 : State_0;
  assign T121 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T122 = EmitReturnState_0 & T123;
  assign T123 = {4'h8/* 8*/{T2}};
  assign T124 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T125 = T128 && T126;
  assign T126 = T95 == T127;
  assign T127 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T128 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T129 = T125 ? T130 : GS_step1__State__rviReg;
  assign T130 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T131 = T134 && T132;
  assign T132 = T95 == T133;
  assign T133 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T134 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T135 = T131 ? T136 : GS_step2__State__rviReg;
  assign T136 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T137 = T140 && T138;
  assign T138 = T95 == T139;
  assign T139 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T140 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T141 = T137 ? T142 : GS_step3__State__rviReg;
  assign T142 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T143 = T146 && T144;
  assign T144 = T95 == T145;
  assign T145 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T146 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T147 = T143 ? T148 : GS_step4__State__rviReg;
  assign T148 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T149 = T152 && T150;
  assign T150 = T95 == T151;
  assign T151 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T152 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T153 = T149 ? T154 : GS_step5__State__rviReg;
  assign T154 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T155 = T158 && T156;
  assign T156 = T95 == T157;
  assign T157 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T158 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T159 = T155 ? T160 : GS_step6__State__rviReg;
  assign T160 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T161 = T164 && T162;
  assign T162 = T95 == T163;
  assign T163 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T164 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T165 = T161 ? T166 : GS_step7__State__rviReg;
  assign T166 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T167 = T170 && T168;
  assign T168 = T95 == T169;
  assign T169 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T170 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T171 = T167 ? T172 : GS_step8__State__rviReg;
  assign T172 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T173 = T176 && T174;
  assign T174 = T95 == T175;
  assign T175 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T176 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T177 = T173 ? T178 : GS_step9__State__rviReg;
  assign T178 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T179 = T182 && T180;
  assign T180 = T95 == T181;
  assign T181 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T182 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T183 = T179 ? T184 : GS_step10__State__rviReg;
  assign T184 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T185 = T188 && T186;
  assign T186 = T95 == T187;
  assign T187 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T188 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T189 = T185 ? T190 : GS_step11__State__rviReg;
  assign T190 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T191 = T193 && T192;
  assign T192 = State_0 != 8'h0/* 0*/;
  assign T193 = AllOffloadsReady && T194;
  assign T194 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T195 = T98 ? io_in_tag : inputTag_0;
  assign io_out_valid = T196;
  assign T196 = T198 && T197;
  assign T197 = T95 == 8'hff/* 255*/;
  assign T198 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T199;
  assign T199 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_24 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_25 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_26 sThreadEncoder(
       .io_valid_0( T102 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T107;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T124;
    end
    if(T125) begin
      GS_step1__State__rviReg <= T129;
    end
    if(T131) begin
      GS_step2__State__rviReg <= T135;
    end
    if(T137) begin
      GS_step3__State__rviReg <= T141;
    end
    if(T143) begin
      GS_step4__State__rviReg <= T147;
    end
    if(T149) begin
      GS_step5__State__rviReg <= T153;
    end
    if(T155) begin
      GS_step6__State__rviReg <= T159;
    end
    if(T161) begin
      GS_step7__State__rviReg <= T165;
    end
    if(T167) begin
      GS_step8__State__rviReg <= T171;
    end
    if(T173) begin
      GS_step9__State__rviReg <= T177;
    end
    if(T179) begin
      GS_step10__State__rviReg <= T183;
    end
    if(T185) begin
      GS_step11__State__rviReg <= T189;
    end
    if(T98) begin
      inputTag_0 <= T195;
    end
  end
endmodule

module gOffloadedComponent_5(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_add1_req_ready,
    output mainOff_add1_req_valid,
    output[63:0] mainOff_add1_req_bits_in1,
    output[63:0] mainOff_add1_req_bits_in2,
    output[9:0] mainOff_add1_req_tag,
    output mainOff_add1_rep_ready,
    input  mainOff_add1_rep_valid,
    input [63:0] mainOff_add1_rep_bits_out,
    input [9:0] mainOff_add1_rep_tag,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_mul3_rep_ready;
  wire mainComp_mainOff_mul3_req_valid;
  wire[9:0] mainComp_mainOff_mul3_req_tag;
  wire offComp_io_out_valid;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire mainComp_mainOff_add1_rep_ready;
  wire mainComp_mainOff_add1_req_valid;
  wire[9:0] mainComp_mainOff_add1_req_tag;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign mainOff_add2_rep_ready = mainComp_mainOff_add2_rep_ready;
  assign mainOff_add2_req_valid = mainComp_mainOff_add2_req_valid;
  assign mainOff_add2_req_tag = mainComp_mainOff_add2_req_tag;
  assign mainOff_add1_rep_ready = mainComp_mainOff_add1_rep_ready;
  assign mainOff_add1_req_valid = mainComp_mainOff_add1_req_valid;
  assign mainOff_add1_req_tag = mainComp_mainOff_add1_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent_4 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_add1_req_ready( mainOff_add1_req_ready ),
       .mainOff_add1_req_valid( mainComp_mainOff_add1_req_valid ),
       .mainOff_add1_req_bits_in1(  ),
       .mainOff_add1_req_bits_in2(  ),
       .mainOff_add1_req_tag( mainComp_mainOff_add1_req_tag ),
       .mainOff_add1_rep_ready( mainComp_mainOff_add1_rep_ready ),
       .mainOff_add1_rep_valid( mainOff_add1_rep_valid ),
       .mainOff_add1_rep_bits_out(  ),
       .mainOff_add1_rep_tag( mainOff_add1_rep_tag ),
       .mainOff_add2_req_ready( mainOff_add2_req_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( mainOff_add2_rep_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( mainOff_add2_rep_tag ),
       .mainOff_mul3_req_ready( offComp_io_in_ready ),
       .mainOff_mul3_req_valid( mainComp_mainOff_mul3_req_valid ),
       .mainOff_mul3_req_bits_in1(  ),
       .mainOff_mul3_req_bits_in2(  ),
       .mainOff_mul3_req_tag( mainComp_mainOff_mul3_req_tag ),
       .mainOff_mul3_rep_ready( mainComp_mainOff_mul3_rep_ready ),
       .mainOff_mul3_rep_valid( offComp_io_out_valid ),
       .mainOff_mul3_rep_bits_out(  ),
       .mainOff_mul3_rep_tag( offComp_io_out_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  multiplier_2 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_mul3_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_mul3_req_tag ),
       .io_out_ready( mainComp_mainOff_mul3_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_27(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_28(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_29(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module adder_3(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire[7:0] T47;
  wire[7:0] T48;
  wire T49;
  wire T50;
  wire T51;
  wire T52;
  wire[1:0] T53;
  wire sThreadEncoder_io_chosen;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  wire[7:0] T59;
  wire[7:0] T60;
  wire[7:0] T61;
  wire[7:0] T62;
  wire[7:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T68;
  reg[7:0] GS_step1__State__rviReg;
  wire T69;
  wire T70;
  wire[7:0] T71;
  wire T72;
  wire[7:0] T73;
  wire[7:0] T74;
  reg[7:0] GS_step2__State__rviReg;
  wire T75;
  wire T76;
  wire[7:0] T77;
  wire T78;
  wire[7:0] T79;
  wire[7:0] T80;
  reg[7:0] GS_step3__State__rviReg;
  wire T81;
  wire T82;
  wire[7:0] T83;
  wire T84;
  wire[7:0] T85;
  wire[7:0] T86;
  wire T87;
  wire T88;
  wire T89;
  wire T90;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T91;
  wire T92;
  wire T93;
  wire T94;
  wire T95;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T87 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T50 || T43;
  assign T43 = T44 && T2;
  assign T44 = T45 && io_out_ready;
  assign T45 = T49 && T46;
  assign T46 = T47 == 8'hff/* 255*/;
  assign T47 = State_0 & T48;
  assign T48 = {4'h8/* 8*/{T2}};
  assign T49 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T50 = T57 && T51;
  assign T51 = T52;
  assign T52 = T53[1'h0/* 0*/:1'h0/* 0*/];
  assign T53 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T54 = T56 && T55;
  assign T55 = State_0 == 8'h0/* 0*/;
  assign T56 = subStateTh_0 == 1'h0/* 0*/;
  assign T57 = T58 && io_in_valid;
  assign T58 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T59 = T14 ? 8'hff/* 255*/ : T60;
  assign T60 = T25 ? GS_step3__State__rviReg : T61;
  assign T61 = T31 ? GS_step2__State__rviReg : T62;
  assign T62 = T37 ? GS_step1__State__rviReg : T63;
  assign T63 = T43 ? T66 : T64;
  assign T64 = T50 ? T65 : State_0;
  assign T65 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T66 = EmitReturnState_0 & T67;
  assign T67 = {4'h8/* 8*/{T2}};
  assign T68 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T69 = T72 && T70;
  assign T70 = T47 == T71;
  assign T71 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T72 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T73 = T69 ? T74 : GS_step1__State__rviReg;
  assign T74 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T75 = T78 && T76;
  assign T76 = T47 == T77;
  assign T77 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T78 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T79 = T75 ? T80 : GS_step2__State__rviReg;
  assign T80 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T81 = T84 && T82;
  assign T82 = T47 == T83;
  assign T83 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T84 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T85 = T81 ? T86 : GS_step3__State__rviReg;
  assign T86 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T87 = T89 && T88;
  assign T88 = State_0 != 8'h0/* 0*/;
  assign T89 = AllOffloadsReady && T90;
  assign T90 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T91 = T50 ? io_in_tag : inputTag_0;
  assign io_out_valid = T92;
  assign T92 = T94 && T93;
  assign T93 = T47 == 8'hff/* 255*/;
  assign T94 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T95;
  assign T95 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_27 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_28 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_29 sThreadEncoder(
       .io_valid_0( T54 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T59;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T68;
    end
    if(T69) begin
      GS_step1__State__rviReg <= T73;
    end
    if(T75) begin
      GS_step2__State__rviReg <= T79;
    end
    if(T81) begin
      GS_step3__State__rviReg <= T85;
    end
    if(T50) begin
      inputTag_0 <= T91;
    end
  end
endmodule

module gOffloadedComponent_6(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_add2_req_ready,
    output mainOff_add2_req_valid,
    output[63:0] mainOff_add2_req_bits_in1,
    output[63:0] mainOff_add2_req_bits_in2,
    output[9:0] mainOff_add2_req_tag,
    output mainOff_add2_rep_ready,
    input  mainOff_add2_rep_valid,
    input [63:0] mainOff_add2_rep_bits_out,
    input [9:0] mainOff_add2_rep_tag,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_add1_rep_ready;
  wire mainComp_mainOff_add1_req_valid;
  wire[9:0] mainComp_mainOff_add1_req_tag;
  wire offComp_io_out_valid;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign mainOff_add2_rep_ready = mainComp_mainOff_add2_rep_ready;
  assign mainOff_add2_req_valid = mainComp_mainOff_add2_req_valid;
  assign mainOff_add2_req_tag = mainComp_mainOff_add2_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent_5 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_add1_req_ready( offComp_io_in_ready ),
       .mainOff_add1_req_valid( mainComp_mainOff_add1_req_valid ),
       .mainOff_add1_req_bits_in1(  ),
       .mainOff_add1_req_bits_in2(  ),
       .mainOff_add1_req_tag( mainComp_mainOff_add1_req_tag ),
       .mainOff_add1_rep_ready( mainComp_mainOff_add1_rep_ready ),
       .mainOff_add1_rep_valid( offComp_io_out_valid ),
       .mainOff_add1_rep_bits_out(  ),
       .mainOff_add1_rep_tag( offComp_io_out_tag ),
       .mainOff_add2_req_ready( mainOff_add2_req_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( mainOff_add2_rep_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( mainOff_add2_rep_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  adder_3 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_add1_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_add1_req_tag ),
       .io_out_ready( mainComp_mainOff_add1_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_30(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_31(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_32(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module adder_4(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire[7:0] T47;
  wire[7:0] T48;
  wire T49;
  wire T50;
  wire T51;
  wire T52;
  wire[1:0] T53;
  wire sThreadEncoder_io_chosen;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  wire[7:0] T59;
  wire[7:0] T60;
  wire[7:0] T61;
  wire[7:0] T62;
  wire[7:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T68;
  reg[7:0] GS_step1__State__rviReg;
  wire T69;
  wire T70;
  wire[7:0] T71;
  wire T72;
  wire[7:0] T73;
  wire[7:0] T74;
  reg[7:0] GS_step2__State__rviReg;
  wire T75;
  wire T76;
  wire[7:0] T77;
  wire T78;
  wire[7:0] T79;
  wire[7:0] T80;
  reg[7:0] GS_step3__State__rviReg;
  wire T81;
  wire T82;
  wire[7:0] T83;
  wire T84;
  wire[7:0] T85;
  wire[7:0] T86;
  wire T87;
  wire T88;
  wire T89;
  wire T90;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T91;
  wire T92;
  wire T93;
  wire T94;
  wire T95;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T87 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T50 || T43;
  assign T43 = T44 && T2;
  assign T44 = T45 && io_out_ready;
  assign T45 = T49 && T46;
  assign T46 = T47 == 8'hff/* 255*/;
  assign T47 = State_0 & T48;
  assign T48 = {4'h8/* 8*/{T2}};
  assign T49 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T50 = T57 && T51;
  assign T51 = T52;
  assign T52 = T53[1'h0/* 0*/:1'h0/* 0*/];
  assign T53 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T54 = T56 && T55;
  assign T55 = State_0 == 8'h0/* 0*/;
  assign T56 = subStateTh_0 == 1'h0/* 0*/;
  assign T57 = T58 && io_in_valid;
  assign T58 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T59 = T14 ? 8'hff/* 255*/ : T60;
  assign T60 = T25 ? GS_step3__State__rviReg : T61;
  assign T61 = T31 ? GS_step2__State__rviReg : T62;
  assign T62 = T37 ? GS_step1__State__rviReg : T63;
  assign T63 = T43 ? T66 : T64;
  assign T64 = T50 ? T65 : State_0;
  assign T65 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T66 = EmitReturnState_0 & T67;
  assign T67 = {4'h8/* 8*/{T2}};
  assign T68 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T69 = T72 && T70;
  assign T70 = T47 == T71;
  assign T71 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T72 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T73 = T69 ? T74 : GS_step1__State__rviReg;
  assign T74 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T75 = T78 && T76;
  assign T76 = T47 == T77;
  assign T77 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T78 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T79 = T75 ? T80 : GS_step2__State__rviReg;
  assign T80 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T81 = T84 && T82;
  assign T82 = T47 == T83;
  assign T83 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T84 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T85 = T81 ? T86 : GS_step3__State__rviReg;
  assign T86 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T87 = T89 && T88;
  assign T88 = State_0 != 8'h0/* 0*/;
  assign T89 = AllOffloadsReady && T90;
  assign T90 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T91 = T50 ? io_in_tag : inputTag_0;
  assign io_out_valid = T92;
  assign T92 = T94 && T93;
  assign T93 = T47 == 8'hff/* 255*/;
  assign T94 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T95;
  assign T95 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_30 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_31 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_32 sThreadEncoder(
       .io_valid_0( T54 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T59;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T68;
    end
    if(T69) begin
      GS_step1__State__rviReg <= T73;
    end
    if(T75) begin
      GS_step2__State__rviReg <= T79;
    end
    if(T81) begin
      GS_step3__State__rviReg <= T85;
    end
    if(T50) begin
      inputTag_0 <= T91;
    end
  end
endmodule

module gOffloadedComponent_7(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_sqrt_req_ready,
    output mainOff_sqrt_req_valid,
    output[63:0] mainOff_sqrt_req_bits_in1,
    output[63:0] mainOff_sqrt_req_bits_in2,
    output[9:0] mainOff_sqrt_req_tag,
    output mainOff_sqrt_rep_ready,
    input  mainOff_sqrt_rep_valid,
    input [63:0] mainOff_sqrt_rep_bits_out,
    input [9:0] mainOff_sqrt_rep_tag);

  wire[9:0] mainComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_add2_rep_ready;
  wire mainComp_mainOff_add2_req_valid;
  wire[9:0] mainComp_mainOff_add2_req_tag;
  wire offComp_io_out_valid;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign mainOff_sqrt_rep_ready = mainComp_mainOff_sqrt_rep_ready;
  assign mainOff_sqrt_req_valid = mainComp_mainOff_sqrt_req_valid;
  assign mainOff_sqrt_req_tag = mainComp_mainOff_sqrt_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent_6 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_add2_req_ready( offComp_io_in_ready ),
       .mainOff_add2_req_valid( mainComp_mainOff_add2_req_valid ),
       .mainOff_add2_req_bits_in1(  ),
       .mainOff_add2_req_bits_in2(  ),
       .mainOff_add2_req_tag( mainComp_mainOff_add2_req_tag ),
       .mainOff_add2_rep_ready( mainComp_mainOff_add2_rep_ready ),
       .mainOff_add2_rep_valid( offComp_io_out_valid ),
       .mainOff_add2_rep_bits_out(  ),
       .mainOff_add2_rep_tag( offComp_io_out_tag ),
       .mainOff_sqrt_req_ready( mainOff_sqrt_req_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( mainOff_sqrt_rep_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( mainOff_sqrt_rep_tag ));
  adder_4 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_add2_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_add2_req_tag ),
       .io_out_ready( mainComp_mainOff_add2_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_33(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_34(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_35(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module sqrt(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] T0;
  wire[9:0] T1;
  wire T2;
  wire T3;
  wire[1:0] T4;
  wire rThreadEncoder_io_chosen;
  wire T5;
  reg[0:0] subStateTh_0;
  wire T6;
  wire T7;
  wire T8;
  wire vThreadEncoder_io_chosen;
  wire T9;
  wire AllOffloadsValid_0;
  wire T10;
  wire T11;
  wire T12;
  reg[7:0] State_0;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire[1:0] T17;
  wire T18;
  wire T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire[7:0] T22;
  wire T23;
  wire T24;
  wire T25;
  wire T26;
  wire T27;
  wire[7:0] T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire[7:0] T34;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  wire[7:0] T40;
  wire T41;
  wire T42;
  wire T43;
  wire T44;
  wire T45;
  wire[7:0] T46;
  wire T47;
  wire T48;
  wire T49;
  wire T50;
  wire T51;
  wire[7:0] T52;
  wire T53;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire[7:0] T58;
  wire T59;
  wire T60;
  wire T61;
  wire T62;
  wire T63;
  wire[7:0] T64;
  wire T65;
  wire T66;
  wire T67;
  wire T68;
  wire T69;
  wire[7:0] T70;
  wire T71;
  wire T72;
  wire T73;
  wire T74;
  wire T75;
  wire[7:0] T76;
  wire T77;
  wire T78;
  wire T79;
  wire T80;
  wire T81;
  wire[7:0] T82;
  wire T83;
  wire T84;
  wire T85;
  wire T86;
  wire T87;
  wire[7:0] T88;
  wire T89;
  wire T90;
  wire T91;
  wire T92;
  wire T93;
  wire T94;
  wire[7:0] T95;
  wire[7:0] T96;
  wire T97;
  wire T98;
  wire T99;
  wire T100;
  wire[1:0] T101;
  wire sThreadEncoder_io_chosen;
  wire T102;
  wire T103;
  wire T104;
  wire T105;
  wire T106;
  wire[7:0] T107;
  wire[7:0] T108;
  wire[7:0] T109;
  wire[7:0] T110;
  wire[7:0] T111;
  wire[7:0] T112;
  wire[7:0] T113;
  wire[7:0] T114;
  wire[7:0] T115;
  wire[7:0] T116;
  wire[7:0] T117;
  wire[7:0] T118;
  wire[7:0] T119;
  wire[7:0] T120;
  wire[7:0] T121;
  wire[7:0] T122;
  wire[7:0] T123;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T124;
  reg[7:0] GS_step1__State__rviReg;
  wire T125;
  wire T126;
  wire[7:0] T127;
  wire T128;
  wire[7:0] T129;
  wire[7:0] T130;
  reg[7:0] GS_step2__State__rviReg;
  wire T131;
  wire T132;
  wire[7:0] T133;
  wire T134;
  wire[7:0] T135;
  wire[7:0] T136;
  reg[7:0] GS_step3__State__rviReg;
  wire T137;
  wire T138;
  wire[7:0] T139;
  wire T140;
  wire[7:0] T141;
  wire[7:0] T142;
  reg[7:0] GS_step4__State__rviReg;
  wire T143;
  wire T144;
  wire[7:0] T145;
  wire T146;
  wire[7:0] T147;
  wire[7:0] T148;
  reg[7:0] GS_step5__State__rviReg;
  wire T149;
  wire T150;
  wire[7:0] T151;
  wire T152;
  wire[7:0] T153;
  wire[7:0] T154;
  reg[7:0] GS_step6__State__rviReg;
  wire T155;
  wire T156;
  wire[7:0] T157;
  wire T158;
  wire[7:0] T159;
  wire[7:0] T160;
  reg[7:0] GS_step7__State__rviReg;
  wire T161;
  wire T162;
  wire[7:0] T163;
  wire T164;
  wire[7:0] T165;
  wire[7:0] T166;
  reg[7:0] GS_step8__State__rviReg;
  wire T167;
  wire T168;
  wire[7:0] T169;
  wire T170;
  wire[7:0] T171;
  wire[7:0] T172;
  reg[7:0] GS_step9__State__rviReg;
  wire T173;
  wire T174;
  wire[7:0] T175;
  wire T176;
  wire[7:0] T177;
  wire[7:0] T178;
  reg[7:0] GS_step10__State__rviReg;
  wire T179;
  wire T180;
  wire[7:0] T181;
  wire T182;
  wire[7:0] T183;
  wire[7:0] T184;
  reg[7:0] GS_step11__State__rviReg;
  wire T185;
  wire T186;
  wire[7:0] T187;
  wire T188;
  wire[7:0] T189;
  wire[7:0] T190;
  wire T191;
  wire T192;
  wire T193;
  wire T194;
  wire AllOffloadsReady;
  reg[9:0] inputTag_0;
  wire[9:0] T195;
  wire T196;
  wire T197;
  wire T198;
  wire T199;

  assign io_out_tag = T0;
  assign T0 = inputTag_0 & T1;
  assign T1 = {4'ha/* 10*/{T2}};
  assign T2 = T3;
  assign T3 = T4[1'h0/* 0*/:1'h0/* 0*/];
  assign T4 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T5 = subStateTh_0 == 1'h0/* 0*/;
  assign T6 = T11 ? 1'h1/* 1*/ : T7;
  assign T7 = T8 ? 1'h0/* 0*/ : subStateTh_0;
  assign T8 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T9 = T10 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T10 = subStateTh_0 == 1'h1/* 1*/;
  assign T11 = T191 && T12;
  assign T12 = State_0 != 8'hff/* 255*/;
  assign T13 = T24 || T14;
  assign T14 = T18 && T15;
  assign T15 = T16;
  assign T16 = T17[1'h0/* 0*/:1'h0/* 0*/];
  assign T17 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T18 = T23 && T19;
  assign T19 = T21 == T20;
  assign T20 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T21 = State_0 & T22;
  assign T22 = {4'h8/* 8*/{T15}};
  assign T23 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T24 = T30 || T25;
  assign T25 = T26 && T15;
  assign T26 = T29 && T27;
  assign T27 = T21 == T28;
  assign T28 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T29 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T30 = T36 || T31;
  assign T31 = T32 && T15;
  assign T32 = T35 && T33;
  assign T33 = T21 == T34;
  assign T34 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T35 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T36 = T42 || T37;
  assign T37 = T38 && T15;
  assign T38 = T41 && T39;
  assign T39 = T21 == T40;
  assign T40 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T41 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T42 = T48 || T43;
  assign T43 = T44 && T15;
  assign T44 = T47 && T45;
  assign T45 = T21 == T46;
  assign T46 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T47 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T48 = T54 || T49;
  assign T49 = T50 && T15;
  assign T50 = T53 && T51;
  assign T51 = T21 == T52;
  assign T52 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T53 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T54 = T60 || T55;
  assign T55 = T56 && T15;
  assign T56 = T59 && T57;
  assign T57 = T21 == T58;
  assign T58 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T59 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T60 = T66 || T61;
  assign T61 = T62 && T15;
  assign T62 = T65 && T63;
  assign T63 = T21 == T64;
  assign T64 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T65 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T66 = T72 || T67;
  assign T67 = T68 && T15;
  assign T68 = T71 && T69;
  assign T69 = T21 == T70;
  assign T70 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T71 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T72 = T78 || T73;
  assign T73 = T74 && T15;
  assign T74 = T77 && T75;
  assign T75 = T21 == T76;
  assign T76 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T77 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T78 = T84 || T79;
  assign T79 = T80 && T15;
  assign T80 = T83 && T81;
  assign T81 = T21 == T82;
  assign T82 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T83 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T84 = T90 || T85;
  assign T85 = T86 && T15;
  assign T86 = T89 && T87;
  assign T87 = T21 == T88;
  assign T88 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T89 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T90 = T98 || T91;
  assign T91 = T92 && T2;
  assign T92 = T93 && io_out_ready;
  assign T93 = T97 && T94;
  assign T94 = T95 == 8'hff/* 255*/;
  assign T95 = State_0 & T96;
  assign T96 = {4'h8/* 8*/{T2}};
  assign T97 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T98 = T105 && T99;
  assign T99 = T100;
  assign T100 = T101[1'h0/* 0*/:1'h0/* 0*/];
  assign T101 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T102 = T104 && T103;
  assign T103 = State_0 == 8'h0/* 0*/;
  assign T104 = subStateTh_0 == 1'h0/* 0*/;
  assign T105 = T106 && io_in_valid;
  assign T106 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T107 = T14 ? 8'hff/* 255*/ : T108;
  assign T108 = T25 ? GS_step11__State__rviReg : T109;
  assign T109 = T31 ? GS_step10__State__rviReg : T110;
  assign T110 = T37 ? GS_step9__State__rviReg : T111;
  assign T111 = T43 ? GS_step8__State__rviReg : T112;
  assign T112 = T49 ? GS_step7__State__rviReg : T113;
  assign T113 = T55 ? GS_step6__State__rviReg : T114;
  assign T114 = T61 ? GS_step5__State__rviReg : T115;
  assign T115 = T67 ? GS_step4__State__rviReg : T116;
  assign T116 = T73 ? GS_step3__State__rviReg : T117;
  assign T117 = T79 ? GS_step2__State__rviReg : T118;
  assign T118 = T85 ? GS_step1__State__rviReg : T119;
  assign T119 = T91 ? T122 : T120;
  assign T120 = T98 ? T121 : State_0;
  assign T121 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T122 = EmitReturnState_0 & T123;
  assign T123 = {4'h8/* 8*/{T2}};
  assign T124 = T14 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T125 = T128 && T126;
  assign T126 = T95 == T127;
  assign T127 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T128 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T129 = T125 ? T130 : GS_step1__State__rviReg;
  assign T130 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T131 = T134 && T132;
  assign T132 = T95 == T133;
  assign T133 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T134 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T135 = T131 ? T136 : GS_step2__State__rviReg;
  assign T136 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T137 = T140 && T138;
  assign T138 = T95 == T139;
  assign T139 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T140 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T141 = T137 ? T142 : GS_step3__State__rviReg;
  assign T142 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T143 = T146 && T144;
  assign T144 = T95 == T145;
  assign T145 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T146 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T147 = T143 ? T148 : GS_step4__State__rviReg;
  assign T148 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T149 = T152 && T150;
  assign T150 = T95 == T151;
  assign T151 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T152 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T153 = T149 ? T154 : GS_step5__State__rviReg;
  assign T154 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T155 = T158 && T156;
  assign T156 = T95 == T157;
  assign T157 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T158 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T159 = T155 ? T160 : GS_step6__State__rviReg;
  assign T160 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T161 = T164 && T162;
  assign T162 = T95 == T163;
  assign T163 = {5'h0/* 0*/, 3'h7/* 7*/};
  assign T164 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T165 = T161 ? T166 : GS_step7__State__rviReg;
  assign T166 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T167 = T170 && T168;
  assign T168 = T95 == T169;
  assign T169 = {4'h0/* 0*/, 4'h8/* 8*/};
  assign T170 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T171 = T167 ? T172 : GS_step8__State__rviReg;
  assign T172 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T173 = T176 && T174;
  assign T174 = T95 == T175;
  assign T175 = {4'h0/* 0*/, 4'h9/* 9*/};
  assign T176 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T177 = T173 ? T178 : GS_step9__State__rviReg;
  assign T178 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T179 = T182 && T180;
  assign T180 = T95 == T181;
  assign T181 = {4'h0/* 0*/, 4'ha/* 10*/};
  assign T182 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T183 = T179 ? T184 : GS_step10__State__rviReg;
  assign T184 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T185 = T188 && T186;
  assign T186 = T95 == T187;
  assign T187 = {4'h0/* 0*/, 4'hb/* 11*/};
  assign T188 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T189 = T185 ? T190 : GS_step11__State__rviReg;
  assign T190 = {4'h0/* 0*/, 4'hc/* 12*/};
  assign T191 = T193 && T192;
  assign T192 = State_0 != 8'h0/* 0*/;
  assign T193 = AllOffloadsReady && T194;
  assign T194 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T195 = T98 ? io_in_tag : inputTag_0;
  assign io_out_valid = T196;
  assign T196 = T198 && T197;
  assign T197 = T95 == 8'hff/* 255*/;
  assign T198 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_in_ready = T199;
  assign T199 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_33 rThreadEncoder(
       .io_valid_0( T5 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_34 vThreadEncoder(
       .io_valid_0( T9 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_35 sThreadEncoder(
       .io_valid_0( T102 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T6;
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T13) begin
      State_0 <= T107;
    end
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T14) begin
      EmitReturnState_0 <= T124;
    end
    if(T125) begin
      GS_step1__State__rviReg <= T129;
    end
    if(T131) begin
      GS_step2__State__rviReg <= T135;
    end
    if(T137) begin
      GS_step3__State__rviReg <= T141;
    end
    if(T143) begin
      GS_step4__State__rviReg <= T147;
    end
    if(T149) begin
      GS_step5__State__rviReg <= T153;
    end
    if(T155) begin
      GS_step6__State__rviReg <= T159;
    end
    if(T161) begin
      GS_step7__State__rviReg <= T165;
    end
    if(T167) begin
      GS_step8__State__rviReg <= T171;
    end
    if(T173) begin
      GS_step9__State__rviReg <= T177;
    end
    if(T179) begin
      GS_step10__State__rviReg <= T183;
    end
    if(T185) begin
      GS_step11__State__rviReg <= T189;
    end
    if(T98) begin
      inputTag_0 <= T195;
    end
  end
endmodule

module gOffloadedComponent_8(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1_x,
    input [63:0] io_in_bits_in1_y,
    input [63:0] io_in_bits_in1_z,
    input [63:0] io_in_bits_in2_x,
    input [63:0] io_in_bits_in2_y,
    input [63:0] io_in_bits_in2_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire[9:0] mainComp_io_out_tag;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_sqrt_rep_ready;
  wire mainComp_mainOff_sqrt_req_valid;
  wire[9:0] mainComp_mainOff_sqrt_req_tag;
  wire offComp_io_out_valid;
  wire offComp_io_in_ready;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_out_tag = mainComp_io_out_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  gOffloadedComponent_7 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_sqrt_req_ready( offComp_io_in_ready ),
       .mainOff_sqrt_req_valid( mainComp_mainOff_sqrt_req_valid ),
       .mainOff_sqrt_req_bits_in1(  ),
       .mainOff_sqrt_req_bits_in2(  ),
       .mainOff_sqrt_req_tag( mainComp_mainOff_sqrt_req_tag ),
       .mainOff_sqrt_rep_ready( mainComp_mainOff_sqrt_rep_ready ),
       .mainOff_sqrt_rep_valid( offComp_io_out_valid ),
       .mainOff_sqrt_rep_bits_out(  ),
       .mainOff_sqrt_rep_tag( offComp_io_out_tag ));
  sqrt offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_sqrt_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_sqrt_req_tag ),
       .io_out_ready( mainComp_mainOff_sqrt_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module gOffloadedComponent_9(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_centeroidMem_req_ready,
    output mainOff_centeroidMem_req_valid,
    output[31:0] mainOff_centeroidMem_req_bits_addr,
    output mainOff_centeroidMem_req_bits_rw,
    output[191:0] mainOff_centeroidMem_req_bits_wData,
    output[9:0] mainOff_centeroidMem_req_tag,
    output mainOff_centeroidMem_rep_ready,
    input  mainOff_centeroidMem_rep_valid,
    input [191:0] mainOff_centeroidMem_rep_bits_rData,
    input [9:0] mainOff_centeroidMem_rep_tag,
    input  mainOff_partialAccumulatorMem_req_ready,
    output mainOff_partialAccumulatorMem_req_valid,
    output[31:0] mainOff_partialAccumulatorMem_req_bits_addr,
    output mainOff_partialAccumulatorMem_req_bits_rw,
    output[191:0] mainOff_partialAccumulatorMem_req_bits_wData,
    output[9:0] mainOff_partialAccumulatorMem_req_tag,
    output mainOff_partialAccumulatorMem_rep_ready,
    input  mainOff_partialAccumulatorMem_rep_valid,
    input [191:0] mainOff_partialAccumulatorMem_rep_bits_rData,
    input [9:0] mainOff_partialAccumulatorMem_rep_tag,
    input  mainOff_add_req_ready,
    output mainOff_add_req_valid,
    output[63:0] mainOff_add_req_bits_in1,
    output[63:0] mainOff_add_req_bits_in2,
    output[9:0] mainOff_add_req_tag,
    output mainOff_add_rep_ready,
    input  mainOff_add_rep_valid,
    input [63:0] mainOff_add_rep_bits_out,
    input [9:0] mainOff_add_rep_tag);

  wire mainComp_io_in_ready;
  wire mainComp_mainOff_add_rep_ready;
  wire mainComp_mainOff_add_req_valid;
  wire[9:0] mainComp_mainOff_partialAccumulatorMem_req_tag;
  wire mainComp_mainOff_partialAccumulatorMem_req_valid;
  wire mainComp_mainOff_partialAccumulatorMem_rep_ready;
  wire[9:0] mainComp_mainOff_centeroidMem_req_tag;
  wire mainComp_mainOff_centeroidMem_req_valid;
  wire mainComp_mainOff_centeroidMem_rep_ready;
  wire[9:0] offComp_io_out_tag;
  wire mainComp_mainOff_distanceFU_rep_ready;
  wire mainComp_mainOff_distanceFU_req_valid;
  wire[9:0] mainComp_mainOff_distanceFU_req_tag;
  wire offComp_io_out_valid;
  wire offComp_io_in_ready;
  wire[9:0] mainComp_mainOff_add_req_tag;
  wire mainComp_io_out_valid;
  wire[15:0] mainComp_io_out_bits_centeroidIndex;
  wire[9:0] mainComp_io_out_tag;

  assign io_in_ready = mainComp_io_in_ready;
  assign mainOff_add_rep_ready = mainComp_mainOff_add_rep_ready;
  assign mainOff_add_req_valid = mainComp_mainOff_add_req_valid;
  assign mainOff_partialAccumulatorMem_req_tag = mainComp_mainOff_partialAccumulatorMem_req_tag;
  assign mainOff_partialAccumulatorMem_req_valid = mainComp_mainOff_partialAccumulatorMem_req_valid;
  assign mainOff_partialAccumulatorMem_rep_ready = mainComp_mainOff_partialAccumulatorMem_rep_ready;
  assign mainOff_centeroidMem_req_tag = mainComp_mainOff_centeroidMem_req_tag;
  assign mainOff_centeroidMem_req_valid = mainComp_mainOff_centeroidMem_req_valid;
  assign mainOff_centeroidMem_rep_ready = mainComp_mainOff_centeroidMem_rep_ready;
  assign mainOff_add_req_tag = mainComp_mainOff_add_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_out_bits_centeroidIndex = mainComp_io_out_bits_centeroidIndex;
  assign io_out_tag = mainComp_io_out_tag;
  KEngine mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( mainComp_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_distanceFU_req_ready( offComp_io_in_ready ),
       .mainOff_distanceFU_req_valid( mainComp_mainOff_distanceFU_req_valid ),
       .mainOff_distanceFU_req_bits_in1_x(  ),
       .mainOff_distanceFU_req_bits_in1_y(  ),
       .mainOff_distanceFU_req_bits_in1_z(  ),
       .mainOff_distanceFU_req_bits_in2_x(  ),
       .mainOff_distanceFU_req_bits_in2_y(  ),
       .mainOff_distanceFU_req_bits_in2_z(  ),
       .mainOff_distanceFU_req_tag( mainComp_mainOff_distanceFU_req_tag ),
       .mainOff_distanceFU_rep_ready( mainComp_mainOff_distanceFU_rep_ready ),
       .mainOff_distanceFU_rep_valid( offComp_io_out_valid ),
       .mainOff_distanceFU_rep_bits_out(  ),
       .mainOff_distanceFU_rep_tag( offComp_io_out_tag ),
       .mainOff_centeroidMem_req_ready( mainOff_centeroidMem_req_ready ),
       .mainOff_centeroidMem_req_valid( mainComp_mainOff_centeroidMem_req_valid ),
       .mainOff_centeroidMem_req_bits_addr(  ),
       .mainOff_centeroidMem_req_bits_rw(  ),
       .mainOff_centeroidMem_req_bits_wData(  ),
       .mainOff_centeroidMem_req_tag( mainComp_mainOff_centeroidMem_req_tag ),
       .mainOff_centeroidMem_rep_ready( mainComp_mainOff_centeroidMem_rep_ready ),
       .mainOff_centeroidMem_rep_valid( mainOff_centeroidMem_rep_valid ),
       .mainOff_centeroidMem_rep_bits_rData(  ),
       .mainOff_centeroidMem_rep_tag( mainOff_centeroidMem_rep_tag ),
       .mainOff_partialAccumulatorMem_req_ready( mainOff_partialAccumulatorMem_req_ready ),
       .mainOff_partialAccumulatorMem_req_valid( mainComp_mainOff_partialAccumulatorMem_req_valid ),
       .mainOff_partialAccumulatorMem_req_bits_addr(  ),
       .mainOff_partialAccumulatorMem_req_bits_rw(  ),
       .mainOff_partialAccumulatorMem_req_bits_wData(  ),
       .mainOff_partialAccumulatorMem_req_tag( mainComp_mainOff_partialAccumulatorMem_req_tag ),
       .mainOff_partialAccumulatorMem_rep_ready( mainComp_mainOff_partialAccumulatorMem_rep_ready ),
       .mainOff_partialAccumulatorMem_rep_valid( mainOff_partialAccumulatorMem_rep_valid ),
       .mainOff_partialAccumulatorMem_rep_bits_rData(  ),
       .mainOff_partialAccumulatorMem_rep_tag( mainOff_partialAccumulatorMem_rep_tag ),
       .mainOff_add_req_ready( mainOff_add_req_ready ),
       .mainOff_add_req_valid( mainComp_mainOff_add_req_valid ),
       .mainOff_add_req_bits_in1(  ),
       .mainOff_add_req_bits_in2(  ),
       .mainOff_add_req_tag( mainComp_mainOff_add_req_tag ),
       .mainOff_add_rep_ready( mainComp_mainOff_add_rep_ready ),
       .mainOff_add_rep_valid( mainOff_add_rep_valid ),
       .mainOff_add_rep_bits_out(  ),
       .mainOff_add_rep_tag( mainOff_add_rep_tag ));
  gOffloadedComponent_8 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_distanceFU_req_valid ),
       .io_in_bits_in1_x(  ),
       .io_in_bits_in1_y(  ),
       .io_in_bits_in1_z(  ),
       .io_in_bits_in2_x(  ),
       .io_in_bits_in2_y(  ),
       .io_in_bits_in2_z(  ),
       .io_in_tag( mainComp_mainOff_distanceFU_req_tag ),
       .io_out_ready( mainComp_mainOff_distanceFU_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module spMemComponent(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [9:0] io_in_bits_addr,
    input  io_in_bits_rw,
    input [191:0] io_in_bits_wData,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[191:0] io_out_bits_rData,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  reg[9:0] tagReg;
  reg[0:0] hasReqReg;

  assign io_out_tag = tagReg;
  assign io_out_valid = hasReqReg;
  assign io_in_ready = io_out_ready;

  always @(posedge clk) begin
    tagReg <= io_in_tag;
    hasReqReg <= reset ? 1'h0/* 0*/ : io_in_valid;
  end
endmodule

module gOffloadedComponent_10(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_partialAccumulatorMem_req_ready,
    output mainOff_partialAccumulatorMem_req_valid,
    output[31:0] mainOff_partialAccumulatorMem_req_bits_addr,
    output mainOff_partialAccumulatorMem_req_bits_rw,
    output[191:0] mainOff_partialAccumulatorMem_req_bits_wData,
    output[9:0] mainOff_partialAccumulatorMem_req_tag,
    output mainOff_partialAccumulatorMem_rep_ready,
    input  mainOff_partialAccumulatorMem_rep_valid,
    input [191:0] mainOff_partialAccumulatorMem_rep_bits_rData,
    input [9:0] mainOff_partialAccumulatorMem_rep_tag,
    input  mainOff_add_req_ready,
    output mainOff_add_req_valid,
    output[63:0] mainOff_add_req_bits_in1,
    output[63:0] mainOff_add_req_bits_in2,
    output[9:0] mainOff_add_req_tag,
    output mainOff_add_rep_ready,
    input  mainOff_add_rep_valid,
    input [63:0] mainOff_add_rep_bits_out,
    input [9:0] mainOff_add_rep_tag);

  wire mainComp_io_in_ready;
  wire mainComp_mainOff_add_rep_ready;
  wire mainComp_mainOff_add_req_valid;
  wire[9:0] mainComp_mainOff_partialAccumulatorMem_req_tag;
  wire mainComp_mainOff_partialAccumulatorMem_req_valid;
  wire mainComp_mainOff_partialAccumulatorMem_rep_ready;
  wire[9:0] offComp_io_out_tag;
  wire[9:0] mainComp_mainOff_centeroidMem_req_tag;
  wire offComp_io_out_valid;
  wire mainComp_mainOff_centeroidMem_req_valid;
  wire offComp_io_in_ready;
  wire mainComp_mainOff_centeroidMem_rep_ready;
  wire[9:0] mainComp_mainOff_add_req_tag;
  wire mainComp_io_out_valid;
  wire[15:0] mainComp_io_out_bits_centeroidIndex;
  wire[9:0] mainComp_io_out_tag;

  assign io_in_ready = mainComp_io_in_ready;
  assign mainOff_add_rep_ready = mainComp_mainOff_add_rep_ready;
  assign mainOff_add_req_valid = mainComp_mainOff_add_req_valid;
  assign mainOff_partialAccumulatorMem_req_tag = mainComp_mainOff_partialAccumulatorMem_req_tag;
  assign mainOff_partialAccumulatorMem_req_valid = mainComp_mainOff_partialAccumulatorMem_req_valid;
  assign mainOff_partialAccumulatorMem_rep_ready = mainComp_mainOff_partialAccumulatorMem_rep_ready;
  assign mainOff_add_req_tag = mainComp_mainOff_add_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_out_bits_centeroidIndex = mainComp_io_out_bits_centeroidIndex;
  assign io_out_tag = mainComp_io_out_tag;
  gOffloadedComponent_9 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( mainComp_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_centeroidMem_req_ready( offComp_io_in_ready ),
       .mainOff_centeroidMem_req_valid( mainComp_mainOff_centeroidMem_req_valid ),
       .mainOff_centeroidMem_req_bits_addr(  ),
       .mainOff_centeroidMem_req_bits_rw(  ),
       .mainOff_centeroidMem_req_bits_wData(  ),
       .mainOff_centeroidMem_req_tag( mainComp_mainOff_centeroidMem_req_tag ),
       .mainOff_centeroidMem_rep_ready( mainComp_mainOff_centeroidMem_rep_ready ),
       .mainOff_centeroidMem_rep_valid( offComp_io_out_valid ),
       .mainOff_centeroidMem_rep_bits_rData(  ),
       .mainOff_centeroidMem_rep_tag( offComp_io_out_tag ),
       .mainOff_partialAccumulatorMem_req_ready( mainOff_partialAccumulatorMem_req_ready ),
       .mainOff_partialAccumulatorMem_req_valid( mainComp_mainOff_partialAccumulatorMem_req_valid ),
       .mainOff_partialAccumulatorMem_req_bits_addr(  ),
       .mainOff_partialAccumulatorMem_req_bits_rw(  ),
       .mainOff_partialAccumulatorMem_req_bits_wData(  ),
       .mainOff_partialAccumulatorMem_req_tag( mainComp_mainOff_partialAccumulatorMem_req_tag ),
       .mainOff_partialAccumulatorMem_rep_ready( mainComp_mainOff_partialAccumulatorMem_rep_ready ),
       .mainOff_partialAccumulatorMem_rep_valid( mainOff_partialAccumulatorMem_rep_valid ),
       .mainOff_partialAccumulatorMem_rep_bits_rData(  ),
       .mainOff_partialAccumulatorMem_rep_tag( mainOff_partialAccumulatorMem_rep_tag ),
       .mainOff_add_req_ready( mainOff_add_req_ready ),
       .mainOff_add_req_valid( mainComp_mainOff_add_req_valid ),
       .mainOff_add_req_bits_in1(  ),
       .mainOff_add_req_bits_in2(  ),
       .mainOff_add_req_tag( mainComp_mainOff_add_req_tag ),
       .mainOff_add_rep_ready( mainComp_mainOff_add_rep_ready ),
       .mainOff_add_rep_valid( mainOff_add_rep_valid ),
       .mainOff_add_rep_bits_out(  ),
       .mainOff_add_rep_tag( mainOff_add_rep_tag ));
  spMemComponent offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_centeroidMem_req_valid ),
       .io_in_bits_addr(  ),
       .io_in_bits_rw(  ),
       .io_in_bits_wData(  ),
       .io_in_tag( mainComp_mainOff_centeroidMem_req_tag ),
       .io_out_ready( mainComp_mainOff_centeroidMem_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_rData(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module spMemComponent_1(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [9:0] io_in_bits_addr,
    input  io_in_bits_rw,
    input [191:0] io_in_bits_wData,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[191:0] io_out_bits_rData,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  reg[9:0] tagReg;
  reg[0:0] hasReqReg;

  assign io_out_tag = tagReg;
  assign io_out_valid = hasReqReg;
  assign io_in_ready = io_out_ready;

  always @(posedge clk) begin
    tagReg <= io_in_tag;
    hasReqReg <= reset ? 1'h0/* 0*/ : io_in_valid;
  end
endmodule

module gOffloadedComponent_11(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_add_req_ready,
    output mainOff_add_req_valid,
    output[63:0] mainOff_add_req_bits_in1,
    output[63:0] mainOff_add_req_bits_in2,
    output[9:0] mainOff_add_req_tag,
    output mainOff_add_rep_ready,
    input  mainOff_add_rep_valid,
    input [63:0] mainOff_add_rep_bits_out,
    input [9:0] mainOff_add_rep_tag);

  wire mainComp_io_in_ready;
  wire mainComp_mainOff_add_rep_ready;
  wire mainComp_mainOff_add_req_valid;
  wire[9:0] offComp_io_out_tag;
  wire[9:0] mainComp_mainOff_partialAccumulatorMem_req_tag;
  wire offComp_io_out_valid;
  wire mainComp_mainOff_partialAccumulatorMem_req_valid;
  wire offComp_io_in_ready;
  wire mainComp_mainOff_partialAccumulatorMem_rep_ready;
  wire[9:0] mainComp_mainOff_add_req_tag;
  wire mainComp_io_out_valid;
  wire[15:0] mainComp_io_out_bits_centeroidIndex;
  wire[9:0] mainComp_io_out_tag;

  assign io_in_ready = mainComp_io_in_ready;
  assign mainOff_add_rep_ready = mainComp_mainOff_add_rep_ready;
  assign mainOff_add_req_valid = mainComp_mainOff_add_req_valid;
  assign mainOff_add_req_tag = mainComp_mainOff_add_req_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_out_bits_centeroidIndex = mainComp_io_out_bits_centeroidIndex;
  assign io_out_tag = mainComp_io_out_tag;
  gOffloadedComponent_10 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( mainComp_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_partialAccumulatorMem_req_ready( offComp_io_in_ready ),
       .mainOff_partialAccumulatorMem_req_valid( mainComp_mainOff_partialAccumulatorMem_req_valid ),
       .mainOff_partialAccumulatorMem_req_bits_addr(  ),
       .mainOff_partialAccumulatorMem_req_bits_rw(  ),
       .mainOff_partialAccumulatorMem_req_bits_wData(  ),
       .mainOff_partialAccumulatorMem_req_tag( mainComp_mainOff_partialAccumulatorMem_req_tag ),
       .mainOff_partialAccumulatorMem_rep_ready( mainComp_mainOff_partialAccumulatorMem_rep_ready ),
       .mainOff_partialAccumulatorMem_rep_valid( offComp_io_out_valid ),
       .mainOff_partialAccumulatorMem_rep_bits_rData(  ),
       .mainOff_partialAccumulatorMem_rep_tag( offComp_io_out_tag ),
       .mainOff_add_req_ready( mainOff_add_req_ready ),
       .mainOff_add_req_valid( mainComp_mainOff_add_req_valid ),
       .mainOff_add_req_bits_in1(  ),
       .mainOff_add_req_bits_in2(  ),
       .mainOff_add_req_tag( mainComp_mainOff_add_req_tag ),
       .mainOff_add_rep_ready( mainComp_mainOff_add_rep_ready ),
       .mainOff_add_rep_valid( mainOff_add_rep_valid ),
       .mainOff_add_rep_bits_out(  ),
       .mainOff_add_rep_tag( mainOff_add_rep_tag ));
  spMemComponent_1 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_partialAccumulatorMem_req_valid ),
       .io_in_bits_addr(  ),
       .io_in_bits_rw(  ),
       .io_in_bits_wData(  ),
       .io_in_tag( mainComp_mainOff_partialAccumulatorMem_req_tag ),
       .io_out_ready( mainComp_mainOff_partialAccumulatorMem_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_rData(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_36(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_37(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_38(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module adder_5(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire T0;
  wire sThreadEncoder_io_chosen;
  wire T1;
  wire T2;
  reg[7:0] State_0;
  wire T3;
  wire T4;
  wire T5;
  wire T6;
  wire[1:0] T7;
  wire vThreadEncoder_io_chosen;
  wire T8;
  wire AllOffloadsValid_0;
  wire T9;
  reg[0:0] subStateTh_0;
  wire T10;
  wire T11;
  wire T12;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire T17;
  wire T18;
  wire rThreadEncoder_io_chosen;
  wire T19;
  wire AllOffloadsReady;
  wire T20;
  wire T21;
  wire[7:0] T22;
  wire[7:0] T23;
  wire[7:0] T24;
  wire T25;
  wire T26;
  wire T27;
  wire T28;
  wire T29;
  wire[7:0] T30;
  wire T31;
  wire T32;
  wire T33;
  wire T34;
  wire T35;
  wire[7:0] T36;
  wire T37;
  wire T38;
  wire T39;
  wire T40;
  wire T41;
  wire[7:0] T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire T47;
  wire[1:0] T48;
  wire T49;
  wire T50;
  wire T51;
  wire[7:0] T52;
  wire[7:0] T53;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire[1:0] T58;
  wire T59;
  wire T60;
  wire[7:0] T61;
  wire[7:0] T62;
  wire[7:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  wire[7:0] T68;
  wire[7:0] T69;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T70;
  reg[7:0] GS_step1__State__rviReg;
  wire T71;
  wire T72;
  wire[7:0] T73;
  wire T74;
  wire[7:0] T75;
  wire[7:0] T76;
  reg[7:0] GS_step2__State__rviReg;
  wire T77;
  wire T78;
  wire[7:0] T79;
  wire T80;
  wire[7:0] T81;
  wire[7:0] T82;
  reg[7:0] GS_step3__State__rviReg;
  wire T83;
  wire T84;
  wire[7:0] T85;
  wire T86;
  wire[7:0] T87;
  wire[7:0] T88;
  wire T89;
  wire[9:0] T90;
  wire[9:0] T91;
  reg[9:0] inputTag_0;
  wire[9:0] T92;
  wire T93;
  wire T94;
  wire T95;

  assign io_in_ready = T0;
  assign T0 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T1 = T89 && T2;
  assign T2 = State_0 == 8'h0/* 0*/;
  assign T3 = T26 || T4;
  assign T4 = T20 && T5;
  assign T5 = T6;
  assign T6 = T7[1'h0/* 0*/:1'h0/* 0*/];
  assign T7 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T8 = T9 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T9 = subStateTh_0 == 1'h1/* 1*/;
  assign T10 = T13 ? 1'h1/* 1*/ : T11;
  assign T11 = T12 ? 1'h0/* 0*/ : subStateTh_0;
  assign T12 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T13 = T15 && T14;
  assign T14 = State_0 != 8'hff/* 255*/;
  assign T15 = T17 && T16;
  assign T16 = State_0 != 8'h0/* 0*/;
  assign T17 = AllOffloadsReady && T18;
  assign T18 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign T19 = subStateTh_0 == 1'h0/* 0*/;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T20 = T25 && T21;
  assign T21 = T23 == T22;
  assign T22 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T23 = State_0 & T24;
  assign T24 = {4'h8/* 8*/{T5}};
  assign T25 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T26 = T32 || T27;
  assign T27 = T28 && T5;
  assign T28 = T31 && T29;
  assign T29 = T23 == T30;
  assign T30 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T31 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T32 = T38 || T33;
  assign T33 = T34 && T5;
  assign T34 = T37 && T35;
  assign T35 = T23 == T36;
  assign T36 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T37 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T38 = T44 || T39;
  assign T39 = T40 && T5;
  assign T40 = T43 && T41;
  assign T41 = T23 == T42;
  assign T42 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T43 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T44 = T55 || T45;
  assign T45 = T49 && T46;
  assign T46 = T47;
  assign T47 = T48[1'h0/* 0*/:1'h0/* 0*/];
  assign T48 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T49 = T50 && io_out_ready;
  assign T50 = T54 && T51;
  assign T51 = T52 == 8'hff/* 255*/;
  assign T52 = State_0 & T53;
  assign T53 = {4'h8/* 8*/{T46}};
  assign T54 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T55 = T59 && T56;
  assign T56 = T57;
  assign T57 = T58[1'h0/* 0*/:1'h0/* 0*/];
  assign T58 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T59 = T60 && io_in_valid;
  assign T60 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T61 = T4 ? 8'hff/* 255*/ : T62;
  assign T62 = T27 ? GS_step3__State__rviReg : T63;
  assign T63 = T33 ? GS_step2__State__rviReg : T64;
  assign T64 = T39 ? GS_step1__State__rviReg : T65;
  assign T65 = T45 ? T68 : T66;
  assign T66 = T55 ? T67 : State_0;
  assign T67 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T68 = EmitReturnState_0 & T69;
  assign T69 = {4'h8/* 8*/{T46}};
  assign T70 = T4 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T71 = T74 && T72;
  assign T72 = T52 == T73;
  assign T73 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T74 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T75 = T71 ? T76 : GS_step1__State__rviReg;
  assign T76 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T77 = T80 && T78;
  assign T78 = T52 == T79;
  assign T79 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T80 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T81 = T77 ? T82 : GS_step2__State__rviReg;
  assign T82 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T83 = T86 && T84;
  assign T84 = T52 == T85;
  assign T85 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T86 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T87 = T83 ? T88 : GS_step3__State__rviReg;
  assign T88 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T89 = subStateTh_0 == 1'h0/* 0*/;
  assign io_out_tag = T90;
  assign T90 = inputTag_0 & T91;
  assign T91 = {4'ha/* 10*/{T46}};
  assign T92 = T55 ? io_in_tag : inputTag_0;
  assign io_out_valid = T93;
  assign T93 = T95 && T94;
  assign T94 = T52 == 8'hff/* 255*/;
  assign T95 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_36 rThreadEncoder(
       .io_valid_0( T19 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_37 vThreadEncoder(
       .io_valid_0( T8 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_38 sThreadEncoder(
       .io_valid_0( T1 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T3) begin
      State_0 <= T61;
    end
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T10;
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T4) begin
      EmitReturnState_0 <= T70;
    end
    if(T71) begin
      GS_step1__State__rviReg <= T75;
    end
    if(T77) begin
      GS_step2__State__rviReg <= T81;
    end
    if(T83) begin
      GS_step3__State__rviReg <= T87;
    end
    if(T55) begin
      inputTag_0 <= T92;
    end
  end
endmodule

module gOffloadedComponent_12(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  pcIn0_valid,
    input  pcIn0_bits_request,
    input [15:0] pcIn0_bits_moduleId,
    input [7:0] pcIn0_bits_portId,
    input [19:0] pcIn0_bits_pcValue,
    input [3:0] pcIn0_bits_pcType,
    output pcOutN_valid,
    output pcOutN_bits_request,
    output[15:0] pcOutN_bits_moduleId,
    output[7:0] pcOutN_bits_portId,
    output[19:0] pcOutN_bits_pcValue,
    output[3:0] pcOutN_bits_pcType);

  wire mainComp_io_in_ready;
  wire offComp_io_in_ready;
  wire mainComp_mainOff_add_rep_ready;
  wire mainComp_mainOff_add_req_valid;
  wire[9:0] offComp_io_out_tag;
  wire[9:0] mainComp_mainOff_add_req_tag;
  wire offComp_io_out_valid;
  wire mainComp_io_out_valid;
  wire[15:0] mainComp_io_out_bits_centeroidIndex;
  wire[9:0] mainComp_io_out_tag;

  assign io_in_ready = mainComp_io_in_ready;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_out_bits_centeroidIndex = mainComp_io_out_bits_centeroidIndex;
  assign io_out_tag = mainComp_io_out_tag;
  gOffloadedComponent_11 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( mainComp_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_add_req_ready( offComp_io_in_ready ),
       .mainOff_add_req_valid( mainComp_mainOff_add_req_valid ),
       .mainOff_add_req_bits_in1(  ),
       .mainOff_add_req_bits_in2(  ),
       .mainOff_add_req_tag( mainComp_mainOff_add_req_tag ),
       .mainOff_add_rep_ready( mainComp_mainOff_add_rep_ready ),
       .mainOff_add_rep_valid( offComp_io_out_valid ),
       .mainOff_add_rep_bits_out(  ),
       .mainOff_add_rep_tag( offComp_io_out_tag ));
  adder_5 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_add_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_add_req_tag ),
       .io_out_ready( mainComp_mainOff_add_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module gRRDistributor(input clk, input reset,
    input  io_out_0_ready,
    output io_out_0_valid,
    output io_out_0_bits_centeroidsFinished,
    output io_out_0_bits_pointsFinished,
    output[15:0] io_out_0_bits_centeroidIndex,
    output[63:0] io_out_0_bits_point_x,
    output[63:0] io_out_0_bits_point_y,
    output[63:0] io_out_0_bits_point_z,
    output[9:0] io_out_0_tag,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    output io_chosen);

  wire T0;
  wire T1;
  wire T2;
  wire T3;
  wire T4;
  reg[0:0] last_grant;
  wire T5;
  wire T6;
  wire T7;

  assign io_in_ready = io_out_0_ready;
  assign io_out_0_valid = T0;
  assign T0 = T1 && io_in_valid;
  assign T1 = T7 || T2;
  assign T2 = ! T3;
  assign T3 = io_out_0_ready && T4;
  assign T4 = 1'h0/* 0*/ > last_grant;
  assign T5 = io_in_valid && io_in_ready;
  assign T6 = T5 ? 1'h0/* 0*/ : last_grant;
  assign T7 = 1'h0/* 0*/ > last_grant;
  assign io_out_0_bits_centeroidsFinished = io_in_bits_centeroidsFinished;
  assign io_out_0_bits_pointsFinished = io_in_bits_pointsFinished;
  assign io_out_0_tag = io_in_tag;

  always @(posedge clk) begin
    if(reset) begin
      last_grant <= 1'h0/* 0*/;
    end else if(T5) begin
      last_grant <= T6;
    end
  end
endmodule

module RRDistributorComponent(input clk, input reset,
    input  io_out_0_ready,
    output io_out_0_valid,
    output io_out_0_bits_centeroidsFinished,
    output io_out_0_bits_pointsFinished,
    output[15:0] io_out_0_bits_centeroidIndex,
    output[63:0] io_out_0_bits_point_x,
    output[63:0] io_out_0_bits_point_y,
    output[63:0] io_out_0_bits_point_z,
    output[9:0] io_out_0_tag,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    output io_chosen);

  wire rrDist_io_in_ready;
  wire rrDist_io_out_0_valid;
  wire rrDist_io_out_0_bits_centeroidsFinished;
  wire rrDist_io_out_0_bits_pointsFinished;
  wire[9:0] rrDist_io_out_0_tag;

  assign io_in_ready = rrDist_io_in_ready;
  assign io_out_0_valid = rrDist_io_out_0_valid;
  assign io_out_0_bits_centeroidsFinished = rrDist_io_out_0_bits_centeroidsFinished;
  assign io_out_0_bits_pointsFinished = rrDist_io_out_0_bits_pointsFinished;
  assign io_out_0_tag = rrDist_io_out_0_tag;
  gRRDistributor rrDist(.clk(clk), .reset(reset),
       .io_out_0_ready( io_out_0_ready ),
       .io_out_0_valid( rrDist_io_out_0_valid ),
       .io_out_0_bits_centeroidsFinished( rrDist_io_out_0_bits_centeroidsFinished ),
       .io_out_0_bits_pointsFinished( rrDist_io_out_0_bits_pointsFinished ),
       .io_out_0_bits_centeroidIndex(  ),
       .io_out_0_bits_point_x(  ),
       .io_out_0_bits_point_y(  ),
       .io_out_0_bits_point_z(  ),
       .io_out_0_tag( rrDist_io_out_0_tag ),
       .io_in_ready( rrDist_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_chosen(  ));
endmodule

module gRRArbiter(input clk, input reset,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    output io_in_0_ready,
    input  io_in_0_valid,
    input  io_in_0_bits_centeroidsFinished,
    input  io_in_0_bits_pointsFinished,
    input [15:0] io_in_0_bits_centeroidIndex,
    input [63:0] io_in_0_bits_point_x,
    input [63:0] io_in_0_bits_point_y,
    input [63:0] io_in_0_bits_point_z,
    input [9:0] io_in_0_tag,
    output io_chosen);

  wire T0;
  wire[15:0] T1;
  wire[15:0] dvec_0_centeroidIndex;
  wire T2;
  wire T3;
  wire T4;
  wire T5;
  reg[0:0] last_grant;
  wire T6;
  wire T7;
  wire T8;
  wire[9:0] T9;
  wire[4:0] T10;
  wire[4:0] tvec_0;
  wire[4:0] T11;

  assign io_in_0_ready = T0;
  assign T0 = T2 && io_out_ready;
  assign io_out_valid = io_in_0_valid;
  assign io_out_bits_centeroidIndex = T1;
  assign T1 = dvec_0_centeroidIndex & 16'hffff/* 65535*/;
  assign dvec_0_centeroidIndex = io_in_0_bits_centeroidIndex;
  assign T2 = T8 || T3;
  assign T3 = ! T4;
  assign T4 = io_in_0_valid && T5;
  assign T5 = 1'h0/* 0*/ > last_grant;
  assign T6 = io_out_valid && io_out_ready;
  assign T7 = T6 ? 1'h0/* 0*/ : last_grant;
  assign T8 = 1'h0/* 0*/ > last_grant;
  assign io_out_tag = T9;
  assign T9 = {5'h0/* 0*/, T10};
  assign T10 = tvec_0 & 5'h1f/* 31*/;
  assign tvec_0 = T11;
  assign T11 = io_in_0_tag[3'h4/* 4*/:1'h0/* 0*/];

  always @(posedge clk) begin
    if(reset) begin
      last_grant <= 1'h0/* 0*/;
    end else if(T6) begin
      last_grant <= T7;
    end
  end
endmodule

module RRAggregatorComponent(input clk, input reset,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    output io_in_0_ready,
    input  io_in_0_valid,
    input  io_in_0_bits_centeroidsFinished,
    input  io_in_0_bits_pointsFinished,
    input [15:0] io_in_0_bits_centeroidIndex,
    input [63:0] io_in_0_bits_point_x,
    input [63:0] io_in_0_bits_point_y,
    input [63:0] io_in_0_bits_point_z,
    input [9:0] io_in_0_tag,
    output io_chosen);

  wire rrArb_io_in_0_ready;
  wire rrArb_io_out_valid;
  wire[15:0] rrArb_io_out_bits_centeroidIndex;
  wire[9:0] rrArb_io_out_tag;

  assign io_in_0_ready = rrArb_io_in_0_ready;
  assign io_out_valid = rrArb_io_out_valid;
  assign io_out_bits_centeroidIndex = rrArb_io_out_bits_centeroidIndex;
  assign io_out_tag = rrArb_io_out_tag;
  gRRArbiter rrArb(.clk(clk), .reset(reset),
       .io_out_ready( io_out_ready ),
       .io_out_valid( rrArb_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( rrArb_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( rrArb_io_out_tag ),
       .io_in_0_ready( rrArb_io_in_0_ready ),
       .io_in_0_valid( io_in_0_valid ),
       .io_in_0_bits_centeroidsFinished(  ),
       .io_in_0_bits_pointsFinished(  ),
       .io_in_0_bits_centeroidIndex( io_in_0_bits_centeroidIndex ),
       .io_in_0_bits_point_x(  ),
       .io_in_0_bits_point_y(  ),
       .io_in_0_bits_point_z(  ),
       .io_in_0_tag( io_in_0_tag ),
       .io_chosen(  ));
endmodule

module gReplicatedComponent(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire inputDist_io_in_ready;
  wire gOffloadedComponent_io_in_ready;
  wire outputArb_io_in_0_ready;
  wire outputArb_io_out_valid;
  wire gOffloadedComponent_io_out_valid;
  wire[15:0] outputArb_io_out_bits_centeroidIndex;
  wire[15:0] gOffloadedComponent_io_out_bits_centeroidIndex;
  wire inputDist_io_out_0_valid;
  wire inputDist_io_out_0_bits_centeroidsFinished;
  wire inputDist_io_out_0_bits_pointsFinished;
  wire[9:0] outputArb_io_out_tag;
  wire[9:0] gOffloadedComponent_io_out_tag;
  wire[9:0] inputDist_io_out_0_tag;

  assign io_in_ready = inputDist_io_in_ready;
  assign io_out_valid = outputArb_io_out_valid;
  assign io_out_bits_centeroidIndex = outputArb_io_out_bits_centeroidIndex;
  assign io_out_tag = outputArb_io_out_tag;
  gOffloadedComponent_12 gOffloadedComponent(.clk(clk), .reset(reset),
       .io_in_ready( gOffloadedComponent_io_in_ready ),
       .io_in_valid( inputDist_io_out_0_valid ),
       .io_in_bits_centeroidsFinished( inputDist_io_out_0_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( inputDist_io_out_0_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( inputDist_io_out_0_tag ),
       .io_out_ready( outputArb_io_in_0_ready ),
       .io_out_valid( gOffloadedComponent_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( gOffloadedComponent_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( gOffloadedComponent_io_out_tag ),
       .pcIn0_valid(  ),
       .pcIn0_bits_request(  ),
       .pcIn0_bits_moduleId(  ),
       .pcIn0_bits_portId(  ),
       .pcIn0_bits_pcValue(  ),
       .pcIn0_bits_pcType(  ),
       .pcOutN_valid(  ),
       .pcOutN_bits_request(  ),
       .pcOutN_bits_moduleId(  ),
       .pcOutN_bits_portId(  ),
       .pcOutN_bits_pcValue(  ),
       .pcOutN_bits_pcType(  ));
  RRDistributorComponent inputDist(.clk(clk), .reset(reset),
       .io_out_0_ready( gOffloadedComponent_io_in_ready ),
       .io_out_0_valid( inputDist_io_out_0_valid ),
       .io_out_0_bits_centeroidsFinished( inputDist_io_out_0_bits_centeroidsFinished ),
       .io_out_0_bits_pointsFinished( inputDist_io_out_0_bits_pointsFinished ),
       .io_out_0_bits_centeroidIndex(  ),
       .io_out_0_bits_point_x(  ),
       .io_out_0_bits_point_y(  ),
       .io_out_0_bits_point_z(  ),
       .io_out_0_tag( inputDist_io_out_0_tag ),
       .io_in_ready( inputDist_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_chosen(  ));
  RRAggregatorComponent outputArb(.clk(clk), .reset(reset),
       .io_out_ready( io_out_ready ),
       .io_out_valid( outputArb_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( outputArb_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( outputArb_io_out_tag ),
       .io_in_0_ready( outputArb_io_in_0_ready ),
       .io_in_0_valid( gOffloadedComponent_io_out_valid ),
       .io_in_0_bits_centeroidsFinished(  ),
       .io_in_0_bits_pointsFinished(  ),
       .io_in_0_bits_centeroidIndex( gOffloadedComponent_io_out_bits_centeroidIndex ),
       .io_in_0_bits_point_x(  ),
       .io_in_0_bits_point_y(  ),
       .io_in_0_bits_point_z(  ),
       .io_in_0_tag( gOffloadedComponent_io_out_tag ),
       .io_chosen(  ));
endmodule

module gChainedComponent(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire source_io_in_ready;
  wire sink_io_in_ready;
  wire sink_io_out_valid;
  wire[15:0] sink_io_out_bits_centeroidIndex;
  wire source_io_out_valid;
  wire source_io_out_bits_centeroidsFinished;
  wire source_io_out_bits_pointsFinished;
  wire[9:0] sink_io_out_tag;
  wire[9:0] source_io_out_tag;

  assign io_in_ready = source_io_in_ready;
  assign io_out_valid = sink_io_out_valid;
  assign io_out_bits_centeroidIndex = sink_io_out_bits_centeroidIndex;
  assign io_out_tag = sink_io_out_tag;
  KDistribute source(.clk(clk), .reset(reset),
       .io_in_ready( source_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( sink_io_in_ready ),
       .io_out_valid( source_io_out_valid ),
       .io_out_bits_centeroidsFinished( source_io_out_bits_centeroidsFinished ),
       .io_out_bits_pointsFinished( source_io_out_bits_pointsFinished ),
       .io_out_bits_centeroidIndex(  ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( source_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
  gReplicatedComponent sink(.clk(clk), .reset(reset),
       .io_in_ready( sink_io_in_ready ),
       .io_in_valid( source_io_out_valid ),
       .io_in_bits_centeroidsFinished( source_io_out_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( source_io_out_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( source_io_out_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( sink_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( sink_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( sink_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_39(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_40(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_41(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module KReduce(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_partialAccumulatorMem_req_ready,
    output mainOff_partialAccumulatorMem_req_valid,
    output mainOff_partialAccumulatorMem_req_bits_rw,
    output[15:0] mainOff_partialAccumulatorMem_req_bits_addr,
    output[63:0] mainOff_partialAccumulatorMem_req_bits_data_x,
    output[63:0] mainOff_partialAccumulatorMem_req_bits_data_y,
    output[63:0] mainOff_partialAccumulatorMem_req_bits_data_z,
    output[9:0] mainOff_partialAccumulatorMem_req_tag,
    output mainOff_partialAccumulatorMem_rep_ready,
    input  mainOff_partialAccumulatorMem_rep_valid,
    input [63:0] mainOff_partialAccumulatorMem_rep_bits_data_x,
    input [63:0] mainOff_partialAccumulatorMem_rep_bits_data_y,
    input [63:0] mainOff_partialAccumulatorMem_rep_bits_data_z,
    input [9:0] mainOff_partialAccumulatorMem_rep_tag,
    input  mainOff_add_req_ready,
    output mainOff_add_req_valid,
    output[63:0] mainOff_add_req_bits_in1,
    output[63:0] mainOff_add_req_bits_in2,
    output[9:0] mainOff_add_req_tag,
    output mainOff_add_rep_ready,
    input  mainOff_add_rep_valid,
    input [63:0] mainOff_add_rep_bits_out,
    input [9:0] mainOff_add_rep_tag);

  wire T0;
  wire sThreadEncoder_io_chosen;
  wire T1;
  wire T2;
  reg[7:0] State_0;
  wire T3;
  wire T4;
  wire T5;
  wire T6;
  wire[1:0] T7;
  wire vThreadEncoder_io_chosen;
  wire T8;
  wire AllOffloadsValid_0;
  wire T9;
  wire T10;
  wire T11;
  reg[0:0] addPortHadValidRequest_0;
  wire T12;
  wire T13;
  wire T14;
  wire addPort_req_valid;
  wire T15;
  wire T16;
  wire T17;
  wire T18;
  wire[7:0] T19;
  wire[7:0] T20;
  wire[7:0] T21;
  wire T22;
  wire T23;
  wire[1:0] T24;
  wire rThreadEncoder_io_chosen;
  wire T25;
  reg[0:0] subStateTh_0;
  wire T26;
  wire T27;
  wire T28;
  wire T29;
  wire T30;
  wire T31;
  wire T32;
  wire T33;
  wire T34;
  wire AllOffloadsReady;
  wire T35;
  wire T36;
  wire T37;
  wire T38;
  wire T39;
  reg[0:0] addPortHadReadyRequest;
  wire T40;
  wire T41;
  wire T42;
  wire T43;
  reg[0:0] add_ready_received;
  wire T44;
  wire T45;
  wire addPort_req_ready;
  wire addPort_rep_ready;
  wire T46;
  wire T47;
  wire T48;
  wire T49;
  wire partialAccumulatorMemPort_req_valid;
  wire T50;
  wire T51;
  wire T52;
  wire T53;
  wire[7:0] T54;
  wire T55;
  wire T56;
  wire T57;
  wire T58;
  wire[7:0] T59;
  wire T60;
  wire T61;
  wire T62;
  wire[7:0] T63;
  wire T64;
  wire T65;
  wire T66;
  wire T67;
  reg[0:0] partialAccumulatorMem_valid_received_0;
  wire T68;
  wire T69;
  wire T70;
  wire T71;
  wire[9:0] T72;
  wire[9:0] partialAccumulatorMemPort_rep_tag;
  wire[9:0] partialAccumulatorMemPort_req_tag;
  wire[9:0] T73;
  wire partialAccumulatorMemPort_rep_valid;
  wire T74;
  wire T75;
  wire[4:0] T76;
  wire T77;
  wire T78;
  reg[0:0] partialAccumulatorMemPortHadReadyRequest;
  wire T79;
  wire T80;
  wire T81;
  wire T82;
  reg[0:0] partialAccumulatorMem_ready_received;
  wire T83;
  wire T84;
  wire partialAccumulatorMemPort_req_ready;
  wire partialAccumulatorMemPort_rep_ready;
  wire T85;
  wire T86;
  wire T87;
  wire T88;
  wire T89;
  wire[7:0] T90;
  wire T91;
  wire T92;
  wire T93;
  wire[7:0] T94;
  wire T95;
  wire T96;
  wire T97;
  wire T98;
  reg[0:0] add_valid_received_0;
  wire T99;
  wire T100;
  wire T101;
  wire T102;
  wire[9:0] T103;
  wire[9:0] addPort_rep_tag;
  wire[9:0] addPort_req_tag;
  wire[9:0] T104;
  wire addPort_rep_valid;
  wire T105;
  wire T106;
  wire[4:0] T107;
  wire T108;
  wire T109;
  wire[4:0] T110;
  wire T111;
  wire T112;
  wire[4:0] T113;
  wire T114;
  wire T115;
  wire T116;
  wire[9:0] T117;
  wire T118;
  wire T119;
  reg[0:0] partialAccumulatorMemPortHadValidRequest_0;
  wire T120;
  wire T121;
  wire T122;
  wire T123;
  wire[4:0] T124;
  wire T125;
  wire T126;
  wire[4:0] T127;
  wire T128;
  wire T129;
  wire T130;
  wire[9:0] T131;
  wire T132;
  wire T133;
  wire T134;
  wire[7:0] T135;
  wire[7:0] T136;
  wire[7:0] T137;
  wire T138;
  wire T139;
  wire T140;
  wire T141;
  wire T142;
  wire[7:0] T143;
  wire T144;
  wire T145;
  wire T146;
  wire T147;
  wire T148;
  wire[7:0] T149;
  wire T150;
  wire T151;
  wire T152;
  wire T153;
  wire T154;
  wire[7:0] T155;
  wire T156;
  wire T157;
  wire T158;
  wire T159;
  wire T160;
  wire[7:0] T161;
  wire T162;
  wire T163;
  wire T164;
  wire T165;
  wire T166;
  wire[7:0] T167;
  wire T168;
  wire T169;
  wire T170;
  wire T171;
  wire T172;
  wire T173;
  wire T174;
  wire T175;
  wire T176;
  wire T177;
  wire[1:0] T178;
  wire T179;
  wire T180;
  wire[7:0] T181;
  wire[7:0] T182;
  wire[7:0] T183;
  wire[7:0] T184;
  wire[7:0] T185;
  wire[7:0] T186;
  wire[7:0] T187;
  wire[7:0] T188;
  wire[7:0] T189;
  wire[7:0] T190;
  wire[7:0] T191;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T192;
  wire[7:0] GS_SEND__EmitReturnState;
  wire[7:0] T193;
  wire[7:0] T194;
  wire[7:0] T195;
  wire[7:0] T196;
  wire T197;
  wire[31:0] GS_SEND__centeroidIndex;
  wire[31:0] T198;
  wire[31:0] GS_SEND__pMemInGlobal_addr;
  wire[31:0] T199;
  wire[31:0] T200;
  reg[31:0] centeroidIndex_0;
  wire T201;
  wire[31:0] T202;
  wire[31:0] T203;
  wire[31:0] GS_WRITE__centeroidIndex;
  wire[31:0] T204;
  wire T205;
  wire[32:0] T206;
  wire[15:0] T207;
  wire[15:0] T208;
  reg[15:0] Input_0_centeroidIndex;
  wire[15:0] T209;
  wire T210;
  wire[7:0] GS_SEND__State;
  wire T211;
  wire T212;
  wire[7:0] T213;
  wire[7:0] T214;
  wire[7:0] T215;
  wire[7:0] T216;
  wire[7:0] GS_WRITE__State;
  wire[7:0] T217;
  wire[7:0] T218;
  wire[7:0] T219;
  wire T220;
  wire[32:0] T221;
  wire T222;
  wire T223;
  wire[32:0] T224;
  wire T225;
  wire[9:0] T226;
  wire[9:0] T227;
  reg[9:0] inputTag_0;
  wire[9:0] T228;
  wire T229;
  wire T230;
  wire T231;
  wire T232;
  reg[0:0] Output_0_centeroidsFinished;
  wire T233;
  wire GS_SEND__Output_centeroidsFinished;
  wire T234;
  wire[15:0] T235;
  wire[15:0] T236;
  reg[15:0] Output_0_centeroidIndex;
  wire[15:0] T237;
  wire[15:0] GS_SEND__Output_centeroidIndex;
  wire[15:0] T238;
  wire[15:0] T239;
  wire T240;
  reg[0:0] Output_0_pointsFinished;
  wire T241;
  wire GS_SEND__Output_pointsFinished;
  wire T242;
  wire[63:0] T243;
  wire[63:0] T244;
  reg[63:0] Output_0_point_y;
  wire[63:0] T245;
  wire[63:0] partialAccumulatorMemPort_rep_bits_data_y;
  wire[63:0] T246;
  wire[63:0] T247;
  reg[63:0] Output_0_point_z;
  wire[63:0] T248;
  wire[63:0] partialAccumulatorMemPort_rep_bits_data_z;
  wire[63:0] T249;
  wire[63:0] T250;
  reg[63:0] Output_0_point_x;
  wire[63:0] T251;
  wire[63:0] partialAccumulatorMemPort_rep_bits_data_x;

  assign io_in_ready = T0;
  assign T0 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T1 = T225 && T2;
  assign T2 = State_0 == 8'h0/* 0*/;
  assign T3 = T139 || T4;
  assign T4 = T133 && T5;
  assign T5 = T6;
  assign T6 = T7[1'h0/* 0*/:1'h0/* 0*/];
  assign T7 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T8 = T132 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = T9;
  assign T9 = T118 && T10;
  assign T10 = T114 || T11;
  assign T11 = ! addPortHadValidRequest_0;
  assign T12 = T111 && T13;
  assign T13 = addPortHadValidRequest_0 || T14;
  assign T14 = T109 && addPort_req_valid;
  assign addPort_req_valid = T15;
  assign T15 = T96 && T16;
  assign T16 = T87 || T17;
  assign T17 = T86 && T18;
  assign T18 = T20 == T19;
  assign T19 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T20 = State_0 & T21;
  assign T21 = {4'h8/* 8*/{T22}};
  assign T22 = T23;
  assign T23 = T24[1'h0/* 0*/:1'h0/* 0*/];
  assign T24 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T25 = subStateTh_0 == 1'h0/* 0*/;
  assign T26 = T29 ? 1'h1/* 1*/ : T27;
  assign T27 = T28 ? 1'h0/* 0*/ : subStateTh_0;
  assign T28 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T29 = T31 && T30;
  assign T30 = State_0 != 8'hff/* 255*/;
  assign T31 = T33 && T32;
  assign T32 = State_0 != 8'h0/* 0*/;
  assign T33 = AllOffloadsReady && T34;
  assign T34 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign AllOffloadsReady = T35;
  assign T35 = T47 && T36;
  assign T36 = T43 || T37;
  assign T37 = T39 && T38;
  assign T38 = ! addPort_req_valid;
  assign T39 = ! addPortHadReadyRequest;
  assign T40 = T42 && T41;
  assign T41 = addPortHadReadyRequest || addPort_req_valid;
  assign T42 = ! AllOffloadsReady;
  assign T43 = addPort_req_ready || add_ready_received;
  assign T44 = T46 && T45;
  assign T45 = add_ready_received || addPort_req_ready;
  assign addPort_req_ready = mainOff_add_req_ready;
  assign mainOff_add_rep_ready = addPort_rep_ready;
  assign addPort_rep_ready = 1'h1/* 1*/;
  assign mainOff_add_req_valid = addPort_req_valid;
  assign T46 = ! AllOffloadsReady;
  assign T47 = T82 || T48;
  assign T48 = T78 && T49;
  assign T49 = ! partialAccumulatorMemPort_req_valid;
  assign partialAccumulatorMemPort_req_valid = T50;
  assign T50 = T65 && T51;
  assign T51 = T56 || T52;
  assign T52 = T55 && T53;
  assign T53 = T20 == T54;
  assign T54 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T55 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T56 = T61 || T57;
  assign T57 = T60 && T58;
  assign T58 = T20 == T59;
  assign T59 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T60 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T61 = T64 && T62;
  assign T62 = T20 == T63;
  assign T63 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T64 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T65 = T77 && T66;
  assign T66 = ! T67;
  assign T67 = partialAccumulatorMem_valid_received_0 & T22;
  assign T68 = T74 && T69;
  assign T69 = partialAccumulatorMem_valid_received_0 || T70;
  assign T70 = partialAccumulatorMemPort_rep_valid && T71;
  assign T71 = partialAccumulatorMemPort_rep_tag == T72;
  assign T72 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign partialAccumulatorMemPort_rep_tag = mainOff_partialAccumulatorMem_rep_tag;
  assign mainOff_partialAccumulatorMem_req_tag = partialAccumulatorMemPort_req_tag;
  assign partialAccumulatorMemPort_req_tag = T73;
  assign T73 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign partialAccumulatorMemPort_rep_valid = mainOff_partialAccumulatorMem_rep_valid;
  assign mainOff_partialAccumulatorMem_req_valid = partialAccumulatorMemPort_req_valid;
  assign T74 = ! T75;
  assign T75 = T76 == 5'h0/* 0*/;
  assign T76 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T77 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T78 = ! partialAccumulatorMemPortHadReadyRequest;
  assign T79 = T81 && T80;
  assign T80 = partialAccumulatorMemPortHadReadyRequest || partialAccumulatorMemPort_req_valid;
  assign T81 = ! AllOffloadsReady;
  assign T82 = partialAccumulatorMemPort_req_ready || partialAccumulatorMem_ready_received;
  assign T83 = T85 && T84;
  assign T84 = partialAccumulatorMem_ready_received || partialAccumulatorMemPort_req_ready;
  assign partialAccumulatorMemPort_req_ready = mainOff_partialAccumulatorMem_req_ready;
  assign mainOff_partialAccumulatorMem_rep_ready = partialAccumulatorMemPort_rep_ready;
  assign partialAccumulatorMemPort_rep_ready = 1'h1/* 1*/;
  assign T85 = ! AllOffloadsReady;
  assign T86 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T87 = T92 || T88;
  assign T88 = T91 && T89;
  assign T89 = T20 == T90;
  assign T90 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T91 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T92 = T95 && T93;
  assign T93 = T20 == T94;
  assign T94 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T95 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T96 = T108 && T97;
  assign T97 = ! T98;
  assign T98 = add_valid_received_0 & T22;
  assign T99 = T105 && T100;
  assign T100 = add_valid_received_0 || T101;
  assign T101 = addPort_rep_valid && T102;
  assign T102 = addPort_rep_tag == T103;
  assign T103 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign addPort_rep_tag = mainOff_add_rep_tag;
  assign mainOff_add_req_tag = addPort_req_tag;
  assign addPort_req_tag = T104;
  assign T104 = {9'h0/* 0*/, rThreadEncoder_io_chosen};
  assign addPort_rep_valid = mainOff_add_rep_valid;
  assign T105 = ! T106;
  assign T106 = T107 == 5'h0/* 0*/;
  assign T107 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T108 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T109 = 5'h0/* 0*/ == T110;
  assign T110 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T111 = ! T112;
  assign T112 = T113 == 5'h0/* 0*/;
  assign T113 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T114 = T115 || add_valid_received_0;
  assign T115 = addPort_rep_valid && T116;
  assign T116 = addPort_rep_tag == T117;
  assign T117 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T118 = T128 || T119;
  assign T119 = ! partialAccumulatorMemPortHadValidRequest_0;
  assign T120 = T125 && T121;
  assign T121 = partialAccumulatorMemPortHadValidRequest_0 || T122;
  assign T122 = T123 && partialAccumulatorMemPort_req_valid;
  assign T123 = 5'h0/* 0*/ == T124;
  assign T124 = {4'h0/* 0*/, rThreadEncoder_io_chosen};
  assign T125 = ! T126;
  assign T126 = T127 == 5'h0/* 0*/;
  assign T127 = {4'h0/* 0*/, vThreadEncoder_io_chosen};
  assign T128 = T129 || partialAccumulatorMem_valid_received_0;
  assign T129 = partialAccumulatorMemPort_rep_valid && T130;
  assign T130 = partialAccumulatorMemPort_rep_tag == T131;
  assign T131 = {5'h0/* 0*/, 5'h0/* 0*/};
  assign T132 = subStateTh_0 == 1'h1/* 1*/;
  assign T133 = T138 && T134;
  assign T134 = T136 == T135;
  assign T135 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T136 = State_0 & T137;
  assign T137 = {4'h8/* 8*/{T5}};
  assign T138 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T139 = T145 || T140;
  assign T140 = T141 && T5;
  assign T141 = T144 && T142;
  assign T142 = T136 == T143;
  assign T143 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign T144 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T145 = T151 || T146;
  assign T146 = T147 && T5;
  assign T147 = T150 && T148;
  assign T148 = T136 == T149;
  assign T149 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T150 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T151 = T157 || T152;
  assign T152 = T153 && T5;
  assign T153 = T156 && T154;
  assign T154 = T136 == T155;
  assign T155 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T156 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T157 = T163 || T158;
  assign T158 = T159 && T5;
  assign T159 = T162 && T160;
  assign T160 = T136 == T161;
  assign T161 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T162 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T163 = T169 || T164;
  assign T164 = T165 && T5;
  assign T165 = T168 && T166;
  assign T166 = T136 == T167;
  assign T167 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T168 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T169 = T175 || T170;
  assign T170 = T171 && T22;
  assign T171 = T172 && io_out_ready;
  assign T172 = T174 && T173;
  assign T173 = T20 == 8'hff/* 255*/;
  assign T174 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T175 = T179 && T176;
  assign T176 = T177;
  assign T177 = T178[1'h0/* 0*/:1'h0/* 0*/];
  assign T178 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T179 = T180 && io_in_valid;
  assign T180 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T181 = T4 ? 8'hff/* 255*/ : T182;
  assign T182 = T140 ? GS_WRITE__State : T183;
  assign T183 = T146 ? T216 : T184;
  assign T184 = T152 ? T215 : T185;
  assign T185 = T158 ? T214 : T186;
  assign T186 = T164 ? T213 : T187;
  assign T187 = T170 ? T190 : T188;
  assign T188 = T175 ? T189 : State_0;
  assign T189 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T190 = EmitReturnState_0 & T191;
  assign T191 = {4'h8/* 8*/{T22}};
  assign T192 = T4 ? GS_SEND__EmitReturnState : EmitReturnState_0;
  assign GS_SEND__EmitReturnState = T211 ? GS_SEND__State : T193;
  assign T193 = T197 ? 8'h0/* 0*/ : T194;
  assign T194 = T195;
  assign T195 = EmitReturnState_0 & T196;
  assign T196 = {4'h8/* 8*/{T5}};
  assign T197 = GS_SEND__centeroidIndex == 32'h3/* 3*/;
  assign GS_SEND__centeroidIndex = T210 ? 32'h0/* 0*/ : T198;
  assign T198 = GS_SEND__pMemInGlobal_addr + 32'h1/* 1*/;
  assign GS_SEND__pMemInGlobal_addr = T199;
  assign T199 = centeroidIndex_0 & T200;
  assign T200 = {6'h20/* 32*/{T5}};
  assign T201 = T140 || T4;
  assign T202 = T4 ? GS_SEND__centeroidIndex : T203;
  assign T203 = T140 ? GS_WRITE__centeroidIndex : centeroidIndex_0;
  assign GS_WRITE__centeroidIndex = T205 ? 32'h0/* 0*/ : T204;
  assign T204 = T199;
  assign T205 = T206 == 33'h2/* 2*/;
  assign T206 = {17'h0/* 0*/, T207};
  assign T207 = Input_0_centeroidIndex & T208;
  assign T208 = {5'h10/* 16*/{T5}};
  assign T209 = T175 ? io_in_bits_centeroidIndex : Input_0_centeroidIndex;
  assign T210 = T198 == 32'h3/* 3*/;
  assign T211 = ! T212;
  assign T212 = GS_SEND__centeroidIndex == 32'h3/* 3*/;
  assign T213 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T214 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T215 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T216 = {5'h0/* 0*/, 3'h5/* 5*/};
  assign GS_WRITE__State = T222 ? 8'h0/* 0*/ : T217;
  assign T217 = T220 ? T219 : T218;
  assign T219 = {5'h0/* 0*/, 3'h6/* 6*/};
  assign T220 = T221 == 33'h2/* 2*/;
  assign T221 = {17'h0/* 0*/, T207};
  assign T222 = ! T223;
  assign T223 = T224 == 33'h2/* 2*/;
  assign T224 = {17'h0/* 0*/, T207};
  assign T225 = subStateTh_0 == 1'h0/* 0*/;
  assign io_out_tag = T226;
  assign T226 = inputTag_0 & T227;
  assign T227 = {4'ha/* 10*/{T22}};
  assign T228 = T175 ? io_in_tag : inputTag_0;
  assign io_out_valid = T229;
  assign T229 = T231 && T230;
  assign T230 = T20 == 8'hff/* 255*/;
  assign T231 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign io_out_bits_centeroidsFinished = T232;
  assign T232 = Output_0_centeroidsFinished & T22;
  assign T233 = T4 ? GS_SEND__Output_centeroidsFinished : Output_0_centeroidsFinished;
  assign GS_SEND__Output_centeroidsFinished = T234;
  assign T234 = Output_0_centeroidsFinished & T5;
  assign io_out_bits_centeroidIndex = T235;
  assign T235 = Output_0_centeroidIndex & T236;
  assign T236 = {5'h10/* 16*/{T22}};
  assign T237 = T4 ? GS_SEND__Output_centeroidIndex : Output_0_centeroidIndex;
  assign GS_SEND__Output_centeroidIndex = T238;
  assign T238 = Output_0_centeroidIndex & T239;
  assign T239 = {5'h10/* 16*/{T5}};
  assign io_out_bits_pointsFinished = T240;
  assign T240 = Output_0_pointsFinished & T22;
  assign T241 = T4 ? GS_SEND__Output_pointsFinished : Output_0_pointsFinished;
  assign GS_SEND__Output_pointsFinished = T242;
  assign T242 = Output_0_pointsFinished & T5;
  assign io_out_bits_point_y = T243;
  assign T243 = Output_0_point_y & T244;
  assign T244 = {7'h40/* 64*/{T22}};
  assign T245 = T4 ? partialAccumulatorMemPort_rep_bits_data_y : Output_0_point_y;
  assign partialAccumulatorMemPort_rep_bits_data_y = mainOff_partialAccumulatorMem_rep_bits_data_y;
  assign io_out_bits_point_z = T246;
  assign T246 = Output_0_point_z & T247;
  assign T247 = {7'h40/* 64*/{T22}};
  assign T248 = T4 ? partialAccumulatorMemPort_rep_bits_data_z : Output_0_point_z;
  assign partialAccumulatorMemPort_rep_bits_data_z = mainOff_partialAccumulatorMem_rep_bits_data_z;
  assign io_out_bits_point_x = T249;
  assign T249 = Output_0_point_x & T250;
  assign T250 = {7'h40/* 64*/{T22}};
  assign T251 = T4 ? partialAccumulatorMemPort_rep_bits_data_x : Output_0_point_x;
  assign partialAccumulatorMemPort_rep_bits_data_x = mainOff_partialAccumulatorMem_rep_bits_data_x;
  RREncode_39 rThreadEncoder(
       .io_valid_0( T25 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_40 vThreadEncoder(
       .io_valid_0( T8 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_41 sThreadEncoder(
       .io_valid_0( T1 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T3) begin
      State_0 <= T181;
    end
    addPortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T12;
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T26;
    addPortHadReadyRequest <= reset ? 1'h0/* 0*/ : T40;
    add_ready_received <= reset ? 1'h0/* 0*/ : T44;
    partialAccumulatorMem_valid_received_0 <= reset ? 1'h0/* 0*/ : T68;
    partialAccumulatorMemPortHadReadyRequest <= reset ? 1'h0/* 0*/ : T79;
    partialAccumulatorMem_ready_received <= reset ? 1'h0/* 0*/ : T83;
    add_valid_received_0 <= reset ? 1'h0/* 0*/ : T99;
    partialAccumulatorMemPortHadValidRequest_0 <= reset ? 1'h0/* 0*/ : T120;
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T4) begin
      EmitReturnState_0 <= T192;
    end
    if(reset) begin
      centeroidIndex_0 <= 32'h0/* 0*/;
    end else if(T201) begin
      centeroidIndex_0 <= T202;
    end
    if(T175) begin
      Input_0_centeroidIndex <= T209;
    end
    if(T175) begin
      inputTag_0 <= T228;
    end
    if(T4) begin
      Output_0_centeroidsFinished <= T233;
    end
    if(T4) begin
      Output_0_centeroidIndex <= T237;
    end
    if(T4) begin
      Output_0_pointsFinished <= T241;
    end
    if(T4) begin
      Output_0_point_y <= T245;
    end
    if(T4) begin
      Output_0_point_z <= T248;
    end
    if(T4) begin
      Output_0_point_x <= T251;
    end
  end
endmodule

module spMemComponent_2(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [9:0] io_in_bits_addr,
    input  io_in_bits_rw,
    input [191:0] io_in_bits_wData,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[191:0] io_out_bits_rData,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  reg[9:0] tagReg;
  reg[0:0] hasReqReg;

  assign io_out_tag = tagReg;
  assign io_out_valid = hasReqReg;
  assign io_in_ready = io_out_ready;

  always @(posedge clk) begin
    tagReg <= io_in_tag;
    hasReqReg <= reset ? 1'h0/* 0*/ : io_in_valid;
  end
endmodule

module gOffloadedComponent_13(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  mainOff_add_req_ready,
    output mainOff_add_req_valid,
    output[63:0] mainOff_add_req_bits_in1,
    output[63:0] mainOff_add_req_bits_in2,
    output[9:0] mainOff_add_req_tag,
    output mainOff_add_rep_ready,
    input  mainOff_add_rep_valid,
    input [63:0] mainOff_add_rep_bits_out,
    input [9:0] mainOff_add_rep_tag);

  wire mainComp_io_in_ready;
  wire mainComp_mainOff_add_rep_ready;
  wire mainComp_mainOff_add_req_valid;
  wire[9:0] offComp_io_out_tag;
  wire[9:0] mainComp_mainOff_partialAccumulatorMem_req_tag;
  wire offComp_io_out_valid;
  wire mainComp_mainOff_partialAccumulatorMem_req_valid;
  wire offComp_io_in_ready;
  wire mainComp_mainOff_partialAccumulatorMem_rep_ready;
  wire[9:0] mainComp_mainOff_add_req_tag;
  wire[9:0] mainComp_io_out_tag;
  wire mainComp_io_out_valid;
  wire mainComp_io_out_bits_centeroidsFinished;
  wire[15:0] mainComp_io_out_bits_centeroidIndex;
  wire mainComp_io_out_bits_pointsFinished;
  wire[63:0] mainComp_io_out_bits_point_y;
  wire[63:0] mainComp_io_out_bits_point_z;
  wire[63:0] mainComp_io_out_bits_point_x;

  assign io_in_ready = mainComp_io_in_ready;
  assign mainOff_add_rep_ready = mainComp_mainOff_add_rep_ready;
  assign mainOff_add_req_valid = mainComp_mainOff_add_req_valid;
  assign mainOff_add_req_tag = mainComp_mainOff_add_req_tag;
  assign io_out_tag = mainComp_io_out_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_out_bits_centeroidsFinished = mainComp_io_out_bits_centeroidsFinished;
  assign io_out_bits_centeroidIndex = mainComp_io_out_bits_centeroidIndex;
  assign io_out_bits_pointsFinished = mainComp_io_out_bits_pointsFinished;
  assign io_out_bits_point_y = mainComp_io_out_bits_point_y;
  assign io_out_bits_point_z = mainComp_io_out_bits_point_z;
  assign io_out_bits_point_x = mainComp_io_out_bits_point_x;
  KReduce mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished(  ),
       .io_in_bits_pointsFinished(  ),
       .io_in_bits_centeroidIndex( io_in_bits_centeroidIndex ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_centeroidsFinished( mainComp_io_out_bits_centeroidsFinished ),
       .io_out_bits_pointsFinished( mainComp_io_out_bits_pointsFinished ),
       .io_out_bits_centeroidIndex( mainComp_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x( mainComp_io_out_bits_point_x ),
       .io_out_bits_point_y( mainComp_io_out_bits_point_y ),
       .io_out_bits_point_z( mainComp_io_out_bits_point_z ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_partialAccumulatorMem_req_ready( offComp_io_in_ready ),
       .mainOff_partialAccumulatorMem_req_valid( mainComp_mainOff_partialAccumulatorMem_req_valid ),
       .mainOff_partialAccumulatorMem_req_bits_rw(  ),
       .mainOff_partialAccumulatorMem_req_bits_addr(  ),
       .mainOff_partialAccumulatorMem_req_bits_data_x(  ),
       .mainOff_partialAccumulatorMem_req_bits_data_y(  ),
       .mainOff_partialAccumulatorMem_req_bits_data_z(  ),
       .mainOff_partialAccumulatorMem_req_tag( mainComp_mainOff_partialAccumulatorMem_req_tag ),
       .mainOff_partialAccumulatorMem_rep_ready( mainComp_mainOff_partialAccumulatorMem_rep_ready ),
       .mainOff_partialAccumulatorMem_rep_valid( offComp_io_out_valid ),
       .mainOff_partialAccumulatorMem_rep_bits_data_x(  ),
       .mainOff_partialAccumulatorMem_rep_bits_data_y(  ),
       .mainOff_partialAccumulatorMem_rep_bits_data_z(  ),
       .mainOff_partialAccumulatorMem_rep_tag( offComp_io_out_tag ),
       .mainOff_add_req_ready( mainOff_add_req_ready ),
       .mainOff_add_req_valid( mainComp_mainOff_add_req_valid ),
       .mainOff_add_req_bits_in1(  ),
       .mainOff_add_req_bits_in2(  ),
       .mainOff_add_req_tag( mainComp_mainOff_add_req_tag ),
       .mainOff_add_rep_ready( mainComp_mainOff_add_rep_ready ),
       .mainOff_add_rep_valid( mainOff_add_rep_valid ),
       .mainOff_add_rep_bits_out(  ),
       .mainOff_add_rep_tag( mainOff_add_rep_tag ));
  spMemComponent_2 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_partialAccumulatorMem_req_valid ),
       .io_in_bits_addr(  ),
       .io_in_bits_rw(  ),
       .io_in_bits_wData(  ),
       .io_in_tag( mainComp_mainOff_partialAccumulatorMem_req_tag ),
       .io_out_ready( mainComp_mainOff_partialAccumulatorMem_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_rData(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module RREncode_42(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_43(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module RREncode_44(
    input  io_valid_0,
    output io_chosen,
    input  io_ready);

  wire choose;

  assign io_chosen = choose;
  assign choose = io_valid_0 ? 1'h0/* 0*/ : 1'h1/* 1*/;
endmodule

module adder_6(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [63:0] io_in_bits_in1,
    input [63:0] io_in_bits_in2,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output[63:0] io_out_bits_out,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire T0;
  wire sThreadEncoder_io_chosen;
  wire T1;
  wire T2;
  reg[7:0] State_0;
  wire T3;
  wire T4;
  wire T5;
  wire T6;
  wire[1:0] T7;
  wire vThreadEncoder_io_chosen;
  wire T8;
  wire AllOffloadsValid_0;
  wire T9;
  reg[0:0] subStateTh_0;
  wire T10;
  wire T11;
  wire T12;
  wire T13;
  wire T14;
  wire T15;
  wire T16;
  wire T17;
  wire T18;
  wire rThreadEncoder_io_chosen;
  wire T19;
  wire AllOffloadsReady;
  wire T20;
  wire T21;
  wire[7:0] T22;
  wire[7:0] T23;
  wire[7:0] T24;
  wire T25;
  wire T26;
  wire T27;
  wire T28;
  wire T29;
  wire[7:0] T30;
  wire T31;
  wire T32;
  wire T33;
  wire T34;
  wire T35;
  wire[7:0] T36;
  wire T37;
  wire T38;
  wire T39;
  wire T40;
  wire T41;
  wire[7:0] T42;
  wire T43;
  wire T44;
  wire T45;
  wire T46;
  wire T47;
  wire[1:0] T48;
  wire T49;
  wire T50;
  wire T51;
  wire[7:0] T52;
  wire[7:0] T53;
  wire T54;
  wire T55;
  wire T56;
  wire T57;
  wire[1:0] T58;
  wire T59;
  wire T60;
  wire[7:0] T61;
  wire[7:0] T62;
  wire[7:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[7:0] T66;
  wire[7:0] T67;
  wire[7:0] T68;
  wire[7:0] T69;
  reg[7:0] EmitReturnState_0;
  wire[7:0] T70;
  reg[7:0] GS_step1__State__rviReg;
  wire T71;
  wire T72;
  wire[7:0] T73;
  wire T74;
  wire[7:0] T75;
  wire[7:0] T76;
  reg[7:0] GS_step2__State__rviReg;
  wire T77;
  wire T78;
  wire[7:0] T79;
  wire T80;
  wire[7:0] T81;
  wire[7:0] T82;
  reg[7:0] GS_step3__State__rviReg;
  wire T83;
  wire T84;
  wire[7:0] T85;
  wire T86;
  wire[7:0] T87;
  wire[7:0] T88;
  wire T89;
  wire[9:0] T90;
  wire[9:0] T91;
  reg[9:0] inputTag_0;
  wire[9:0] T92;
  wire T93;
  wire T94;
  wire T95;

  assign io_in_ready = T0;
  assign T0 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T1 = T89 && T2;
  assign T2 = State_0 == 8'h0/* 0*/;
  assign T3 = T26 || T4;
  assign T4 = T20 && T5;
  assign T5 = T6;
  assign T6 = T7[1'h0/* 0*/:1'h0/* 0*/];
  assign T7 = 1'h1/* 1*/ << vThreadEncoder_io_chosen;
  assign T8 = T9 && AllOffloadsValid_0;
  assign AllOffloadsValid_0 = 1'h1/* 1*/;
  assign T9 = subStateTh_0 == 1'h1/* 1*/;
  assign T10 = T13 ? 1'h1/* 1*/ : T11;
  assign T11 = T12 ? 1'h0/* 0*/ : subStateTh_0;
  assign T12 = 1'h0/* 0*/ == vThreadEncoder_io_chosen;
  assign T13 = T15 && T14;
  assign T14 = State_0 != 8'hff/* 255*/;
  assign T15 = T17 && T16;
  assign T16 = State_0 != 8'h0/* 0*/;
  assign T17 = AllOffloadsReady && T18;
  assign T18 = 1'h0/* 0*/ == rThreadEncoder_io_chosen;
  assign T19 = subStateTh_0 == 1'h0/* 0*/;
  assign AllOffloadsReady = 1'h1/* 1*/;
  assign T20 = T25 && T21;
  assign T21 = T23 == T22;
  assign T22 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T23 = State_0 & T24;
  assign T24 = {4'h8/* 8*/{T5}};
  assign T25 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T26 = T32 || T27;
  assign T27 = T28 && T5;
  assign T28 = T31 && T29;
  assign T29 = T23 == T30;
  assign T30 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T31 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T32 = T38 || T33;
  assign T33 = T34 && T5;
  assign T34 = T37 && T35;
  assign T35 = T23 == T36;
  assign T36 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T37 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T38 = T44 || T39;
  assign T39 = T40 && T5;
  assign T40 = T43 && T41;
  assign T41 = T23 == T42;
  assign T42 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T43 = vThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T44 = T55 || T45;
  assign T45 = T49 && T46;
  assign T46 = T47;
  assign T47 = T48[1'h0/* 0*/:1'h0/* 0*/];
  assign T48 = 1'h1/* 1*/ << rThreadEncoder_io_chosen;
  assign T49 = T50 && io_out_ready;
  assign T50 = T54 && T51;
  assign T51 = T52 == 8'hff/* 255*/;
  assign T52 = State_0 & T53;
  assign T53 = {4'h8/* 8*/{T46}};
  assign T54 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T55 = T59 && T56;
  assign T56 = T57;
  assign T57 = T58[1'h0/* 0*/:1'h0/* 0*/];
  assign T58 = 1'h1/* 1*/ << sThreadEncoder_io_chosen;
  assign T59 = T60 && io_in_valid;
  assign T60 = sThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T61 = T4 ? 8'hff/* 255*/ : T62;
  assign T62 = T27 ? GS_step3__State__rviReg : T63;
  assign T63 = T33 ? GS_step2__State__rviReg : T64;
  assign T64 = T39 ? GS_step1__State__rviReg : T65;
  assign T65 = T45 ? T68 : T66;
  assign T66 = T55 ? T67 : State_0;
  assign T67 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T68 = EmitReturnState_0 & T69;
  assign T69 = {4'h8/* 8*/{T46}};
  assign T70 = T4 ? 8'h0/* 0*/ : EmitReturnState_0;
  assign T71 = T74 && T72;
  assign T72 = T52 == T73;
  assign T73 = {7'h0/* 0*/, 1'h1/* 1*/};
  assign T74 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T75 = T71 ? T76 : GS_step1__State__rviReg;
  assign T76 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T77 = T80 && T78;
  assign T78 = T52 == T79;
  assign T79 = {6'h0/* 0*/, 2'h2/* 2*/};
  assign T80 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T81 = T77 ? T82 : GS_step2__State__rviReg;
  assign T82 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T83 = T86 && T84;
  assign T84 = T52 == T85;
  assign T85 = {6'h0/* 0*/, 2'h3/* 3*/};
  assign T86 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  assign T87 = T83 ? T88 : GS_step3__State__rviReg;
  assign T88 = {5'h0/* 0*/, 3'h4/* 4*/};
  assign T89 = subStateTh_0 == 1'h0/* 0*/;
  assign io_out_tag = T90;
  assign T90 = inputTag_0 & T91;
  assign T91 = {4'ha/* 10*/{T46}};
  assign T92 = T55 ? io_in_tag : inputTag_0;
  assign io_out_valid = T93;
  assign T93 = T95 && T94;
  assign T94 = T52 == 8'hff/* 255*/;
  assign T95 = rThreadEncoder_io_chosen != 1'h1/* 1*/;
  RREncode_42 rThreadEncoder(
       .io_valid_0( T19 ),
       .io_chosen( rThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_43 vThreadEncoder(
       .io_valid_0( T8 ),
       .io_chosen( vThreadEncoder_io_chosen ),
       .io_ready(  ));
  RREncode_44 sThreadEncoder(
       .io_valid_0( T1 ),
       .io_chosen( sThreadEncoder_io_chosen ),
       .io_ready(  ));

  always @(posedge clk) begin
    if(reset) begin
      State_0 <= 8'h0/* 0*/;
    end else if(T3) begin
      State_0 <= T61;
    end
    subStateTh_0 <= reset ? 1'h0/* 0*/ : T10;
    if(reset) begin
      EmitReturnState_0 <= 8'h0/* 0*/;
    end else if(T4) begin
      EmitReturnState_0 <= T70;
    end
    if(T71) begin
      GS_step1__State__rviReg <= T75;
    end
    if(T77) begin
      GS_step2__State__rviReg <= T81;
    end
    if(T83) begin
      GS_step3__State__rviReg <= T87;
    end
    if(T55) begin
      inputTag_0 <= T92;
    end
  end
endmodule

module gOffloadedComponent_14(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire mainComp_io_in_ready;
  wire offComp_io_in_ready;
  wire mainComp_mainOff_add_rep_ready;
  wire mainComp_mainOff_add_req_valid;
  wire[9:0] offComp_io_out_tag;
  wire[9:0] mainComp_mainOff_add_req_tag;
  wire offComp_io_out_valid;
  wire[9:0] mainComp_io_out_tag;
  wire mainComp_io_out_valid;
  wire mainComp_io_out_bits_centeroidsFinished;
  wire[15:0] mainComp_io_out_bits_centeroidIndex;
  wire mainComp_io_out_bits_pointsFinished;
  wire[63:0] mainComp_io_out_bits_point_y;
  wire[63:0] mainComp_io_out_bits_point_z;
  wire[63:0] mainComp_io_out_bits_point_x;

  assign io_in_ready = mainComp_io_in_ready;
  assign io_out_tag = mainComp_io_out_tag;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_out_bits_centeroidsFinished = mainComp_io_out_bits_centeroidsFinished;
  assign io_out_bits_centeroidIndex = mainComp_io_out_bits_centeroidIndex;
  assign io_out_bits_pointsFinished = mainComp_io_out_bits_pointsFinished;
  assign io_out_bits_point_y = mainComp_io_out_bits_point_y;
  assign io_out_bits_point_z = mainComp_io_out_bits_point_z;
  assign io_out_bits_point_x = mainComp_io_out_bits_point_x;
  gOffloadedComponent_13 mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished(  ),
       .io_in_bits_pointsFinished(  ),
       .io_in_bits_centeroidIndex( io_in_bits_centeroidIndex ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits_centeroidsFinished( mainComp_io_out_bits_centeroidsFinished ),
       .io_out_bits_pointsFinished( mainComp_io_out_bits_pointsFinished ),
       .io_out_bits_centeroidIndex( mainComp_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x( mainComp_io_out_bits_point_x ),
       .io_out_bits_point_y( mainComp_io_out_bits_point_y ),
       .io_out_bits_point_z( mainComp_io_out_bits_point_z ),
       .io_out_tag( mainComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ),
       .mainOff_add_req_ready( offComp_io_in_ready ),
       .mainOff_add_req_valid( mainComp_mainOff_add_req_valid ),
       .mainOff_add_req_bits_in1(  ),
       .mainOff_add_req_bits_in2(  ),
       .mainOff_add_req_tag( mainComp_mainOff_add_req_tag ),
       .mainOff_add_rep_ready( mainComp_mainOff_add_rep_ready ),
       .mainOff_add_rep_valid( offComp_io_out_valid ),
       .mainOff_add_rep_bits_out(  ),
       .mainOff_add_rep_tag( offComp_io_out_tag ));
  adder_6 offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_add_req_valid ),
       .io_in_bits_in1(  ),
       .io_in_bits_in2(  ),
       .io_in_tag( mainComp_mainOff_add_req_tag ),
       .io_out_ready( mainComp_mainOff_add_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits_out(  ),
       .io_out_tag( offComp_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module gChainedComponent_1(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire source_io_in_ready;
  wire sink_io_in_ready;
  wire source_io_out_valid;
  wire[15:0] source_io_out_bits_centeroidIndex;
  wire[9:0] sink_io_out_tag;
  wire[9:0] source_io_out_tag;
  wire sink_io_out_valid;
  wire sink_io_out_bits_centeroidsFinished;
  wire[15:0] sink_io_out_bits_centeroidIndex;
  wire sink_io_out_bits_pointsFinished;
  wire[63:0] sink_io_out_bits_point_y;
  wire[63:0] sink_io_out_bits_point_z;
  wire[63:0] sink_io_out_bits_point_x;

  assign io_in_ready = source_io_in_ready;
  assign io_out_tag = sink_io_out_tag;
  assign io_out_valid = sink_io_out_valid;
  assign io_out_bits_centeroidsFinished = sink_io_out_bits_centeroidsFinished;
  assign io_out_bits_centeroidIndex = sink_io_out_bits_centeroidIndex;
  assign io_out_bits_pointsFinished = sink_io_out_bits_pointsFinished;
  assign io_out_bits_point_y = sink_io_out_bits_point_y;
  assign io_out_bits_point_z = sink_io_out_bits_point_z;
  assign io_out_bits_point_x = sink_io_out_bits_point_x;
  gChainedComponent source(.clk(clk), .reset(reset),
       .io_in_ready( source_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( sink_io_in_ready ),
       .io_out_valid( source_io_out_valid ),
       .io_out_bits_centeroidsFinished(  ),
       .io_out_bits_pointsFinished(  ),
       .io_out_bits_centeroidIndex( source_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x(  ),
       .io_out_bits_point_y(  ),
       .io_out_bits_point_z(  ),
       .io_out_tag( source_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
  gOffloadedComponent_14 sink(.clk(clk), .reset(reset),
       .io_in_ready( sink_io_in_ready ),
       .io_in_valid( source_io_out_valid ),
       .io_in_bits_centeroidsFinished(  ),
       .io_in_bits_pointsFinished(  ),
       .io_in_bits_centeroidIndex( source_io_out_bits_centeroidIndex ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( source_io_out_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( sink_io_out_valid ),
       .io_out_bits_centeroidsFinished( sink_io_out_bits_centeroidsFinished ),
       .io_out_bits_pointsFinished( sink_io_out_bits_pointsFinished ),
       .io_out_bits_centeroidIndex( sink_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x( sink_io_out_bits_point_x ),
       .io_out_bits_point_y( sink_io_out_bits_point_y ),
       .io_out_bits_point_z( sink_io_out_bits_point_z ),
       .io_out_tag( sink_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

module Top(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input  io_in_bits_centeroidsFinished,
    input  io_in_bits_pointsFinished,
    input [15:0] io_in_bits_centeroidIndex,
    input [63:0] io_in_bits_point_x,
    input [63:0] io_in_bits_point_y,
    input [63:0] io_in_bits_point_z,
    input [9:0] io_in_tag,
    input  io_out_ready,
    output io_out_valid,
    output io_out_bits_centeroidsFinished,
    output io_out_bits_pointsFinished,
    output[15:0] io_out_bits_centeroidIndex,
    output[63:0] io_out_bits_point_x,
    output[63:0] io_out_bits_point_y,
    output[63:0] io_out_bits_point_z,
    output[9:0] io_out_tag,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [19:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[19:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType);

  wire generatedTop_io_in_ready;
  wire[9:0] generatedTop_io_out_tag;
  wire generatedTop_io_out_valid;
  wire generatedTop_io_out_bits_centeroidsFinished;
  wire[15:0] generatedTop_io_out_bits_centeroidIndex;
  wire generatedTop_io_out_bits_pointsFinished;
  wire[63:0] generatedTop_io_out_bits_point_y;
  wire[63:0] generatedTop_io_out_bits_point_z;
  wire[63:0] generatedTop_io_out_bits_point_x;

  assign io_in_ready = generatedTop_io_in_ready;
  assign io_out_tag = generatedTop_io_out_tag;
  assign io_out_valid = generatedTop_io_out_valid;
  assign io_out_bits_centeroidsFinished = generatedTop_io_out_bits_centeroidsFinished;
  assign io_out_bits_centeroidIndex = generatedTop_io_out_bits_centeroidIndex;
  assign io_out_bits_pointsFinished = generatedTop_io_out_bits_pointsFinished;
  assign io_out_bits_point_y = generatedTop_io_out_bits_point_y;
  assign io_out_bits_point_z = generatedTop_io_out_bits_point_z;
  assign io_out_bits_point_x = generatedTop_io_out_bits_point_x;
  gChainedComponent_1 generatedTop(.clk(clk), .reset(reset),
       .io_in_ready( generatedTop_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits_centeroidsFinished( io_in_bits_centeroidsFinished ),
       .io_in_bits_pointsFinished( io_in_bits_pointsFinished ),
       .io_in_bits_centeroidIndex(  ),
       .io_in_bits_point_x(  ),
       .io_in_bits_point_y(  ),
       .io_in_bits_point_z(  ),
       .io_in_tag( io_in_tag ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( generatedTop_io_out_valid ),
       .io_out_bits_centeroidsFinished( generatedTop_io_out_bits_centeroidsFinished ),
       .io_out_bits_pointsFinished( generatedTop_io_out_bits_pointsFinished ),
       .io_out_bits_centeroidIndex( generatedTop_io_out_bits_centeroidIndex ),
       .io_out_bits_point_x( generatedTop_io_out_bits_point_x ),
       .io_out_bits_point_y( generatedTop_io_out_bits_point_y ),
       .io_out_bits_point_z( generatedTop_io_out_bits_point_z ),
       .io_out_tag( generatedTop_io_out_tag ),
       .io_pcIn_valid(  ),
       .io_pcIn_bits_request(  ),
       .io_pcIn_bits_moduleId(  ),
       .io_pcIn_bits_portId(  ),
       .io_pcIn_bits_pcValue(  ),
       .io_pcIn_bits_pcType(  ),
       .io_pcOut_valid(  ),
       .io_pcOut_bits_request(  ),
       .io_pcOut_bits_moduleId(  ),
       .io_pcOut_bits_portId(  ),
       .io_pcOut_bits_pcValue(  ),
       .io_pcOut_bits_pcType(  ));
endmodule

