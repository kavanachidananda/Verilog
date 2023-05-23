
module bcd_seg(bcd,seg);
input [3:0] bcd;
output reg [7:0] seg;
parameter zero=8'b00000011,
          one=8'b10011111,
          two=8'b00100101,
			 three=8'b10011111,
          four=8'b10011111,
			 five=8'b10011111,
			 six=8'b10011111,
			 seven=8'b10011111,
			 eight=8'b10011111,
			 nine=8'b10011111;
always @(bcd)
case (bcd)
4'b0000:seg=zero;
4'b0001:seg=one;
4'b0010:seg=two;
4'b0011:seg=three;
4'b0100:seg=four;
4'b0101:seg=five;
4'b0110:seg=six;
4'b0111:seg=seven;
4'b1000:seg=eight;
4'b1001:seg=nine;
endcase
endmodule 
