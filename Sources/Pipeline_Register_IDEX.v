module Pipeline_Register_IFID
#
(
	parameter MEMORY_DEPTH = 32
)
(

	input  clk,
	input  reset,
	
	
	input	 branch_ne_i,
	input  branch_eq_i,
	input  jmp_i,
	input	 mem_to_reg,
	input  mem_write_i,
	input  mem_read_i,
	input  alu_src_i,
	input	 [25:0]  inst_i,
	input	 [31:0]	PC_i,
	input  [31:0]  read_data_1_i,
	input  [31:0]  read_data_2_i,
	input	 [10:6]  shamt_i
	input  [3:0]  alu_ctrl_i
	
	/////////////////////////////////////
	
	output branch_ne_i,
	output branch_eq_i,
	output jmp_i,
	output mem_to_reg,
	output mem_write_i,
	output mem_read_i,
	output alu_src_i,
	output [25:0]  inst_i,
	output [31:0]	PC_i,
	output [31:0]  read_data_1_i,
	output [31:0]  read_data_2_i,
	output [10:6]  shamt_i
	output [3:0]  alu_ctrl_i
	
);

Pipeline_register
BRANCH_NE
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(branch_ne_i),
	.data_o(branch_ne_o)
);

Pipeline_register
INSTR
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(instr_i),
	.data_o(instr_o)
);


endmodule
