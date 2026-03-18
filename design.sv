// Code your design here
module alu_8bit(
  input [7:0]a,
  input [7:0]b,
  input [2:0]sel,
  output reg c,
  output reg [7:0] out);
  always @(*) begin
    c=0;
    case(sel) 
      3'b000:{c,out}=a+b;
      3'b001:out=a-b;
      3'b010:out=a&b;
      3'b011:out=a|b;
      3'b100:out=a<b?8'b1:8'b0;
      default:out=0;
      endcase
    end
      endmodule
      
