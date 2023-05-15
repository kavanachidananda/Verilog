module t_flip(t,clk,reset,q);
input t,clk,reset;
output reg q;

always @(posedge clk)
begin
	if(reset)
	  q<=1'b0;
	else
	begin
		if(t)
		  q<=~q;
		else
		  q<=q;
	end
end
endmodule
