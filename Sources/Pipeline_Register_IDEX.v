module Pipeline_Register_IDEX
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
	input	 mem_to_reg_i,
	input  mem_write_i,
	input  mem_read_i,
	input  alu_src_i,
	input  reg_write_i,
	input	 [31:0]  jmp_shifter_i,
	input	 [31:0]	pc_i,
	input  [31:0]  read_data_1_i,
	input  [31:0]  read_data_2_i,
	input  [31:0]  inmmediate_extend_i,
	input	 [10:6]  shamt_i,
	input  [3:0]  alu_ctrl_i,
	input	 [4:0]  write_register_i,
	input  [4:0]  Rs_i,
	input  [4:0]  Rt_i,
	input  [4:0]  Rd_i,
	
	/////////////////////////////////////
	
	output branch_ne_o,
	output branch_eq_o,
	output jmp_o,
	output mem_to_reg_o,
	output mem_write_o,
	output mem_read_o,
	output alu_src_o,
	output reg_write_o,
	output [27:0]  jmp_shifter_o,
	output [31:0]	pc_o,
	output [31:0]  read_data_1_o,
	output [31:0]  inmmediate_extend_o,
	output [31:0]  read_data_2_o,
	output [10:6]  shamt_o,
	output [3:0]  alu_ctrl_o,
	output [4:0]  write_register_o,
	output [4:0]  Rs_o,
	output [4:0]  Rt_o,
	output [4:0]  Rd_o
	
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
BRANCH_EQ
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(branch_eq_i),
	.data_o(branch_eq_o)
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
MEM_WRITE
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(mem_write_i),
	.data_o(mem_write_o)
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
ALU_SRC
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(alu_src_i),
	.data_o(alu_src_o)
);

Pipeline_register
JMP_SHIFTER_l_2
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(jmp_shifter_i),
	.data_o(jmp_shifter_o)
);

Pipeline_register
PC
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(pc_i),
	.data_o(pc_o)
);

Pipeline_register
READ_DATA_1
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(read_data_1_i),
	.data_o(read_data_1_o)
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
SHAMT
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(shamt_i),
	.data_o(shamt_o)
);

Pipeline_register
ALU_CTRL
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(alu_ctrl_i),
	.data_o(alu_ctrl_o)
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
INMEDIATE_EXTEND
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(inmmediate_extend_i),
	.data_o(inmmediate_extend_o)
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
REG_WRITE
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(reg_write_i),
	.data_o(reg_write_o)
);

Pipeline_register
RS
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(Rs_i),
	.data_o(Rs_o)
);

Pipeline_register
RT
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(Rt_i),
	.data_o(Rt_o)
);

Pipeline_register
RD
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(Rd_i),
	.data_o(Rd_o)
);

endmodule
