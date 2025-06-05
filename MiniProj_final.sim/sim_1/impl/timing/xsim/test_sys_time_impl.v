// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 13 15:30:25 2024
// Host        : LAPTOP-7A0336VO running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Xilinx/Vivado/2019.2/bin/3016_MiniProj/3016_MiniProj.sim/sim_1/impl/timing/xsim/test_sys_time_impl.v
// Design      : main_controller_unit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module count_1min
   (t1min,
    E,
    D,
    CLK,
    AR,
    t1min_en,
    Q,
    t8sec);
  output t1min;
  output [0:0]E;
  output [2:0]D;
  input CLK;
  input [0:0]AR;
  input t1min_en;
  input [2:0]Q;
  input t8sec;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \a1[0]_i_1__0_n_0 ;
  wire \a1[1]_i_1_n_0 ;
  wire \a1[2]_i_1_n_0 ;
  wire \a1[3]_i_1_n_0 ;
  wire \a1_reg_n_0_[0] ;
  wire \a1_reg_n_0_[1] ;
  wire \a1_reg_n_0_[2] ;
  wire \a1_reg_n_0_[3] ;
  wire t1min;
  wire t1min_en;
  wire t8sec;
  wire tc_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01FFFF01)) 
    \a1[0]_i_1__0 
       (.I0(\a1_reg_n_0_[1] ),
        .I1(\a1_reg_n_0_[3] ),
        .I2(\a1_reg_n_0_[2] ),
        .I3(\a1_reg_n_0_[0] ),
        .I4(t1min_en),
        .O(\a1[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAB55AAAB)) 
    \a1[1]_i_1 
       (.I0(\a1_reg_n_0_[1] ),
        .I1(\a1_reg_n_0_[3] ),
        .I2(\a1_reg_n_0_[2] ),
        .I3(\a1_reg_n_0_[0] ),
        .I4(t1min_en),
        .O(\a1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAA6E7)) 
    \a1[2]_i_1 
       (.I0(\a1_reg_n_0_[2] ),
        .I1(t1min_en),
        .I2(\a1_reg_n_0_[0] ),
        .I3(\a1_reg_n_0_[3] ),
        .I4(\a1_reg_n_0_[1] ),
        .O(\a1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAB9AB)) 
    \a1[3]_i_1 
       (.I0(\a1_reg_n_0_[3] ),
        .I1(\a1_reg_n_0_[1] ),
        .I2(\a1_reg_n_0_[0] ),
        .I3(t1min_en),
        .I4(\a1_reg_n_0_[2] ),
        .O(\a1[3]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a1[0]_i_1__0_n_0 ),
        .PRE(AR),
        .Q(\a1_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a1[1]_i_1_n_0 ),
        .PRE(AR),
        .Q(\a1_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a1[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(\a1_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a1[3]_i_1_n_0 ),
        .PRE(AR),
        .Q(\a1_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \nstate_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(t1min),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6626)) 
    \nstate_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(t1min),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3BC0)) 
    \nstate_reg[2]_i_1 
       (.I0(t1min),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \nstate_reg[2]_i_2 
       (.I0(t1min),
        .I1(Q[0]),
        .I2(t8sec),
        .O(E));
  LUT6 #(
    .INIT(64'h3333337700000045)) 
    tc_i_1
       (.I0(\a1_reg_n_0_[2] ),
        .I1(t1min_en),
        .I2(\a1_reg_n_0_[0] ),
        .I3(\a1_reg_n_0_[3] ),
        .I4(\a1_reg_n_0_[1] ),
        .I5(t1min),
        .O(tc_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tc_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tc_i_1_n_0),
        .Q(t1min));
endmodule

module count_8sec
   (t8sec,
    AR,
    tc_reg_0,
    CLK,
    Q,
    t1min,
    t8sec_en);
  output t8sec;
  output [0:0]AR;
  output [0:0]tc_reg_0;
  input CLK;
  input [0:0]Q;
  input t1min;
  input t8sec_en;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]Q;
  wire [2:0]a1;
  wire \a1[3]_i_1__0_n_0 ;
  wire \a1_reg_n_0_[0] ;
  wire \a1_reg_n_0_[1] ;
  wire \a1_reg_n_0_[2] ;
  wire \a1_reg_n_0_[3] ;
  wire t1min;
  wire t8sec;
  wire t8sec_en;
  wire tc_i_1__0_n_0;
  wire [0:0]tc_reg_0;

  LUT5 #(
    .INIT(32'h0F0EF0F0)) 
    \a1[0]_i_1 
       (.I0(\a1_reg_n_0_[3] ),
        .I1(\a1_reg_n_0_[2] ),
        .I2(\a1_reg_n_0_[0] ),
        .I3(\a1_reg_n_0_[1] ),
        .I4(t8sec_en),
        .O(a1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAA54AAAA)) 
    \a1[1]_i_1 
       (.I0(\a1_reg_n_0_[1] ),
        .I1(\a1_reg_n_0_[3] ),
        .I2(\a1_reg_n_0_[2] ),
        .I3(\a1_reg_n_0_[0] ),
        .I4(t8sec_en),
        .O(a1[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAAA6A2)) 
    \a1[2]_i_1 
       (.I0(\a1_reg_n_0_[2] ),
        .I1(t8sec_en),
        .I2(\a1_reg_n_0_[0] ),
        .I3(\a1_reg_n_0_[3] ),
        .I4(\a1_reg_n_0_[1] ),
        .O(a1[2]));
  LUT5 #(
    .INIT(32'hAAAAB9AB)) 
    \a1[3]_i_1__0 
       (.I0(\a1_reg_n_0_[3] ),
        .I1(\a1_reg_n_0_[1] ),
        .I2(\a1_reg_n_0_[0] ),
        .I3(t8sec_en),
        .I4(\a1_reg_n_0_[2] ),
        .O(\a1[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \a1[3]_i_2 
       (.I0(t8sec),
        .I1(Q),
        .I2(t1min),
        .O(AR));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(a1[0]),
        .Q(\a1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(a1[1]),
        .Q(\a1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(a1[2]),
        .Q(\a1_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\a1[3]_i_1__0_n_0 ),
        .PRE(AR),
        .Q(\a1_reg_n_0_[3] ));
  LUT3 #(
    .INIT(8'h35)) 
    \light_ew_reg[2]_i_2 
       (.I0(t8sec),
        .I1(t1min),
        .I2(Q),
        .O(tc_reg_0));
  LUT6 #(
    .INIT(64'h3333337700000045)) 
    tc_i_1__0
       (.I0(\a1_reg_n_0_[2] ),
        .I1(t8sec_en),
        .I2(\a1_reg_n_0_[0] ),
        .I3(\a1_reg_n_0_[3] ),
        .I4(\a1_reg_n_0_[1] ),
        .I5(t8sec),
        .O(tc_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tc_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(tc_i_1__0_n_0),
        .Q(t8sec));
endmodule

module datapath
   (E,
    tc_reg,
    D,
    t1min_en,
    Q,
    t8sec_en,
    CLK,
    AR);
  output [0:0]E;
  output [0:0]tc_reg;
  output [2:0]D;
  input t1min_en;
  input [2:0]Q;
  input t8sec_en;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clock1;
  wire t1min;
  wire t1min_en;
  wire t8sec;
  wire t8sec_en;
  wire [0:0]tc_reg;
  wire treset;

  frequency_divider freqdiv
       (.AR(AR),
        .CLK(clock1),
        .\a1_reg[25]_0 (CLK));
  count_1min signal_1min
       (.AR(treset),
        .CLK(clock1),
        .D(D),
        .E(E),
        .Q(Q),
        .t1min(t1min),
        .t1min_en(t1min_en),
        .t8sec(t8sec));
  count_8sec signal_8sec
       (.AR(treset),
        .CLK(clock1),
        .Q(Q[0]),
        .t1min(t1min),
        .t8sec(t8sec),
        .t8sec_en(t8sec_en),
        .tc_reg_0(tc_reg));
endmodule

module frequency_divider
   (CLK,
    \a1_reg[25]_0 ,
    AR);
  output CLK;
  input \a1_reg[25]_0 ;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [25:0]a101_in;
  wire a10_carry__0_i_1_n_0;
  wire a10_carry__0_i_2_n_0;
  wire a10_carry__0_i_3_n_0;
  wire a10_carry__0_i_4_n_0;
  wire a10_carry__0_n_0;
  wire a10_carry__1_i_1_n_0;
  wire a10_carry__1_i_2_n_0;
  wire a10_carry__1_i_3_n_0;
  wire a10_carry__1_i_4_n_0;
  wire a10_carry__1_n_0;
  wire a10_carry__2_i_1_n_0;
  wire a10_carry__2_i_2_n_0;
  wire a10_carry__2_i_3_n_0;
  wire a10_carry__2_i_4_n_0;
  wire a10_carry__2_n_0;
  wire a10_carry__3_i_1_n_0;
  wire a10_carry__3_i_2_n_0;
  wire a10_carry__3_i_3_n_0;
  wire a10_carry__3_i_4_n_0;
  wire a10_carry__3_n_0;
  wire a10_carry__4_i_1_n_0;
  wire a10_carry__4_i_2_n_0;
  wire a10_carry__4_i_3_n_0;
  wire a10_carry__4_i_4_n_0;
  wire a10_carry__4_n_0;
  wire a10_carry__5_i_1_n_0;
  wire a10_carry_i_1_n_0;
  wire a10_carry_i_2_n_0;
  wire a10_carry_i_3_n_0;
  wire a10_carry_i_4_n_0;
  wire a10_carry_n_0;
  wire \a1_reg[25]_0 ;
  wire \a1_reg_n_0_[0] ;
  wire \a1_reg_n_0_[10] ;
  wire \a1_reg_n_0_[11] ;
  wire \a1_reg_n_0_[12] ;
  wire \a1_reg_n_0_[13] ;
  wire \a1_reg_n_0_[14] ;
  wire \a1_reg_n_0_[15] ;
  wire \a1_reg_n_0_[16] ;
  wire \a1_reg_n_0_[17] ;
  wire \a1_reg_n_0_[18] ;
  wire \a1_reg_n_0_[19] ;
  wire \a1_reg_n_0_[1] ;
  wire \a1_reg_n_0_[20] ;
  wire \a1_reg_n_0_[21] ;
  wire \a1_reg_n_0_[22] ;
  wire \a1_reg_n_0_[23] ;
  wire \a1_reg_n_0_[24] ;
  wire \a1_reg_n_0_[25] ;
  wire \a1_reg_n_0_[2] ;
  wire \a1_reg_n_0_[3] ;
  wire \a1_reg_n_0_[4] ;
  wire \a1_reg_n_0_[5] ;
  wire \a1_reg_n_0_[6] ;
  wire \a1_reg_n_0_[7] ;
  wire \a1_reg_n_0_[8] ;
  wire \a1_reg_n_0_[9] ;
  wire clock1_reg_i_1_n_0;
  wire clock1_reg_i_2_n_0;
  wire clock1_reg_i_3_n_0;
  wire clock1_reg_i_4_n_0;
  wire clock1_reg_i_5_n_0;
  wire clock1_reg_i_6_n_0;
  wire clock1_reg_i_7_n_0;
  wire clock1_reg_i_8_n_0;
  wire clock1_reg_i_9_n_0;
  wire [2:0]NLW_a10_carry_CO_UNCONNECTED;
  wire [2:0]NLW_a10_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_a10_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_a10_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_a10_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_a10_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_a10_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_a10_carry__5_O_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 a10_carry
       (.CI(1'b0),
        .CO({a10_carry_n_0,NLW_a10_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\a1_reg_n_0_[0] ),
        .DI({\a1_reg_n_0_[4] ,\a1_reg_n_0_[3] ,\a1_reg_n_0_[2] ,\a1_reg_n_0_[1] }),
        .O(a101_in[4:1]),
        .S({a10_carry_i_1_n_0,a10_carry_i_2_n_0,a10_carry_i_3_n_0,a10_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 a10_carry__0
       (.CI(a10_carry_n_0),
        .CO({a10_carry__0_n_0,NLW_a10_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a1_reg_n_0_[8] ,\a1_reg_n_0_[7] ,\a1_reg_n_0_[6] ,\a1_reg_n_0_[5] }),
        .O(a101_in[8:5]),
        .S({a10_carry__0_i_1_n_0,a10_carry__0_i_2_n_0,a10_carry__0_i_3_n_0,a10_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__0_i_1
       (.I0(\a1_reg_n_0_[8] ),
        .O(a10_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__0_i_2
       (.I0(\a1_reg_n_0_[7] ),
        .O(a10_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__0_i_3
       (.I0(\a1_reg_n_0_[6] ),
        .O(a10_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__0_i_4
       (.I0(\a1_reg_n_0_[5] ),
        .O(a10_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 a10_carry__1
       (.CI(a10_carry__0_n_0),
        .CO({a10_carry__1_n_0,NLW_a10_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a1_reg_n_0_[12] ,\a1_reg_n_0_[11] ,\a1_reg_n_0_[10] ,\a1_reg_n_0_[9] }),
        .O(a101_in[12:9]),
        .S({a10_carry__1_i_1_n_0,a10_carry__1_i_2_n_0,a10_carry__1_i_3_n_0,a10_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_1
       (.I0(\a1_reg_n_0_[12] ),
        .O(a10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_2
       (.I0(\a1_reg_n_0_[11] ),
        .O(a10_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_3
       (.I0(\a1_reg_n_0_[10] ),
        .O(a10_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__1_i_4
       (.I0(\a1_reg_n_0_[9] ),
        .O(a10_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 a10_carry__2
       (.CI(a10_carry__1_n_0),
        .CO({a10_carry__2_n_0,NLW_a10_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a1_reg_n_0_[16] ,\a1_reg_n_0_[15] ,\a1_reg_n_0_[14] ,\a1_reg_n_0_[13] }),
        .O(a101_in[16:13]),
        .S({a10_carry__2_i_1_n_0,a10_carry__2_i_2_n_0,a10_carry__2_i_3_n_0,a10_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__2_i_1
       (.I0(\a1_reg_n_0_[16] ),
        .O(a10_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__2_i_2
       (.I0(\a1_reg_n_0_[15] ),
        .O(a10_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__2_i_3
       (.I0(\a1_reg_n_0_[14] ),
        .O(a10_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__2_i_4
       (.I0(\a1_reg_n_0_[13] ),
        .O(a10_carry__2_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 a10_carry__3
       (.CI(a10_carry__2_n_0),
        .CO({a10_carry__3_n_0,NLW_a10_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a1_reg_n_0_[20] ,\a1_reg_n_0_[19] ,\a1_reg_n_0_[18] ,\a1_reg_n_0_[17] }),
        .O(a101_in[20:17]),
        .S({a10_carry__3_i_1_n_0,a10_carry__3_i_2_n_0,a10_carry__3_i_3_n_0,a10_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__3_i_1
       (.I0(\a1_reg_n_0_[20] ),
        .O(a10_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__3_i_2
       (.I0(\a1_reg_n_0_[19] ),
        .O(a10_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__3_i_3
       (.I0(\a1_reg_n_0_[18] ),
        .O(a10_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__3_i_4
       (.I0(\a1_reg_n_0_[17] ),
        .O(a10_carry__3_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 a10_carry__4
       (.CI(a10_carry__3_n_0),
        .CO({a10_carry__4_n_0,NLW_a10_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a1_reg_n_0_[24] ,\a1_reg_n_0_[23] ,\a1_reg_n_0_[22] ,\a1_reg_n_0_[21] }),
        .O(a101_in[24:21]),
        .S({a10_carry__4_i_1_n_0,a10_carry__4_i_2_n_0,a10_carry__4_i_3_n_0,a10_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__4_i_1
       (.I0(\a1_reg_n_0_[24] ),
        .O(a10_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__4_i_2
       (.I0(\a1_reg_n_0_[23] ),
        .O(a10_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__4_i_3
       (.I0(\a1_reg_n_0_[22] ),
        .O(a10_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__4_i_4
       (.I0(\a1_reg_n_0_[21] ),
        .O(a10_carry__4_i_4_n_0));
  CARRY4 a10_carry__5
       (.CI(a10_carry__4_n_0),
        .CO(NLW_a10_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_a10_carry__5_O_UNCONNECTED[3:1],a101_in[25]}),
        .S({1'b0,1'b0,1'b0,a10_carry__5_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry__5_i_1
       (.I0(\a1_reg_n_0_[25] ),
        .O(a10_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry_i_1
       (.I0(\a1_reg_n_0_[4] ),
        .O(a10_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry_i_2
       (.I0(\a1_reg_n_0_[3] ),
        .O(a10_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry_i_3
       (.I0(\a1_reg_n_0_[2] ),
        .O(a10_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a10_carry_i_4
       (.I0(\a1_reg_n_0_[1] ),
        .O(a10_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \a1[0]_i_1 
       (.I0(\a1_reg_n_0_[0] ),
        .O(a101_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[0] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[0]),
        .Q(\a1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[10] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[10]),
        .Q(\a1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[11] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[11]),
        .Q(\a1_reg_n_0_[11] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[12] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[12]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[12] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[13] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[13]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[13] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[14] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[14]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[14] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[15] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[15]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[16] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[16]),
        .Q(\a1_reg_n_0_[16] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[17] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[17]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[18] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[18]),
        .Q(\a1_reg_n_0_[18] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[19] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[19]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[1] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[1]),
        .Q(\a1_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[20] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[20]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[20] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[21] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[21]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[21] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[22] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[22]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[22] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[23] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[23]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[24] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[24]),
        .Q(\a1_reg_n_0_[24] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[25] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[25]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[2] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[2]),
        .Q(\a1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[3] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[3]),
        .Q(\a1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[4] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[4]),
        .Q(\a1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[5] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[5]),
        .Q(\a1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[6] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[6]),
        .Q(\a1_reg_n_0_[6] ));
  FDPE #(
    .INIT(1'b1)) 
    \a1_reg[7] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .D(a101_in[7]),
        .PRE(clock1_reg_i_2_n_0),
        .Q(\a1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[8] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[8]),
        .Q(\a1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \a1_reg[9] 
       (.C(\a1_reg[25]_0 ),
        .CE(1'b1),
        .CLR(clock1_reg_i_2_n_0),
        .D(a101_in[9]),
        .Q(\a1_reg_n_0_[9] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    clock1_reg
       (.CLR(1'b0),
        .D(clock1_reg_i_1_n_0),
        .G(clock1_reg_i_2_n_0),
        .GE(1'b1),
        .Q(CLK));
  LUT3 #(
    .INIT(8'h74)) 
    clock1_reg_i_1
       (.I0(CLK),
        .I1(clock1_reg_i_3_n_0),
        .I2(AR),
        .O(clock1_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clock1_reg_i_2
       (.I0(clock1_reg_i_3_n_0),
        .I1(AR),
        .O(clock1_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    clock1_reg_i_3
       (.I0(clock1_reg_i_4_n_0),
        .I1(clock1_reg_i_5_n_0),
        .I2(clock1_reg_i_6_n_0),
        .I3(clock1_reg_i_7_n_0),
        .I4(clock1_reg_i_8_n_0),
        .I5(clock1_reg_i_9_n_0),
        .O(clock1_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    clock1_reg_i_4
       (.I0(\a1_reg_n_0_[16] ),
        .I1(\a1_reg_n_0_[15] ),
        .I2(\a1_reg_n_0_[14] ),
        .I3(\a1_reg_n_0_[13] ),
        .O(clock1_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    clock1_reg_i_5
       (.I0(\a1_reg_n_0_[18] ),
        .I1(\a1_reg_n_0_[17] ),
        .I2(\a1_reg_n_0_[19] ),
        .O(clock1_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clock1_reg_i_6
       (.I0(\a1_reg_n_0_[24] ),
        .I1(\a1_reg_n_0_[23] ),
        .I2(\a1_reg_n_0_[25] ),
        .I3(\a1_reg_n_0_[20] ),
        .I4(\a1_reg_n_0_[21] ),
        .I5(\a1_reg_n_0_[22] ),
        .O(clock1_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    clock1_reg_i_7
       (.I0(\a1_reg_n_0_[12] ),
        .I1(\a1_reg_n_0_[10] ),
        .I2(\a1_reg_n_0_[11] ),
        .I3(\a1_reg_n_0_[7] ),
        .I4(\a1_reg_n_0_[8] ),
        .I5(\a1_reg_n_0_[9] ),
        .O(clock1_reg_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    clock1_reg_i_8
       (.I0(\a1_reg_n_0_[5] ),
        .I1(\a1_reg_n_0_[4] ),
        .I2(\a1_reg_n_0_[6] ),
        .O(clock1_reg_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clock1_reg_i_9
       (.I0(\a1_reg_n_0_[1] ),
        .I1(\a1_reg_n_0_[0] ),
        .I2(\a1_reg_n_0_[3] ),
        .I3(\a1_reg_n_0_[2] ),
        .O(clock1_reg_i_9_n_0));
endmodule

(* ECO_CHECKSUM = "df964720" *) 
(* NotValidForBitStream *)
module main_controller_unit
   (clk,
    reset,
    light_ew,
    light_we,
    light_ns,
    light_sn,
    light_ws,
    light_en);
  input clk;
  input reset;
  output [2:0]light_ew;
  output [2:0]light_we;
  output [2:0]light_ns;
  output [2:0]light_sn;
  output [2:0]light_ws;
  output [2:0]light_en;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data_path_n_0;
  wire data_path_n_1;
  wire data_path_n_2;
  wire data_path_n_3;
  wire data_path_n_4;
  wire [2:0]light_en;
  wire [2:0]light_en_OBUF;
  wire [2:0]light_ew;
  wire \light_ew_reg[0]_i_1_n_0 ;
  wire \light_ew_reg[1]_i_1_n_0 ;
  wire \light_ew_reg[2]_i_1_n_0 ;
  wire [2:0]light_ns;
  wire [2:0]light_ns_OBUF;
  wire \light_ns_reg[0]_i_1_n_0 ;
  wire \light_ns_reg[1]_i_1_n_0 ;
  wire \light_ns_reg[2]_i_1_n_0 ;
  wire [2:0]light_sn;
  wire [2:0]light_sn_OBUF;
  wire \light_sn_reg[0]_i_1_n_0 ;
  wire \light_sn_reg[1]_i_1_n_0 ;
  wire \light_sn_reg[2]_i_1_n_0 ;
  wire [2:0]light_we;
  wire [2:0]light_we_OBUF;
  wire [2:0]light_ws;
  wire \light_ws_reg[0]_i_1_n_0 ;
  wire \light_ws_reg[1]_i_1_n_0 ;
  wire \light_ws_reg[2]_i_1_n_0 ;
  wire [2:0]nstate;
  wire [2:0]pstate;
  wire reset;
  wire reset_IBUF;
  wire t1min_en;
  wire t1min_en_reg_i_1_n_0;
  wire t8sec_en;

initial begin
 $sdf_annotate("test_sys_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  datapath data_path
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({data_path_n_2,data_path_n_3,data_path_n_4}),
        .E(data_path_n_0),
        .Q(pstate),
        .t1min_en(t1min_en),
        .t8sec_en(t8sec_en),
        .tc_reg(data_path_n_1));
  OBUF \light_en_OBUF[0]_inst 
       (.I(light_en_OBUF[0]),
        .O(light_en[0]));
  OBUF \light_en_OBUF[1]_inst 
       (.I(light_en_OBUF[1]),
        .O(light_en[1]));
  OBUF \light_en_OBUF[2]_inst 
       (.I(light_en_OBUF[2]),
        .O(light_en[2]));
  OBUF \light_ew_OBUF[0]_inst 
       (.I(light_we_OBUF[0]),
        .O(light_ew[0]));
  OBUF \light_ew_OBUF[1]_inst 
       (.I(light_we_OBUF[1]),
        .O(light_ew[1]));
  OBUF \light_ew_OBUF[2]_inst 
       (.I(light_we_OBUF[2]),
        .O(light_ew[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ew_reg[0] 
       (.CLR(1'b0),
        .D(\light_ew_reg[0]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_we_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \light_ew_reg[0]_i_1 
       (.I0(pstate[2]),
        .I1(pstate[1]),
        .O(\light_ew_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ew_reg[1] 
       (.CLR(1'b0),
        .D(\light_ew_reg[1]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_we_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \light_ew_reg[1]_i_1 
       (.I0(pstate[2]),
        .I1(pstate[0]),
        .I2(pstate[1]),
        .O(\light_ew_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ew_reg[2] 
       (.CLR(1'b0),
        .D(\light_ew_reg[2]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_we_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \light_ew_reg[2]_i_1 
       (.I0(pstate[2]),
        .I1(pstate[0]),
        .I2(pstate[1]),
        .O(\light_ew_reg[2]_i_1_n_0 ));
  OBUF \light_ns_OBUF[0]_inst 
       (.I(light_ns_OBUF[0]),
        .O(light_ns[0]));
  OBUF \light_ns_OBUF[1]_inst 
       (.I(light_ns_OBUF[1]),
        .O(light_ns[1]));
  OBUF \light_ns_OBUF[2]_inst 
       (.I(light_ns_OBUF[2]),
        .O(light_ns[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ns_reg[0] 
       (.CLR(1'b0),
        .D(\light_ns_reg[0]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_ns_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \light_ns_reg[0]_i_1 
       (.I0(pstate[2]),
        .I1(pstate[1]),
        .O(\light_ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ns_reg[1] 
       (.CLR(1'b0),
        .D(\light_ns_reg[1]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_ns_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \light_ns_reg[1]_i_1 
       (.I0(pstate[1]),
        .I1(pstate[0]),
        .I2(pstate[2]),
        .O(\light_ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ns_reg[2] 
       (.CLR(1'b0),
        .D(\light_ns_reg[2]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_ns_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \light_ns_reg[2]_i_1 
       (.I0(pstate[0]),
        .I1(pstate[1]),
        .I2(pstate[2]),
        .O(\light_ns_reg[2]_i_1_n_0 ));
  OBUF \light_sn_OBUF[0]_inst 
       (.I(light_sn_OBUF[0]),
        .O(light_sn[0]));
  OBUF \light_sn_OBUF[1]_inst 
       (.I(light_sn_OBUF[1]),
        .O(light_sn[1]));
  OBUF \light_sn_OBUF[2]_inst 
       (.I(light_sn_OBUF[2]),
        .O(light_sn[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_sn_reg[0] 
       (.CLR(1'b0),
        .D(\light_sn_reg[0]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_sn_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \light_sn_reg[0]_i_1 
       (.I0(pstate[1]),
        .I1(pstate[2]),
        .O(\light_sn_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_sn_reg[1] 
       (.CLR(1'b0),
        .D(\light_sn_reg[1]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_sn_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \light_sn_reg[1]_i_1 
       (.I0(pstate[2]),
        .I1(pstate[0]),
        .I2(pstate[1]),
        .O(\light_sn_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_sn_reg[2] 
       (.CLR(1'b0),
        .D(\light_sn_reg[2]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_sn_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \light_sn_reg[2]_i_1 
       (.I0(pstate[0]),
        .I1(pstate[2]),
        .I2(pstate[1]),
        .O(\light_sn_reg[2]_i_1_n_0 ));
  OBUF \light_we_OBUF[0]_inst 
       (.I(light_we_OBUF[0]),
        .O(light_we[0]));
  OBUF \light_we_OBUF[1]_inst 
       (.I(light_we_OBUF[1]),
        .O(light_we[1]));
  OBUF \light_we_OBUF[2]_inst 
       (.I(light_we_OBUF[2]),
        .O(light_we[2]));
  OBUF \light_ws_OBUF[0]_inst 
       (.I(light_en_OBUF[0]),
        .O(light_ws[0]));
  OBUF \light_ws_OBUF[1]_inst 
       (.I(light_en_OBUF[1]),
        .O(light_ws[1]));
  OBUF \light_ws_OBUF[2]_inst 
       (.I(light_en_OBUF[2]),
        .O(light_ws[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ws_reg[0] 
       (.CLR(1'b0),
        .D(\light_ws_reg[0]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_en_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \light_ws_reg[0]_i_1 
       (.I0(pstate[2]),
        .I1(pstate[1]),
        .O(\light_ws_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ws_reg[1] 
       (.CLR(1'b0),
        .D(\light_ws_reg[1]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_en_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \light_ws_reg[1]_i_1 
       (.I0(pstate[1]),
        .I1(pstate[2]),
        .I2(pstate[0]),
        .O(\light_ws_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \light_ws_reg[2] 
       (.CLR(1'b0),
        .D(\light_ws_reg[2]_i_1_n_0 ),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(light_en_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \light_ws_reg[2]_i_1 
       (.I0(pstate[2]),
        .I1(pstate[1]),
        .I2(pstate[0]),
        .O(\light_ws_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nstate_reg[0] 
       (.CLR(1'b0),
        .D(data_path_n_4),
        .G(data_path_n_0),
        .GE(1'b1),
        .Q(nstate[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nstate_reg[1] 
       (.CLR(1'b0),
        .D(data_path_n_3),
        .G(data_path_n_0),
        .GE(1'b1),
        .Q(nstate[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nstate_reg[2] 
       (.CLR(1'b0),
        .D(data_path_n_2),
        .G(data_path_n_0),
        .GE(1'b1),
        .Q(nstate[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pstate_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nstate[0]),
        .Q(pstate[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pstate_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nstate[1]),
        .Q(pstate[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pstate_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nstate[2]),
        .Q(pstate[2]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    t1min_en_reg
       (.CLR(1'b0),
        .D(t1min_en_reg_i_1_n_0),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(t1min_en));
  LUT1 #(
    .INIT(2'h1)) 
    t1min_en_reg_i_1
       (.I0(pstate[0]),
        .O(t1min_en_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    t8sec_en_reg
       (.CLR(1'b0),
        .D(pstate[0]),
        .G(data_path_n_1),
        .GE(1'b1),
        .Q(t8sec_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
