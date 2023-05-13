module d_tb;
reg D;
reg clk;
wire Q;
wire Qbar;

d dut(D,clk,Q,Qbar);

initial begin
  clk=0;
  forever #10 clk = ~clk;  
end 
initial begin 
 D = 0;
 #100;
 D = 1;
 #100;
 D = 0;
 #100;
 D = 1;
end 
endmodule 
