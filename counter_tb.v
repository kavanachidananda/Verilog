module counter_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] count_out;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.count_out(count_out)
	);

	initial begin
		// Initialize Inputs
		clk =1'b0;
		#10;
  end
	always #5 clk=~clk;
      
endmodule

