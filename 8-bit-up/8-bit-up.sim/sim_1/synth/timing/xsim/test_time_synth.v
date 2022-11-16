// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Nov 15 22:57:47 2022
// Host        : LAPTOP-5U0L8N8Q running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/8-bit-microprocessor/8-bit-up/8-bit-up.sim/sim_1/synth/timing/xsim/test_time_synth.v
// Design      : pc
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IBUF_UNIQ_BASE_
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

module IBUF_HD1
   (O,
    I);
  output O;
  input I;

  wire I;
  wire O;
  wire OUT;
  wire NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED;
  wire NLW_IBUFCTRL_INST_T_UNCONNECTED;
  wire NLW_INBUF_INST_OSC_EN_UNCONNECTED;
  wire NLW_INBUF_INST_VREF_UNCONNECTED;
  wire [3:0]NLW_INBUF_INST_OSC_UNCONNECTED;

  IBUFCTRL IBUFCTRL_INST
       (.I(OUT),
        .IBUFDISABLE(NLW_IBUFCTRL_INST_IBUFDISABLE_UNCONNECTED),
        .INTERMDISABLE(NLW_IBUFCTRL_INST_INTERMDISABLE_UNCONNECTED),
        .O(O),
        .T(NLW_IBUFCTRL_INST_T_UNCONNECTED));
  INBUF INBUF_INST
       (.O(OUT),
        .OSC(NLW_INBUF_INST_OSC_UNCONNECTED[3:0]),
        .OSC_EN(NLW_INBUF_INST_OSC_EN_UNCONNECTED),
        .PAD(I),
        .VREF(NLW_INBUF_INST_VREF_UNCONNECTED));
endmodule

(* NotValidForBitStream *)
module pc
   (rst,
    clk,
    out_pc);
  input rst;
  input clk;
  output [7:0]out_pc;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]out_pc;
  wire \out_pc[7]_i_2_n_0 ;
  wire [7:0]out_pc_OBUF;
  wire [7:0]p_0_in;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("test_time_synth.sdf",,,,"tool_control");
end
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF_UNIQ_BASE_ clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \out_pc[0]_i_1 
       (.I0(out_pc_OBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out_pc[1]_i_1 
       (.I0(out_pc_OBUF[0]),
        .I1(out_pc_OBUF[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out_pc[2]_i_1 
       (.I0(out_pc_OBUF[0]),
        .I1(out_pc_OBUF[1]),
        .I2(out_pc_OBUF[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \out_pc[3]_i_1 
       (.I0(out_pc_OBUF[1]),
        .I1(out_pc_OBUF[0]),
        .I2(out_pc_OBUF[2]),
        .I3(out_pc_OBUF[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \out_pc[4]_i_1 
       (.I0(out_pc_OBUF[2]),
        .I1(out_pc_OBUF[0]),
        .I2(out_pc_OBUF[1]),
        .I3(out_pc_OBUF[3]),
        .I4(out_pc_OBUF[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out_pc[5]_i_1 
       (.I0(out_pc_OBUF[3]),
        .I1(out_pc_OBUF[1]),
        .I2(out_pc_OBUF[0]),
        .I3(out_pc_OBUF[2]),
        .I4(out_pc_OBUF[4]),
        .I5(out_pc_OBUF[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out_pc[6]_i_1 
       (.I0(\out_pc[7]_i_2_n_0 ),
        .I1(out_pc_OBUF[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \out_pc[7]_i_1 
       (.I0(\out_pc[7]_i_2_n_0 ),
        .I1(out_pc_OBUF[6]),
        .I2(out_pc_OBUF[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out_pc[7]_i_2 
       (.I0(out_pc_OBUF[5]),
        .I1(out_pc_OBUF[3]),
        .I2(out_pc_OBUF[1]),
        .I3(out_pc_OBUF[0]),
        .I4(out_pc_OBUF[2]),
        .I5(out_pc_OBUF[4]),
        .O(\out_pc[7]_i_2_n_0 ));
  OBUF \out_pc_OBUF[0]_inst 
       (.I(out_pc_OBUF[0]),
        .O(out_pc[0]));
  OBUF \out_pc_OBUF[1]_inst 
       (.I(out_pc_OBUF[1]),
        .O(out_pc[1]));
  OBUF \out_pc_OBUF[2]_inst 
       (.I(out_pc_OBUF[2]),
        .O(out_pc[2]));
  OBUF \out_pc_OBUF[3]_inst 
       (.I(out_pc_OBUF[3]),
        .O(out_pc[3]));
  OBUF \out_pc_OBUF[4]_inst 
       (.I(out_pc_OBUF[4]),
        .O(out_pc[4]));
  OBUF \out_pc_OBUF[5]_inst 
       (.I(out_pc_OBUF[5]),
        .O(out_pc[5]));
  OBUF \out_pc_OBUF[6]_inst 
       (.I(out_pc_OBUF[6]),
        .O(out_pc[6]));
  OBUF \out_pc_OBUF[7]_inst 
       (.I(out_pc_OBUF[7]),
        .O(out_pc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[0]),
        .Q(out_pc_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(out_pc_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(out_pc_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[3]),
        .Q(out_pc_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[4]),
        .Q(out_pc_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[5]),
        .Q(out_pc_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[6]),
        .Q(out_pc_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \out_pc_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in[7]),
        .Q(out_pc_OBUF[7]));
  IBUF_HD1 rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
