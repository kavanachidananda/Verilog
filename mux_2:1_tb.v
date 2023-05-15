module mux2_1_tb;

  // Inputs
  reg in0;
  reg in1;
  reg sel;

  // Outputs
  wire out;

  // Instantiate the DUT (Design Under Test)
  mux2_1 dut (
    .in0(in0),
    .in1(in1),
    .sel(sel),
    .out(out)
  );
  initial begin
    // Select input 0
    in0 = 0;
    in1 = 0;
    sel= 0;
    #10; 
    in0 = 0;
    in1 = 1;
    sel = 1;
    #10; 
	 in0 = 1;
    in1 = 1;
    sel = 1;
    #10; 
	 in0 = 0;
    in1 = 0;
    sel = 0;
    #10; 
    
  end

endmodule

