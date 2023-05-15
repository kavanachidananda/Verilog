module jk_ff_tb;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire Q;
	wire Qbar;
	jk_ff uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.Q(Q), 
		.Qbar(Qbar)
	);

	initial begin
		
		j = 0;
		k = 0;
		clk = 0;
		#100;
		j=1;k=0;
		#50;
		j=0;k=1;
		#50;
		j=1;k=1;
		#50;
		j=0;k=0;
		#50;
  end
	always #5clk=~clk;
      
endmodule

