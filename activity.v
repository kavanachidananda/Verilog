module fsm_seq_detector(
    input clk,
    input rst,
    //input [4:0]data,
    input [5:0]x,
    output reg z
	
   
	 );
parameter A=0,B=1,C=2,D=3;
integer i;
initial
begin
i=0;
end
reg [1:0] PS,NS;
//assign data=10'b0001111010;
always@(posedge clk or posedge rst)
	begin
		if(rst) 
			begin
				PS<=A;
			end
		else 
			begin
				PS<=NS;
			end
	end
always@(PS,x[i])
	begin
		case(PS)
			A:begin
				z<=x[i]?0:0;
				NS<=x[i]?B:A;
			  end
			B:begin
				z<=x[i]?0:0;
				NS<=x[i]?C:A;
			  end
			C:begin
				z<=x[i]?1:0;
				NS<=x[i]?D:A;
			  end
			D:begin
				z<=x[i]?1:0;
				NS<=x[i]?D:A;
		
			  end
		endcase
		i=i+1;
	end
endmodule 
