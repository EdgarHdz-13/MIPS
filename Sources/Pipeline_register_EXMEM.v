module Pipeline_Register_EXMEM
#
(
	parameter MEMORY_DEPTH = 32
)
(

	input  clk,
	input  reset,
	

	input  topc_i,
	input  jmp_i,
	input  mem_to_reg_i,
	input  mem_read_i,
	input  mem_write_i,
	input  [31:0]alu_result_i,
	input  [31:0]read_data_2_i,
	input	 [31:0]mux_pc_r_branch_i,
	input	 [31:0]mux_jmp_r_pc_data_1_i,
	input  [31:0]pc_plus_4_i,
	
	////////////////////////////////////
	
	output  topc_o,
	output  jmp_o,
	output  mem_to_reg_o,
	output  mem_read_o,
	output  mem_write_o,
	output  [31:0]alu_result_o,
	output  [31:0]read_data_2_o,
	output  [31:0]mux_pc_r_branch_o,
	output  [31:0]mux_jmp_r_pc_data_1_o,
	output  [31:0]pc_plus_4_o
	
	

);

Pipeline_register
TOPC
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(topc_i),
	.data_o(topc_o)
);


Pipeline_register
JMP
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(jmp_i),
	.data_o(jmp_o)
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
MEM_READ
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(mem_read_i),
	.data_o(mem_read_o)
);

Pipeline_register
MEM_WRITE
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(mem_write_i),
	.data_o(mem_write_o)
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

Pipeline_register
READ_DATA_2
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(read_data_2_i),
	.data_o(read_data_2_o)
);

Pipeline_register
MUX_PC_R_BRANCH
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(mux_pc_r_branch_i),
	.data_o(mux_pc_r_branch_o)
);

Pipeline_register
MUX_JMP_R_PC_DATA_1
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(mux_jmp_r_pc_data_1_i),
	.data_o(mux_jmp_r_pc_data_1_o)
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

endmodule
