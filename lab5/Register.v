module registerfile(Q1,Q2,DI,clk,reset,writeen,AD,A1,A2);
output[31:0] Q1,Q2;
input[31:0] DI;
input clk,reset,writeen;
input[4:0] AD,A1,A2;

wire[31:0] decoderout;
wire[31:0] regen;
wire[31:0] q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31;

decoder dec0(decoderout,AD);

assign  regen[0]=decoderout[0] & writeen;
assign  regen[1]=decoderout[1] & writeen;
assign  regen[2]=decoderout[2] & writeen;
assign  regen[3]=decoderout[3] & writeen;
assign  regen[4]=decoderout[4] & writeen;
assign  regen[5]=decoderout[5] & writeen;
assign  regen[6]=decoderout[6] & writeen;
assign  regen[7]=decoderout[7] & writeen;
assign  regen[8]=decoderout[8] & writeen;
assign  regen[9]=decoderout[9] & writeen;
assign  regen[10]=decoderout[10] & writeen;
assign  regen[11]=decoderout[11] & writeen;
assign  regen[12]=decoderout[12] & writeen;
assign  regen[13]=decoderout[13] & writeen;
assign  regen[14]=decoderout[14] & writeen;
assign  regen[15]=decoderout[15] & writeen;
assign  regen[16]=decoderout[16] & writeen;
assign  regen[17]=decoderout[17] & writeen;
assign  regen[18]=decoderout[18] & writeen;
assign  regen[19]=decoderout[19] & writeen;
assign  regen[20]=decoderout[20] & writeen;
assign  regen[21]=decoderout[21] & writeen;
assign  regen[22]=decoderout[22] & writeen;
assign  regen[23]=decoderout[23] & writeen;
assign  regen[24]=decoderout[24] & writeen;
assign  regen[25]=decoderout[25] & writeen;
assign  regen[26]=decoderout[26] & writeen;
assign  regen[27]=decoderout[27] & writeen;
assign  regen[28]=decoderout[28] & writeen;
assign  regen[29]=decoderout[29] & writeen;
assign  regen[30]=decoderout[30] & writeen;
assign  regen[31]=decoderout[31] & writeen;

register reg0(q0,DI,clk,reset,regen[0]);
register reg1(q1,DI,clk,reset,regen[1]);
register reg2(q2,DI,clk,reset,regen[2]);
register reg3(q3,DI,clk,reset,regen[3]);
register reg4(q4,DI,clk,reset,regen[4]);
register reg5(q5,DI,clk,reset,regen[5]);
register reg6(q6,DI,clk,reset,regen[6]);
register reg7(q7,DI,clk,reset,regen[7]);
register reg8(q8,DI,clk,reset,regen[8]);
register reg9(q9,DI,clk,reset,regen[9]);
register reg10(q10,DI,clk,reset,regen[10]);
register reg11(q11,DI,clk,reset,regen[11]);
register reg12(q12,DI,clk,reset,regen[12]);
register reg13(q13,DI,clk,reset,regen[13]);
register reg14(q14,DI,clk,reset,regen[14]);
register reg15(q15,DI,clk,reset,regen[15]);
register reg16(q16,DI,clk,reset,regen[16]);
register reg17(q17,DI,clk,reset,regen[17]);
register reg18(q18,DI,clk,reset,regen[18]);
register reg19(q19,DI,clk,reset,regen[19]);
register reg20(q20,DI,clk,reset,regen[20]);
register reg21(q21,DI,clk,reset,regen[21]);
register reg22(q22,DI,clk,reset,regen[22]);
register reg23(q23,DI,clk,reset,regen[23]);
register reg24(q24,DI,clk,reset,regen[24]);
register reg25(q25,DI,clk,reset,regen[25]);
register reg26(q26,DI,clk,reset,regen[26]);
register reg27(q27,DI,clk,reset,regen[27]);
register reg28(q28,DI,clk,reset,regen[28]);
register reg29(q29,DI,clk,reset,regen[29]);
register reg30(q30,DI,clk,reset,regen[30]);
register reg31(q31,DI,clk,reset,regen[31]);

mux_32 mux0(Q1,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,A1);
mux_32 mux1(Q2,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,A2);
endmodule

module decoder(decoderout,waddr);
output[31:0] decoderout;
input[4:0] waddr;

reg [31:0] decoderout;
always @ (waddr)
case(waddr)
5'd0: decoderout=32'b0000_0000_0000_0000_0000_0000_0000_0001;
5'd1: decoderout=32'b0000_0000_0000_0000_0000_0000_0000_0010;
5'd2: decoderout=32'b0000_0000_0000_0000_0000_0000_0000_0100;
5'd3: decoderout=32'b0000_0000_0000_0000_0000_0000_0000_1000;
5'd4: decoderout=32'b0000_0000_0000_0000_0000_0000_0001_0000;
5'd5: decoderout=32'b0000_0000_0000_0000_0000_0000_0010_0000;
5'd6: decoderout=32'b0000_0000_0000_0000_0000_0000_0100_0000;
5'd7: decoderout=32'b0000_0000_0000_0000_0000_0000_1000_0000;
5'd8: decoderout=32'b0000_0000_0000_0000_0000_0001_0000_0000;
5'd9: decoderout=32'b0000_0000_0000_0000_0000_0010_0000_0000;
5'd10: decoderout=32'b0000_0000_0000_0000_0000_0100_0000_0000;
5'd11: decoderout=32'b0000_0000_0000_0000_0000_1000_0000_0000;
5'd12: decoderout=32'b0000_0000_0000_0000_0001_0000_0000_0000;
5'd13: decoderout=32'b0000_0000_0000_0000_0010_0000_0000_0000;
5'd14: decoderout=32'b0000_0000_0000_0000_0100_0000_0000_0000;
5'd15: decoderout=32'b0000_0000_0000_0000_1000_0000_0000_0000;
5'd16: decoderout=32'b0000_0000_0000_0001_0000_0000_0000_0000;
5'd17: decoderout=32'b0000_0000_0000_0010_0000_0000_0000_0000;
5'd18: decoderout=32'b0000_0000_0000_0100_0000_0000_0000_0000;
5'd19: decoderout=32'b0000_0000_0000_1000_0000_0000_0000_0000;
5'd20: decoderout=32'b0000_0000_0001_0000_0000_0000_0000_0000;
5'd21: decoderout=32'b0000_0000_0010_0000_0000_0000_0000_0000;
5'd22: decoderout=32'b0000_0000_0100_0000_0000_0000_0000_0000;
5'd23: decoderout=32'b0000_0000_1000_0000_0000_0000_0000_0000;
5'd24: decoderout=32'b0000_0001_0000_0000_0000_0000_0000_0000;
5'd25: decoderout=32'b0000_0010_0000_0000_0000_0000_0000_0000;
5'd26: decoderout=32'b0000_0100_0000_0000_0000_0000_0000_0000;
5'd27: decoderout=32'b0000_1000_0000_0000_0000_0000_0000_0000;
5'd28: decoderout=32'b0001_0000_0000_0000_0000_0000_0000_0000;
5'd29: decoderout=32'b0010_0000_0000_0000_0000_0000_0000_0000;
5'd30: decoderout=32'b0100_0000_0000_0000_0000_0000_0000_0000;
5'd31: decoderout=32'b1000_0000_0000_0000_0000_0000_0000_0000;
endcase
endmodule

module register(q,data,clk,reset,en);
output[31:0] q;
input[31:0] data;
input clk,reset,en;

dff u0(q[0],data[0],clk,reset,en);
dff u1(q[1],data[1],clk,reset,en);
dff u2(q[2],data[2],clk,reset,en);
dff u3(q[3],data[3],clk,reset,en);
dff u4(q[4],data[4],clk,reset,en);
dff u5(q[5],data[5],clk,reset,en);
dff u6(q[6],data[6],clk,reset,en);
dff u7(q[7],data[7],clk,reset,en);
dff u8(q[8],data[8],clk,reset,en);
dff u9(q[9],data[9],clk,reset,en);
dff u10(q[10],data[10],clk,reset,en);
dff u11(q[11],data[11],clk,reset,en);
dff u12(q[12],data[12],clk,reset,en);
dff u13(q[13],data[13],clk,reset,en);
dff u14(q[14],data[14],clk,reset,en);
dff u15(q[15],data[15],clk,reset,en);
dff u16(q[16],data[16],clk,reset,en);
dff u17(q[17],data[17],clk,reset,en);
dff u18(q[18],data[18],clk,reset,en);
dff u19(q[19],data[19],clk,reset,en);
dff u20(q[20],data[20],clk,reset,en);
dff u21(q[21],data[21],clk,reset,en);
dff u22(q[22],data[22],clk,reset,en);
dff u23(q[23],data[23],clk,reset,en);
dff u24(q[24],data[24],clk,reset,en);
dff u25(q[25],data[25],clk,reset,en);
dff u26(q[26],data[26],clk,reset,en);
dff u27(q[27],data[27],clk,reset,en);
dff u28(q[28],data[28],clk,reset,en);
dff u29(q[29],data[29],clk,reset,en);
dff u30(q[30],data[30],clk,reset,en);
dff u31(q[31],data[31],clk,reset,en);
endmodule

module dff(q,data,clk,reset,en);
output q;
input data,clk,reset,en;

reg q;
always @ (posedge clk)
begin
	if (reset)
		q=0;
	else if (en)
		q=data;
	else 
		q=q;
	end
endmodule

module mux_32(q,q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,raddr);
output[31:0] q;
input[31:0] q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31;
input[4:0] raddr;

reg [31:0] q;
always @(raddr or q0 or q1 or q2 or q3 or q4 or q5 or q6 or q7 or q8 or q9 or q10 or q11 or q12 or q13 or q14 or q15 or q16 or q17 or q18 or q19 or q20 or q21 or q22 or q23 or q24 or q25 or q26 or q27 or q28 or q29 or q30 or q31)
case(raddr)
5'd0: q=q0;
5'd1: q=q1;
5'd2: q=q2;
5'd3: q=q3;
5'd4: q=q4;
5'd5: q=q5;
5'd6: q=q6;
5'd7: q=q7;
5'd8: q=q8;
5'd9: q=q9;
5'd10: q=q10;
5'd11: q=q11;
5'd12: q=q12;
5'd13: q=q13;
5'd14: q=q14;
5'd15: q=q15;
5'd16: q=q16;
5'd17: q=q17;
5'd18: q=q18;
5'd19: q=q19;
5'd20: q=q20;
5'd21: q=q21;
5'd22: q=q22;
5'd23: q=q23;
5'd24: q=q24;
5'd25: q=q25;
5'd26: q=q26;
5'd27: q=q27;
5'd28: q=q28;
5'd29: q=q29;
5'd30: q=q30;
5'd31: q=q31;
endcase
endmodule


`timescale 1ns / 1ns
module rftest;

wire [31:0]q11,q22;
reg [31:0]data;
reg [4:0]waddr;
reg [4:0]raddr1,raddr2;
reg clk,reset,we;

registerfile r(q11,q22,data,clk,reset,we,waddr,raddr1,raddr2);

always #50 clk=~clk;

initial
begin 
     clk=0;
     reset=1;
     we=0;
#120 reset=0;
     data=32'd1;
     we=1;
     waddr=5'd0;
#100 data=32'd2;
     waddr=5'd1;
#100 data=32'd3;
     waddr=5'd2;
#100 data=32'd4;
     waddr=5'd3;
#100 data=32'd5;
     waddr=5'd4;
#100 data=32'd6;
     waddr=5'd5;
#100 data=32'd7;
     waddr=5'd6;
#100 data=32'd8;
     waddr=5'd7;
#100 data=32'd9;
     waddr=5'd8;
#100 data=32'd10;
     waddr=5'd9;
#100 data=32'd11;
     waddr=5'd10;
#100 data=32'd12;
     waddr=5'd11;
#100 data=32'd13;
     waddr=5'd12;
#100 data=32'd14;
     waddr=5'd13;
#100 data=32'd15;
     waddr=5'd14;
#100 data=32'd16;
     waddr=5'd15;
#100 data=32'd17;
     waddr=5'd16;
#100 data=32'd18;
     waddr=5'd17;
#100 data=32'd19;
     waddr=5'd18;
#100 data=32'd20;
     waddr=5'd19;
#100 data=32'd21;
     waddr=5'd20;
#100 data=32'd22;
     waddr=5'd21;
#100 data=32'd23;
     waddr=5'd22;
#100 data=32'd24;
     waddr=5'd23;
#100 data=32'd25;
     waddr=5'd24;
#100 data=32'd26;
     waddr=5'd25;
#100 data=32'd27;
     waddr=5'd26;
#100 data=32'd28;
     waddr=5'd27;
#100 data=32'd29;
     waddr=5'd28;
#100 data=32'd30;
     waddr=5'd29;
#100 data=32'd31;
     waddr=5'd30;
#100 data=32'd32;
     waddr=5'd31;

#100 we=0;
     raddr1=5'd0;
     raddr2=5'd1;
#100 raddr1=5'd1;
     raddr2=5'd2;
#100 raddr1=5'd2;
     raddr2=5'd3;
#100 raddr1=5'd3;
     raddr2=5'd4;
#100 raddr1=5'd4;
     raddr2=5'd5;
#100 raddr1=5'd5;
     raddr2=5'd6;
#100 raddr1=5'd6;
     raddr2=5'd7;
#100 raddr1=5'd7;
     raddr2=5'd8;
#100 raddr1=5'd8;
     raddr2=5'd9;
#100 raddr1=5'd9;
     raddr2=5'd10;
#100 raddr1=5'd10;
     raddr2=5'd11;
#100 raddr1=5'd11;
     raddr2=5'd12;
#100 raddr1=5'd12;
     raddr2=5'd13;
#100 raddr1=5'd13;
     raddr2=5'd14;
#100 raddr1=5'd14;
     raddr2=5'd15;
#100 raddr1=5'd15;
     raddr2=5'd16;
#100 raddr1=5'd16;
     raddr2=5'd17;
#100 raddr1=5'd17;
     raddr2=5'd18;
#100 raddr1=5'd18;
     raddr2=5'd19;
#100 raddr1=5'd19;
     raddr2=5'd20;
#100 raddr1=5'd20;
     raddr2=5'd21;
#100 raddr1=5'd21;
     raddr2=5'd22;
#100 raddr1=5'd22;
     raddr2=5'd23;
#100 raddr1=5'd23;
     raddr2=5'd24;
#100 raddr1=5'd24;
     raddr2=5'd25;
#100 raddr1=5'd25;
     raddr2=5'd26;
#100 raddr1=5'd26;
     raddr2=5'd27;
#100 raddr1=5'd27;
     raddr2=5'd28;
#100 raddr1=5'd28;
     raddr2=5'd29;
#100 raddr1=5'd29;
     raddr2=5'd30;
#100 raddr1=5'd30;
     raddr2=5'd31;
#100 raddr1=5'd31;
     raddr2=5'd0;

#200 $stop;
end  
endmodule