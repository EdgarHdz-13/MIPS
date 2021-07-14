module Pipeline_Register_EXMEM
#
(
	parameter MEMORY_DEPTH = 32,
	parameter FLUSH_ENABLE = 0
)
(

	input  clk,
	input  reset,
	

	input  topc_i,
	input  jmp_i,
	input  mem_to_reg_i,
	input  mem_read_i,
	input  mem_write_i,
	input  reg_write_i,
	input  branch_i,
	input  flush_i,
	input  [4:0]write_register_i,
	input  [4:0] Rd_i,
	input  [31:0]alu_result_i,
	input  [31:0]read_data_2_i,
	input	 [31:0]mux_pc_r_branch_i,
	input  [31:0]pc_plus_4_i,
	input  [31:0]jmp_shifter_plus_pc_i,
	
	
	////////////////////////////////////
	
	output  topc_o,
	output  jmp_o,
	output  mem_to_reg_o,
	output  mem_read_o,
	output  mem_write_o,
	output  reg_write_o,
	output  branch_o,
	output  [4:0] write_register_o,
	output  [4:0] Rd_o,
	output  [31:0] alu_result_o,
	output  [31:0] read_data_2_o,
	output  [31:0] mux_pc_r_branch_o,
	output  [31:0] pc_plus_4_o,
	output  [31:0] jmp_shifter_plus_pc_o

);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
TOPC
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(topc_i),
	.data_o(topc_o)
);


Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
JMP
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(jmp_i),
	.data_o(jmp_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
MEM_TO_REG
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(mem_to_reg_i),
	.data_o(mem_to_reg_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
MEM_READ
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(mem_read_i),
	.data_o(mem_read_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
MEM_WRITE
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(mem_write_i),
	.data_o(mem_write_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
ALU_RESULT
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(alu_result_i),
	.data_o(alu_result_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
READ_DATA_2
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(read_data_2_i),
	.data_o(read_data_2_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
MUX_PC_R_BRANCH
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(mux_pc_r_branch_i),
	.data_o(mux_pc_r_branch_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
PC_PLUS_4
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(pc_plus_4_i),
	.data_o(pc_plus_4_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
JMP_SHIFTER_PLUS_PC_I
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(jmp_shifter_plus_pc_i),
	.data_o(jmp_shifter_plus_pc_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
WRITE_REGISTER
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(write_register_i),
	.data_o(write_register_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
REG_WRITE
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(reg_write_i),
	.data_o(reg_write_o)
);


Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
RD
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(Rd_i),
	.data_o(Rd_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
BRANCH
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(1),
	.data_i(branch_i),
	.data_o(branch_o)
);


endmodule
