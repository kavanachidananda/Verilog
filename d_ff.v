module d_ff(D,clk,Q,Qbar);
input D; // Data input 
input clk; // clock input 
output reg Q;
output Qbar; 
always @(posedge clk) 
begin
 Q <= D; 
end 
assign Qbar=~Q;
endmodule 
