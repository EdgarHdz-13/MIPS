


module Control_Switch
(
	
	input reg_dst_i,
	input branch_eq_i,
	input branch_ne_i,
	input mem_read_i,
	input mem_to_reg_i,
	input mem_write_i,
	input alu_src_i,
	input reg_write_i,
	input jmp_i,
	input [2:0]alu_op_i,
	input selector_i,
	
	output reg_dst_o,
	output branch_eq_o,
	output branch_ne_o,
	output mem_read_o,
	output mem_to_reg_o,
	output mem_write_o,
	output alu_src_o,
	output reg_write_o,
	output jmp_o,
	output [2:0]alu_op_o

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
REG_DST
(
	.selector_i(selector_i),
	.data_0_i(reg_dst_i),
	.data_1_i(0),
	
	.mux_o(reg_dst_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
BRANCH_EQ
(
	.selector_i(selector_i),
	.data_0_i(branch_eq_i),
	.data_1_i(0),
	
	.mux_o(branch_eq_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
BRANCH_NE
(
	.selector_i(selector_i),
	.data_0_i(branch_ne_i),
	.data_1_i(0),
	
	.mux_o(branch_ne_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
MEM_READ
(
	.selector_i(selector_i),
	.data_0_i(mem_read_i),
	.data_1_i(0),
	
	.mux_o(mem_read_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
MEM_TO_REG
(
	.selector_i(selector_i),
	.data_0_i(mem_to_reg_i),
	.data_1_i(0),
	
	.mux_o(mem_to_reg_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
MEM_WRITE
(
	.selector_i(selector_i),
	.data_0_i(mem_write_i),
	.data_1_i(0),
	
	.mux_o(mem_write_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
ALU_SRC
(
	.selector_i(selector_i),
	.data_0_i(alu_src_i),
	.data_1_i(0),
	
	.mux_o(alu_src_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
REG_WRITE
(
	.selector_i(selector_i),
	.data_0_i(reg_write_i),
	.data_1_i(0),
	
	.mux_o(reg_write_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(1)
)
JMP
(
	.selector_i(selector_i),
	.data_0_i(jmp_i),
	.data_1_i(0),
	
	.mux_o(jmp_o)

);

Multiplexer_2_to_1
#(
	.N_BITS(3)
)
ALU_OP
(
	.selector_i(selector_i),
	.data_0_i(alu_op_i),
	.data_1_i(3'b000),
	
	.mux_o(alu_op_o)

);

endmodule