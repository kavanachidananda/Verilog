module jk_ff(j,k,clk,Q,Qbar);
input j,k,clk;
output reg Q;
output Qbar;
always @ (posedge clk)
    case ({j,k})
        2'b00: Q <= Q; // No change
        2'b01: Q <= 1'b0; // Reset
        2'b10: Q <= 1'b1; // Set
        2'b11: Q <= ~Q; // Toggle
    endcase
	 assign Qbar=~Q;
endmodule
