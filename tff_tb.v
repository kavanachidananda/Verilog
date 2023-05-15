module t_flip_tb;

	// Inputs
	reg t;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	t_flip uut (
		.t(t), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		t = 0;
		clk = 1;
		reset = 1;
		#100;
		t = 1;
		reset = 0;
		#10;
		t=0;
		#10;
		t=1;
		#20;
		t=0;
		#50;
		t=1;
	end
	always #10 clk=~clk;
      
endmodule

