module fulladder(sum,cout,a,b,cin);
output sum,cout;
input a,b,cin;
wire s1,c1,c2;

xor(s1,a,b);
and(c1,a,b);
xor(sum,s1,cin);
and(c2,s1,cin);
xor(cout,c2,c1);

endmodule 


module fulladder4(s,co4,a,b,ci0);
output [3:0]s;
output co4;
input [3:0]a,b;
input ci0;
wire co1,co2,co3;

fulladder fa0(s[0],co1,a[0],b[0],ci0);
fulladder fa1(s[1],co2,a[1],b[1],co1);
fulladder fa2(s[2],co3,a[2],b[2],co2);
fulladder fa3(s[3],co4,a[3],b[3],co3);

endmodule;

module testfa4;
reg [3:0]A,B;
reg CI0;
wire [3:0]S;
wire CO4;

fulladder4 fa4(S,CO4,A,B,CI0);

initial
begin 
	$monitor($time,"A=%b,B=%b,CIN=%b,COUT=%b,S=%b\n",A,B,CI0,CO4,S);
end

initial 
begin
	A=4'd0;B=4'd0;CI0=1'b0;
	#5 A=4'd1;B=4'd8;
	#5 A=4'd5;B=4'd15;
	#5 A=4'd3;B=4'd4;
	#5 A=4'd10;B=4'd15;
	#5 A=4'd12;B=4'd3;
	#5 A=4'd1;B=4'd8;CI0=1'b1;
	#5 A=4'd5;B=4'd15;
	#5 A=4'd3;B=4'd4;
	#5 A=4'd10;B=4'd15;
	#5 A=4'd12;B=4'd3;
	
end 

endmodule 