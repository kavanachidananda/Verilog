module mux_4_1(in0,in1,in2,in3,sel,out);
input in0,in1,in2,in3;
input [1:0]sel;
output out;
assign out=(sel==2'd0)?in0:(sel==2'd1)?in1:(sel==2'd2)?in2:in3;
endmodule 
