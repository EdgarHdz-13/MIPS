
module Pipeline_register
#(
	parameter N_BITS = 32,
	parameter INITIAL_VALUE = 32'hxxxx_xxxx
)
(
	input clk,
	input reset,
	input enable,
	input  [N_BITS - 1 : 0] data_i,
	
	
	output reg [N_BITS - 1:0] data_o
);

always@(negedge reset or negedge clk) begin
	if(reset==0)
		data_o <= INITIAL_VALUE;
	else	
		if(enable == 1)
			data_o <= data_i;
end

endmodule
