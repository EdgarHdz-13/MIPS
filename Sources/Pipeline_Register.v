
module Pipeline_register
#(
	parameter N_BITS = 32,
	parameter INITIAL_VALUE = 32'hxxxx_xxxx,
	parameter FLUSH_ENABLE = 0
)
(
	input clk,
	input reset,
	input enable,
	input flush_i,
	input  [N_BITS - 1 : 0] data_i,
	
	
	output reg [N_BITS - 1:0] data_o
);

reg [N_BITS-1 : 0] data_flush_r = 0;

always@(negedge reset or negedge clk) begin
	if(reset==0)
		data_o <= INITIAL_VALUE;
	else if(flush_i == 1 && FLUSH_ENABLE == 1'b1)
		data_o <= data_flush_r;
		
	else if(enable == 1)
		data_o <= data_i;

	
end

endmodule
