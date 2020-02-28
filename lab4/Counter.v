module count6(dout3,clk,rst);
input clk,rst;
output [2:0]dout3;
reg [2:0]dout3;

always @(negedge clk)
begin
	if(rst)
		dout3<=3'b000;
	else if(dout3<=3'b101)
		dout3<=dout3+3'b001;
	else if(dout3>3'b101)
		dout3<=3'b000;
end

endmodule


module count10(dout4,key1,rst);
input key1,rst;
output [3:0]dout4;
reg [3:0]dout4;

always @(negedge key1)
begin
	if(rst)
		dout4<=4'b0000;
	else if(dout4<=1001)
		dout4<=dout4+4'b0001;
	else if(dout4>1001)
		dout4<=4'b0000;
end

endmodule

module decoder47(s,d);
input [3:0]d;
output [0:6]s;
reg [0:6]s;

always @(d)
begin
case(d)
	4'b0000: s=7'b1111110;
	4'b0001: s=7'b0110000;
	4'b0010: s=7'b1101101;
	4'b0011: s=7'b1111001;
	4'b0100: s=7'b0110011;
	4'b0101: s=7'b1011011;
	4'b0110: s=7'b1011111;
	4'b0111: s=7'b1110000;
	4'b1000: s=7'b1111111;
	4'b1001: s=7'b1111011;
endcase
end

endmodule


`timescale 1ns/1ns;
module lab4;
reg clk,key1,rst;
reg [3:0]d;
wire [2:0]dout3;
wire [3:0]dout4;
wire [0:6]s;

count6 c6(dout3,clk,rst);
count10 c10(dout4,key1,rst);
decoder47 d47(s,dout4);
		
endmodule