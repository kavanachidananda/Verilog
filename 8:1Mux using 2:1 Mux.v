module Mux_8_1(o,i,s);
input [7:0]i;
input [2:0]s;
output o;
wire [5:0]k;
mux inst0(k[0],i[1:0],s[0]);
mux inst1(k[1],i[3:2],s[0]);
mux inst2(k[2],i[5:4],s[0]);
mux inst3(k[3],i[7:6],s[0]);
mux inst4(k[4],k[1:0],s[1]);
mux inst5(k[5],k[3:2],s[1]);
mux inst6(o,k[5:4],s[2]);
endmodule

////2:1 Mux

module mux(out,in,sel);
input[1:0]in;
input sel;
output reg out;
always @(*)
case(sel)
1'b0:out=in[0];
1'b1:out=in[1];
default : out=1'bx;
endcase
endmodule
