module mux_4_1_tb;

	// Inputs
	reg in0;
	reg in1;
	reg in2;
	reg in3;
	reg [1:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux_4_1 uut (
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 0;
		sel = 2'd0;
		#10;
		in0 = 1;
		in1 = 1;
		in2 = 0;
		in3 = 0;
		sel = 2'd1;
		#10;
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 1;
		sel = 2'd2;
		#10;
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 1;
		sel = 2'd3;
		#10;
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 0;
		sel = 2'd1;
		#10;
		in0 = 0;
		in1 = 0;
		in2 = 1;
		in3 = 0;
		sel = 2'd2;
		#10;
	end     
endmodule

