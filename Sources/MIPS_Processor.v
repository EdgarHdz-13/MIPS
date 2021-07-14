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
wire pipe_alu_src_w;
wire reg_write_w;
wire pipe_reg_write_w;
wire pipe2_reg_write_w;
wire pipe3_reg_write_w;
wire zero_w;
wire topc_w;
wire pipe_topc_w;
wire mem_write_w;
wire pipe_mem_write_w;
wire pipe2_mem_write_w;
wire mem_read_w;
wire pipe_mem_read_w;
wire pipe2_mem_read_w;
wire mem_to_reg_w;
wire pipe_mem_to_reg_w;
wire pipe2_mem_to_reg_w;
wire pipe3_mem_to_reg_w;
wire jmp_w;
wire pipe_jmp_w;
wire pipe2_jmp_w;
wire branch_ne_w;
wire pipe_branch_ne_w;
wire branch_eq_w;
wire pipe_branch_eq_w;
wire IFID_disenabler_w;
wire PC_disenabler_w;
wire control_zero_mux_w;
wire swtch_reg_dst_w;
wire swtch_pipe_branch_ne_w;
wire swtch_pipe_branch_eq_w;
wire swtch_pipe_alu_src_w;
wire swtch_pipe_reg_write_w;
wire swtch_pipe_mem_read_w;
wire swtch_pipe_mem_write_w;
wire swtch_pipe_mem_to_reg_w;
wire swtch_pipe_jmp_w;
wire control_branch_w;
wire flush_w;
wire jmp_MEMWB_w;

wire [2:0] alu_op_w;
wire [2:0] swtch_alu_op_w;
wire [2:0] sel_forward_a_w;
wire [2:0] sel_forward_b_w;
wire [3:0] alu_operation_w;
wire [3:0] pipe_alu_operation_w;
wire [4:0] write_mux_w;
wire [4:0] write_register_w;
wire [4:0] pipe_write_register_w;
wire [4:0] pipe2_write_register_w;
wire [4:0] pipe3_write_register_w;
wire [5:0] Rs_IDEX_w;
wire [5:0] Rt_IDEX_w;
wire [5:0] Rd_IDEX_w;
wire [5:0] Rd_EXMEM_w;
wire [5:0] Rd_MEMWB_w;
wire [10:6] shamt_w;
wire [31:0] mux_pc_r_branch_w;
wire [31:0] pipe_mux_pc_r_branch_w;
wire [31:0] pc_w;
wire [27:0] pc_jmp_w;
wire [27:0] branch_shifter_left_2_w;
wire [31:0] pipe_pc_jmp_w;
wire [31:0] branch_adder_w;
wire [31:0] new_pc_w;
wire [31:0] pipeline_new_pc_w;
wire [31:0] mux_jmp_r_pc_w;
wire [31:0] pipe_instruction_w;
wire [31:0] instruction_w;
wire [31:0] read_data_1_w;
wire [31:0] mux_o_rdata_1_idex_r_exmem_r_memwb_w;
wire [31:0] mux_o_rdata_2_idex_r_exmem_r_memwb_w;
wire [31:0] pipe_read_data_1_w;
wire [31:0] read_data_2_w;
wire [31:0] pipe_read_data_2_w;
wire [31:0] pipe2_read_data_2_w;
wire [31:0] inmmediate_extend_w;
wire [31:0] pipe_inmmediate_extend_w;
wire [31:0] read_ata_2_r_nmmediate_w;
wire [31:0] write_data_w;
wire [31:0] alu_result_w;
wire [31:0] pipe_alu_result_w;
wire [31:0] pipe2_alu_result_w;
wire [31:0] pc_plus_4_w;
wire [31:0] pipe_pc_plus_4_w;
wire [31:0] pipe2_pc_plus_4_w;
wire [31:0] pipe3_pc_plus_4_w;
wire [31:0] pipe4_pc_plus_4_w;
wire [31:0] read_data_mmry_w;
wire [31:0] pipe_read_data_mmry_w;
wire [31:0] read_data_mmry_r_alu_w;
wire [31:0] jmp_shifter_plus_pc_w;
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
CONTROL_UNIT
(
	.opcode_i(instruction_w[31:26]),
	
	.reg_dst_o(swtch_reg_dst_w),
	.branch_ne_o(swtch_pipe_branch_ne_w),
	.branch_eq_o(swtch_pipe_branch_eq_w),
	.alu_op_o(swtch_alu_op_w),
	.alu_src_o(swtch_pipe_alu_src_w),
	.reg_write_o(swtch_pipe_reg_write_w),
	.mem_read_o(swtch_pipe_mem_read_w),
	.mem_write_o(swtch_pipe_mem_write_w),
	.mem_to_reg_o(swtch_pipe_mem_to_reg_w),
	.jmp_o(swtch_pipe_jmp_w)
);

Program_Counter
PC
(
	.clk(clk),
	.reset(reset),
	.new_pc_i(new_pc_w),
	.pc_value_o(pc_w),
	.enabler_i(PC_disenabler_w)
);

Program_Memory

#(
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
ROM
(
	.address_i(pc_w),
	.instruction_o(pipe_instruction_w)
);


Adder
PC_Pulls_4
(
	.data_0_i(pc_w),
	.data_1_i(32'h4),
	
	.result_o(pipe_pc_plus_4_w)
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
	.read_data_1_o(pipe_read_data_1_w),
	.read_data_2_o(pipe_read_data_2_w)

);

Sign_Extend
SIGNED_EXTEND_FOR_CONSTANTS
(   
	.data_i(instruction_w[15:0]),
   .sign_extend_o(pipe_inmmediate_extend_w)
);

Shift_Left_2
JMP_SHIFTER
(
	.data_i({6'h0,instruction_w[25:0]}),
   .data_o(pipe_pc_jmp_w)

);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_JMP_R_PC
(
	.selector_i(jmp_w),
	.data_0_i(mux_pc_r_branch_w),
	.data_1_i(jmp_shifter_plus_pc_w),
	
	.mux_o(mux_jmp_r_pc_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_WRITE_REGISTER_JAL
(
	.selector_i(pipe_jmp_w),
	.data_0_i(write_mux_w),
	.data_1_i(5'h1f),
	
	.mux_o(pipe_write_register_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_REGISTER_WRITE_DATA_JAL
(
	.selector_i(jmp_MEMWB_w),
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
	.data_0_i(mux_o_rdata_2_idex_r_exmem_r_memwb_w),
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
	.data_1_i(pipe2_alu_result_w),
	
	.mux_o(pipeline_new_pc_w)
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
	.data_0_i(pipe3_pc_plus_4_w),
	.data_1_i({5'h0,branch_shifter_left_2_w}),
	
	.result_o(branch_adder_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_PC_R_BRANCH
(
	.selector_i(branch_ne_w && ~(zero_w) || branch_eq_w && zero_w),
	.data_0_i(pipe3_pc_plus_4_w),
	.data_1_i(branch_adder_w),
	
	.mux_o(pipe_mux_pc_r_branch_w)
);

ALU_Control
ALU_CTRL
(
	.alu_op_i(alu_op_w),
	.alu_function_i(instruction_w[5:0]),
	.alu_operation_o(pipe_alu_operation_w)

);


ALU
ALU_UNIT
(
	.alu_operation_i(alu_operation_w),
	.a_i(mux_o_rdata_1_idex_r_exmem_r_memwb_w),
	.b_i(read_ata_2_r_nmmediate_w),
	.shamt_i(shamt_w),
	.zero_o(zero_w),
	.topc_o(pipe_topc_w),
	.alu_data_o(pipe_alu_result_w)
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
	.address_i(pipe2_alu_result_w),
	.mem_write_i(mem_write_w),
	.mem_read_i(mem_read_w), 
	.clk(clk),
	.data_o(pipe_read_data_mmry_w)
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

Pipeline_Register_IFID
#(
	.MEMORY_DEPTH(MEMORY_DEPTH),
	.FLUSH_ENABLE(1)
)
REGISTER_IF_ID
(
	.clk(clk),
	.reset(reset),
	
	.flush_i(flush_w),
	.pc_i(pipe_pc_plus_4_w),
	.instr_i(pipe_instruction_w),
	.reg_enabler(IFID_disenabler_w),
	
	////////////////
	.pc_o(pipe2_pc_plus_4_w),
	
	.instr_o(instruction_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_PIPELINE_R_BRNCH
(
	.selector_i(topc_w || jmp_w || control_branch_w),
	.data_0_i(pipe_pc_plus_4_w),
	.data_1_i(pipeline_new_pc_w),
	.mux_o(new_pc_w)

);

Pipeline_Register_IDEX
#(
	.MEMORY_DEPTH(MEMORY_DEPTH),
	.FLUSH_ENABLE(1)
)
REGISTER_ID_EX
(
	.clk(clk),
	.reset(reset),
	
	.branch_ne_i(pipe_branch_ne_w),
	.branch_eq_i(pipe_branch_eq_w),
	.jmp_i(pipe_jmp_w),
	.mem_to_reg_i(pipe_mem_to_reg_w),
	.mem_write_i(pipe_mem_write_w),
	.mem_read_i(pipe_mem_read_w),
	.alu_src_i(pipe_alu_src_w),
	.jmp_shifter_i(pipe_pc_jmp_w),
	.pc_i(pipe2_pc_plus_4_w),
	.read_data_1_i(pipe_read_data_1_w),
	.read_data_2_i(pipe_read_data_2_w),
	.shamt_i(instruction_w[10:6]),
	.alu_ctrl_i(pipe_alu_operation_w),
	.inmmediate_extend_i(pipe_inmmediate_extend_w),
	.write_register_i(pipe_write_register_w),
	.reg_write_i(pipe_reg_write_w),
	.Rs_i(instruction_w[25:21]),
	.Rt_i(instruction_w[20:16]),
	.Rd_i(pipe_write_register_w),
	.flush_i(flush_w),
	
	/////////////////////////////////////
	
	.branch_ne_o(branch_ne_w),
	.branch_eq_o(branch_eq_w),
	.jmp_o(pipe2_jmp_w),
	.mem_to_reg_o(pipe2_mem_to_reg_w),
	.mem_write_o(pipe2_mem_write_w),
	.mem_read_o(pipe2_mem_read_w),
	.alu_src_o(alu_src_w),
	.jmp_shifter_o(pc_jmp_w),
	.pc_o(pipe3_pc_plus_4_w),
	.read_data_1_o(read_data_1_w),
	.read_data_2_o(pipe2_read_data_2_w),
	.shamt_o(shamt_w),
	.alu_ctrl_o(alu_operation_w),
	.inmmediate_extend_o(inmmediate_extend_w),
	.write_register_o(pipe2_write_register_w),
	.reg_write_o(pipe2_reg_write_w),
	.Rs_o(Rs_IDEX_w),
	.Rt_o(Rt_IDEX_w),
	.Rd_o(Rd_IDEX_w)
);

Pipeline_Register_EXMEM
#(
	.MEMORY_DEPTH(MEMORY_DEPTH),
	.FLUSH_ENABLE(1)
)
REGISTER_EX_MEM
(

	.clk(clk),
	.reset(reset),
	

	.topc_i(pipe_topc_w),
	.jmp_i(pipe2_jmp_w),
	.mem_to_reg_i(pipe2_mem_to_reg_w),
	.mem_read_i(pipe2_mem_read_w),
	.mem_write_i(pipe2_mem_write_w),
	.alu_result_i(pipe_alu_result_w),
	.read_data_2_i(mux_o_rdata_2_idex_r_exmem_r_memwb_w),
	.mux_pc_r_branch_i(pipe_mux_pc_r_branch_w),
	.jmp_shifter_plus_pc_i({pipe3_pc_plus_4_w[31:28],pc_jmp_w[27:0]}),
	.pc_plus_4_i(pipe3_pc_plus_4_w),
	.write_register_i(pipe2_write_register_w),
	.reg_write_i(pipe2_reg_write_w),
	.Rd_i(Rd_IDEX_w),
	.branch_i(branch_ne_w && ~(zero_w) || branch_eq_w && zero_w),
	.flush_i(flush_w),
	
	////////////////////////////////////
	
	.topc_o(topc_w),
	.jmp_o(jmp_w),
	.mem_to_reg_o(pipe3_mem_to_reg_w),
	.mem_read_o(mem_read_w),
	.mem_write_o(mem_write_w),
	.alu_result_o(pipe2_alu_result_w),
	.read_data_2_o(read_data_2_w),
	.mux_pc_r_branch_o(mux_pc_r_branch_w),
	.jmp_shifter_plus_pc_o(jmp_shifter_plus_pc_w),
	.pc_plus_4_o(pipe4_pc_plus_4_w),
	.write_register_o(pipe3_write_register_w),
	.reg_write_o(pipe3_reg_write_w),
	.Rd_o(Rd_EXMEM_w),
	.branch_o(control_branch_w)

);

Pipeline_Register_MEMWB
#(
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
REGISTER_MEM_WB
(

	.clk(clk),
	.reset(reset),
	
	.mem_to_reg_i(pipe3_mem_to_reg_w),
	.reg_write_i(pipe3_reg_write_w),
	.write_register_i(pipe3_write_register_w),
	.pc_plus_4_i(pipe4_pc_plus_4_w),
	.read_data_mmry_i(pipe_read_data_mmry_w),
	.alu_result_i(pipe2_alu_result_w),
	.Rd_i(Rd_EXMEM_w),
	.jmp_i(jmp_w),
	
	////////////////////////////////
	
	.jmp_o(jmp_MEMWB_w),
	.mem_to_reg_o(mem_to_reg_w),
	.reg_write_o(reg_write_w),
	.write_register_o(write_register_w),
	.pc_plus_4_o(pc_plus_4_w),
	.read_data_mmry_o(read_data_mmry_w),
	.alu_result_o(alu_result_w),
	.Rd_o(Rd_MEMWB_w)
);

Forward_Unit
FORWARD_UNIT
(
	.reg_write_EXMEM_i(pipe3_reg_write_w),
	.reg_write_MEMWB_i(reg_write_w),
	.Rs_IDEX_i(Rs_IDEX_w),
	.Rt_IDEX_i(Rt_IDEX_w),
	.Rd_EXMEM_i(Rd_EXMEM_w),
	.Rd_MEMWB_i(Rd_MEMWB_w),
	
	.forward_a_o(sel_forward_a_w),
	.forward_b_o(sel_forward_b_w)

);

Multiplexer_4_to_1
#(
	.N_BITS(32)
)
MUX_RDATA_1_IDEX_R_EXMEM_R_MEMWB
(
	.selector_i(sel_forward_a_w),
	
	.data_0_i(read_data_1_w),
	.data_1_i(pipe2_alu_result_w),
	.data_2_i(read_data_mmry_r_alu_w),
	.data_3_i(0),
	
	.mux_o(mux_o_rdata_1_idex_r_exmem_r_memwb_w)

);

Multiplexer_4_to_1
#(
	.N_BITS(32)
)
MUX_RDATA_2_IDEX_R_EXMEM_R_MEMWB
(
	.selector_i(sel_forward_b_w),
	
	.data_0_i(pipe2_read_data_2_w),
	.data_1_i(pipe2_alu_result_w),
	.data_2_i(read_data_mmry_r_alu_w),
	.data_3_i(0),
	
	.mux_o(mux_o_rdata_2_idex_r_exmem_r_memwb_w)

);

Hazard_Detection_Unit
HAZARD_DETECTION_UNIT
(
	.mem_read_IDEX_i(pipe2_mem_read_w),
	.reset(reset),
	.clk(clk),
	.Rt_IDEX_i(Rt_IDEX_w),
	.Rt_IFID_i(instruction_w[20:16]),
	.Rs_IFID_i(instruction_w[25:21]),
	.branch_i(control_branch_w),
	.jmp_i(jmp_w),
	.topc_i(topc_w),
	
	.PC_disenabler_o(PC_disenabler_w),
	.IFID_disenabler_o(IFID_disenabler_w),
	.control_cero_mux_o(control_zero_mux_w),
	.flush_o(flush_w)
);


Control_Switch
CONTROL_ZERO_SWITCH
(
	.selector_i(control_zero_mux_w),
	
	.reg_dst_i(swtch_reg_dst_w),
	.branch_eq_i(swtch_pipe_branch_eq_w),
	.branch_ne_i(swtch_pipe_branch_ne_w),
	.mem_read_i(swtch_pipe_mem_read_w),
	.mem_to_reg_i(swtch_pipe_mem_to_reg_w),
	.mem_write_i(swtch_pipe_mem_write_w),
	.alu_src_i(swtch_pipe_alu_src_w),
	.reg_write_i(swtch_pipe_reg_write_w),
	.jmp_i(swtch_pipe_jmp_w),
	.alu_op_i(swtch_alu_op_w),
	
	/////////////////////////////

	.reg_dst_o(reg_dst_w),
	.branch_ne_o(pipe_branch_ne_w),
	.branch_eq_o(pipe_branch_eq_w),
	.alu_op_o(alu_op_w),
	.alu_src_o(pipe_alu_src_w),
	.reg_write_o(pipe_reg_write_w),
	.mem_read_o(pipe_mem_read_w),
	.mem_write_o(pipe_mem_write_w),
	.mem_to_reg_o(pipe_mem_to_reg_w),
	.jmp_o(pipe_jmp_w)

);
endmodule

