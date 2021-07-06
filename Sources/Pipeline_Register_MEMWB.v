module Pipeline_Register_MEMWB
#
(
	parameter MEMORY_DEPTH = 32
)
(

	input  clk,
	input  reset,
	
	input	 mem_to_reg_i,
	input  reg_write_i,
	input  [4:0]write_register_i,
	input  [31:0] pc_plus_4_i,
	input  [31:0] read_data_mmry_i,
	input  [31:0] alu_result_i,
	
	
	////////////////////////////////
	
	output mem_to_reg_o,
	output reg_write_o,
	output [4:0]write_register_o,
	output [31:0] pc_plus_4_o,
	output [31:0] read_data_mmry_o,
	output [31:0] alu_result_o
	
);

Pipeline_register
MEM_TO_REG
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(mem_to_reg_i),
	.data_o(mem_to_reg_o)
);

Pipeline_register
REG_WRITE
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(reg_write_i),
	.data_o(reg_write_o)
);

Pipeline_register
WRITE_REGISTER
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(write_register_i),
	.data_o(write_register_o)
);

Pipeline_register
PC_PLUS_4
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(pc_plus_4_i),
	.data_o(pc_plus_4_o)
);

Pipeline_register
READ_DATA_MMRY
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(read_data_mmry_i),
	.data_o(read_data_mmry_o)
);

Pipeline_register
ALU_RESULT
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(alu_result_i),
	.data_o(alu_result_o)
);

endmodule
