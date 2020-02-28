module mux16to1(z,zz,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,s1,s0,s3,s2);

input [3:0] d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,zz;
input s0,s1,s2,s3;
output [3:0] z;
wire [3:0] z3_0,z7_4,z11_8,z15_12,z;



mux4to1 m4u1(z3_0,d3,d2,d1,d0,s1,s0);
mux4to1 m4u2(z7_4,d7,d6,d5,d4,s1,s0);
mux4to1 m4u3(z11_8,d11,d10,d9,d8,s1,s0);
mux4to1 m4u4(z15_12,d15,d14,d13,d12,s1,s0);
mux4to1 m4u5(zz,z15_12,z11_8,z7_4,z3_0,s3,s2);

endmodule

module mux16to1test;

//input [3:0] D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;??????????
reg [3:0] D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;
wire [3:0] Z;
reg S0,S1,S2,S3;

mux16to1 m16(Z,Z,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,S1,S0,S3,S2);//?????initial

initial
begin
D0=4'd1;
D1=4'd2;
D2=4'd3;
D3=4'd4;
D4=4'd5;
D5=4'd6;
D6=4'd7;
D7=4'd8;
D8=4'd9;
D9=4'd10;
D10=4'd11;
D11=4'd12;
D12=4'd13;
D13=4'd14;
D14=4'd15;
D15=4'd16;
end

initial 
begin 
	S1=1'b0;S0=1'b0;S3=1'b0;S2=1'b0;
	#5 S1=1'b1;S0=1'b1;S3=1'b1;S2=1'b1;
	#5 S1=1'b1;S0=1'b0;S3=1'b1;S2=1'b1;
	#5 S1=1'b0;S0=1'b1;S3=1'b1;S2=1'b1;
	#5 S1=1'b0;S0=1'b0;S3=1'b1;S2=1'b1;
	#5 S1=1'b1;S0=1'b1;S3=1'b1;S2=1'b0;
	#5 S1=1'b1;S0=1'b0;S3=1'b1;S2=1'b0;
	#5 S1=1'b0;S0=1'b1;S3=1'b1;S2=1'b0;
	#5 S1=1'b0;S0=1'b0;S3=1'b1;S2=1'b0;
	#5 S1=1'b1;S0=1'b1;S3=1'b0;S2=1'b1;
	#5 S1=1'b1;S0=1'b0;S3=1'b0;S2=1'b1;
	#5 S1=1'b0;S0=1'b1;S3=1'b0;S2=1'b1;
	#5 S1=1'b0;S0=1'b0;S3=1'b0;S2=1'b1;
	#5 S1=1'b1;S0=1'b1;S3=1'b0;S2=1'b0;
	#5 S1=1'b1;S0=1'b0;S3=1'b0;S2=1'b0;
	#5 S1=1'b0;S0=1'b1;S3=1'b0;S2=1'b0;
end

initial 
	$monitor($time,"S1=%b,S0=%b,S3=%b,S2=%b,Z=%d",S1,S0,S3,S2,Z);

endmodule
