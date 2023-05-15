module counter(clk,count_out);
	 input clk;
	 output reg [3:0]count_out;
	 initial begin
	 count_out=4'b0;
	 end
	 always@(posedge clk)
	 begin
	 count_out<=count_out-1'b1;
end
endmodule
