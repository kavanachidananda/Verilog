module mux_8_1(o,i,s);
input [7:0]i;
input [2:0]s;
output o;
wire k[1:0];
mux inst0(k[0],i[3:0],s[1:0]);
mux inst1(k[1],i[7:4],s[1:0]);
mux1 inst2(o,{k[1],k[0]},s[2]);
endmodule

////4:1 Mux

module mux(out,in,sel);
input [3:0] in;
input[1:0] sel;
output reg out;
always @(*)
begin
 case(sel)
  2'b00:out=in[0];
  2'b01:out=in[1];
  2'b10:out=in[2];
  2'b11:out=in[3];
  default: out=2'bx;
 endcase
end
endmodule

//// 2:1 Mux

module mux1(out1,in1,sel1);
input [1:0]in1;
input sel1;
output reg out1;
always @(*)
begin
case(sel1)
1'b0:out1=in1[0];
1'b1:out1=in1[1];
default:out1=1'bx;
endcase
end
endmodule
