module mux2_1(out,in0,in1,sel);
input in0,in1;
input sel;
output reg out;
always @(*)
begin 
case(sel)
  1'b0:out<=in0;
  1'b1:out<=in1;
endcase
end
endmodule
