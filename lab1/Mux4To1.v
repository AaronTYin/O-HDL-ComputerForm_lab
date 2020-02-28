module mux4to1(out,w,x,y,z,s1,s0);

output out;
input w,x,y,z;
input s1,s0;
wire s1n,s0n;
wire w0,x0,y0,z0;

not(s1n,s1);
not(s0n,s0);

and(w0,w,s1n,s0n);
and(x0,x,s1n,s0);
and(y0,y,s1,s0n);
and(z0,z,s1,s0);
or(out,w0,x0,y0,z0);

endmodule


module testmux41;
reg W,X,Y,Z;
reg S1,S0;
wire OUT;

mux4to1 mux(OUT,W,X,Y,Z,S1,S0);

initial
begin 
	W=1;X=0;Y=1;Z=0;
	#5 $display("W=%b,X=%b,Y=%b,Z=%b",W,X,Y,Z);
	S1=0;S0=0;
	#5 $display("S1=%b,S0=%b,OUT=%b",S1,S0,OUT);
	S1=0;S0=1;
	#5 $display("S1=%b,S0=%b,OUT=%b",S1,S0,OUT);
	S1=1;S0=0;
	#5 $display("S1=%b,S0=%b,OUT=%b",S1,S0,OUT);
	S1=1;S0=1;
	#5 $display("S1=%b,S0=%b,OUT=%b",S1,S0,OUT);
end

endmodule
