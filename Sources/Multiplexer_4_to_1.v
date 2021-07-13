



module Multiplexer_4_to_1
#(
	parameter N_BITS=32
)
(
	input [1:0]selector_i,
	input [N_BITS-1:0] data_0_i,
	input [N_BITS-1:0] data_1_i,
	input [N_BITS-1:0] data_2_i,
	input [N_BITS-1:0] data_3_i,
	
	output [N_BITS-1:0] mux_o

);

wire [N_BITS-1:0] mux_0_w;
wire [N_BITS-1:0] mux_1_w;

Multiplexer_2_to_1
#(
	.N_BITS(N_BITS)
)
MUX_0
(
	.selector_i(selector_i[0]),
	.data_0_i(data_0_i),
	.data_1_i(data_1_i),
	
	.mux_o(mux_0_w)

);

Multiplexer_2_to_1
#(
	.N_BITS(N_BITS)
)
MUX_1
(
	.selector_i(selector_i[0]),
	.data_0_i(data_2_i),
	.data_1_i(data_3_i),
	
	.mux_o(mux_1_w)

);

Multiplexer_2_to_1
#(
	.N_BITS(N_BITS)
)
MUX_2
(
	.selector_i(selector_i[1]),
	.data_0_i(mux_0_w),
	.data_1_i(mux_1_w),
	
	.mux_o(mux_o)

);
endmodule
