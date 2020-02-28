module alutask(out,code,a,b);
  input [1:0] code;
  input [3:0] a,b;
  output [3:0] out;
  reg [3:0] out;
  
  task alu;
    input [3:0] code;
    input [3:0] a,b;
    output [3:0] out;
    integer i;
    
    begin
    case(code)
      2'b00:begin
            for(i=0;i<4;i=i+1)
              out[i]=a[i]&b[i];
            end
      2'b01:out=a|b;
      2'b10:out=a-b;
      2'b11:out=a+b;
    endcase
    end
  endtask
  
  always@(code or a or b)
    alu(code,a,b,out);
    
endmodule

module alusim;
  reg [1:0] code;
  reg [3:0] a,b;
  wire [3:0] out;
  
  initial 
  begin
    a=4'b1011;
    b=4'b0110;
  end
  
  initial 
    $monitor($time,"a=%b,b=%b, ,code=%b,out=%b",a,b,code,out);

  alutask at1(out,code,a,b);

  initial
  begin
    code=2'b00;
    #5 code=2'b01;
    #5 code=2'b10;
    #5 code=2'b11;
  end
  
endmodule