/******************************************************************
* Description
*	This is the top-level of a MIPS processor that can execute the next set of instructions:
*		add
*		addi
*		sub
*		ori
*		or
*		bne
*		beq
*		and
*		nor
* This processor is written Verilog-HDL. Also, it is synthesizable into hardware.
* Parameter MEMORY_DEPTH configures the program memory to allocate the program to
* be execute. If the size of the program changes, thus, MEMORY_DEPTH must change.
* This processor was made for computer organization class at ITESO.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	05/07/2020
******************************************************************/


module MIPS_Processor
#(
	parameter MEMORY_DEPTH = 256
)
(
	// Inputs
	input clk,
	input reset,
	// Output
	output [31:0] alu_result_o
);
//******************************************************************/
//******************************************************************/
// Data types to connect modules

wire reg_dst_w;
wire alu_src_w;
wire reg_write_w;
wire zero_w;
wire topc_w;
wire mem_write_w;
wire mem_read_w;
wire mem_to_reg_w;
wire jmp_w;
//wire PC_SRC_w;
wire [2:0] alu_op_w;
wire [3:0] alu_operation_w;
wire [4:0] write_mux_w;
wire [4:0] write_register_w;
wire [31:0] mux_pc_r_branch_w;
wire [31:0] pc_w;
//wire [31:0] pc_erl2_w;
//wire [31:0] pc_jmp_adder_w;
wire [27:0] pc_jmp_w;
wire [27:0] branch_shifter_left_2_w;
wire [31:0] branch_adder_w;
wire [31:0] new_pc_w;
wire [31:0] mux_jmp_r_pc_w;
wire [31:0] instruction_w;
wire [31:0] read_data_1_w;
wire [31:0] read_data_2_w;
wire [31:0] inmmediate_extend_w;
wire [31:0] read_ata_2_r_nmmediate_w;
wire [31:0] write_data_w;
wire [31:0] alu_result_w;
wire [31:0] pc_plus_4_w;
wire [31:0] pc_plus_8_w;
wire [31:0] read_data_mmry_w;
wire [31:0] read_data_mmry_r_alu_w;



//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
CONTROL_UNIT
(
	.opcode_i(instruction_w[31:26]),
	.reg_dst_o(reg_dst_w),
	.branch_ne_o(branch_ne_w),
	.branch_eq_o(branch_eq_w),
	.alu_op_o(alu_op_w),
	.alu_src_o(alu_src_w),
	.reg_write_o(reg_write_w),
	.mem_read_o(mem_read_w),
	.mem_write_o(mem_write_w),
	.mem_to_reg_o(mem_to_reg_w),
	.jmp_o(jmp_w)
);

Program_Counter
PC
(
	.clk(clk),
	.reset(reset),
	.new_pc_i(new_pc_w),
	.pc_value_o(pc_w)
);

Program_Memory

#(
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
ROM
(
	.address_i(pc_w),
	.instruction_o(instruction_w)
);





Adder
PC_Puls_4
(
	.data_0_i(pc_w),
	.data_1_i(32'h4),
	
	.result_o(pc_plus_4_w)
);

/*Adder
PC_Puls_8
(
	.data_0_i(pc_w),
	.data_1_i(32'h4),
	
	.result_o(pc_plus_8_w)
);*/

//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Multiplexer_2_to_1
#(
	.N_BITS(5)
)
MUX_R_TYPE_OR_I_Type
(
	.selector_i(reg_dst_w),
	.data_0_i(instruction_w[20:16]),
	.data_1_i(instruction_w[15:11]),
	
	.mux_o(write_mux_w)

);



Register_File
#(
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
REGISTER_FILE_UNIT
(
	.clk(clk),
	.reset(reset),
	.reg_write_i(reg_write_w),
	.write_register_i(write_register_w),
	.read_register_1_i(instruction_w[25:21]),
	.read_register_2_i(instruction_w[20:16]),
	.write_data_i(write_data_w),
	.read_data_1_o(read_data_1_w),
	.read_data_2_o(read_data_2_w)

);

Sign_Extend
SIGNED_EXTEND_FOR_CONSTANTS
(   
	.data_i(instruction_w[15:0]),
   .sign_extend_o(inmmediate_extend_w)
);

Shift_Left_2
JMP_SHIFTER
(
	.data_i(instruction_w[25:0]),
   .data_o(pc_jmp_w)

);
/*Adder
JMP_ADDER
(
	.data_0_i(pc_plus_4_w),
	.data_1_i(pc_shifterl2_w),
	
	.result_o(pc_jmp_adder_w)
);*/

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_JMP_R_PC
(
	.selector_i(jmp_w),
	.data_0_i(mux_pc_r_branch_w),
	.data_1_i({pc_plus_4_w[31:28],pc_jmp_w[27:0]}),
	
	.mux_o(mux_jmp_r_pc_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_WRITE_REGISTER_JAL
(
	.selector_i(jmp_w),
	.data_0_i(write_mux_w),
	.data_1_i(5'h1f),
	
	.mux_o(write_register_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_REGISTER_WRITE_DATA_JAL
(
	.selector_i(jmp_w),
	.data_0_i(read_data_mmry_r_alu_w),
	.data_1_i(pc_plus_4_w),
	
	.mux_o(write_data_w)
);
Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_READ_DATA_2_OR_IMMEDIATE
(
	.selector_i(alu_src_w),
	.data_0_i(read_data_2_w),
	.data_1_i(inmmediate_extend_w),
	
	.mux_o(read_ata_2_r_nmmediate_w)

);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_REG_TO_PC
(
	.selector_i(topc_w),
	.data_0_i(mux_jmp_r_pc_w),
	.data_1_i(alu_result_w),
	
	.mux_o(new_pc_w)
);

Shift_Left_2
BRANCH_SHIFTER_LEFT_2
(
	.data_i(inmmediate_extend_w),
   .data_o(branch_shifter_left_2_w)
);


Adder
BRANCH_ADDER
(
	.data_0_i(pc_plus_4_w),
	.data_1_i({5'h0,branch_shifter_left_2_w}),
	
	.result_o(branch_adder_w[31:0])
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_PC_R_BRANCH
(
	.selector_i(branch_ne_w && ~(zero_w) || branch_eq_w && zero_w),
	.data_0_i(pc_plus_4_w),
	.data_1_i(branch_adder_w),
	
	.mux_o(mux_pc_r_branch_w)
);

ALU_Control
ALU_CTRL
(
	.alu_op_i(alu_op_w),
	.alu_function_i(instruction_w[5:0]),
	.alu_operation_o(alu_operation_w)

);


ALU
ALU_UNIT
(
	.alu_operation_i(alu_operation_w),
	.a_i(read_data_1_w),
	.b_i(read_ata_2_r_nmmediate_w),
	.shamt_i(instruction_w[10:6]),
	.zero_o(zero_w),
	.topc_o(topc_w),
	.alu_data_o(alu_result_w)
);


assign alu_result_o = alu_result_w;

Data_Memory
#(	
	.DATA_WIDTH(32),
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
DATA_MMRY
(
	.write_data_i(read_data_2_w),
	.address_i(alu_result_w),
	.mem_write_i(mem_write_w),
	.mem_read_i(mem_read_w), 
	.clk(clk),
	.data_o(read_data_mmry_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_READ_DATA_MEMORY_r_ALU
(
	.selector_i(mem_to_reg_w),
	.data_0_i(alu_result_w),
	.data_1_i(read_data_mmry_w),
	.mux_o(read_data_mmry_r_alu_w)

);

endmodule

