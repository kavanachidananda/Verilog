module muxx_tb;
	reg [7:0] i;
	reg [2:0] s;
	wire o;
	Mux_8_1 uut (
		.o(o), 
		.i(i), 
		.s(s)
	);

	initial begin
		i = 0;
		s = 0;
		#100;
    i=8'b10101010;
    #20;
		s=3'b000;#10;
		s=3'b001;#10;
		s=3'b010;#10;
		s=3'b011;#10;
		s=3'b100;#10;
		s=3'b101;#10;
		s=3'b110;#10;
		s=3'b111;#10;
	end     
endmodule
