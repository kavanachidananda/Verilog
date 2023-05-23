module dec_tb;

	// Inputs
	reg [1:0] A;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	dec uut (
		.A(A), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 2'b00;
		#10;
		A = 2'b01;
		#10;
		A = 2'b10;
		#10;
		A = 2'b11;
		#10;
$finish;
	end
      
endmodule

