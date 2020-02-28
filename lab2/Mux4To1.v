module mux4to1(out,w,x,y,z,s1,s0);

output [3:0] out;
input [3:0] w,x,y,z;
input s1,s0;

assign out=s1?(s0?z:y):(s0?x:w);

endmodule
