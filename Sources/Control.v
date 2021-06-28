/******************************************************************
* Description
*	This is control unit for the MIPS processor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	05/07/2020
******************************************************************/
module Control
(
	input [5:0]opcode_i,
	
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


localparam R_TYPE = 0;

localparam I_TYPE_ADDI 	= 6'h08;
localparam I_TYPE_LUI	= 6'h0f;
localparam I_TYPE_ORI	= 6'h0d;
localparam I_TYPE_ANDI	= 6'h0c;
localparam I_TYPE_SW		= 6'h2b;
localparam I_TYPE_LW		= 6'h23;
localparam I_TYPE_BEQ	= 6'h04;
localparam I_TYPE_BNE	= 6'h05;

localparam J_TYPE_JMP	= 6'h02;
localparam J_TYPE_JAL	= 6'h03;




reg [11:0] control_values_r;

always@(opcode_i) begin

	case(opcode_i)
	
		R_TYPE     	:  control_values_r = 12'b1_001_00_000_111;
		
		I_TYPE_ADDI	:	control_values_r = 12'b0_101_00_000_100;
		I_TYPE_LUI	:	control_values_r = 12'b0_101_00_000_001;
		I_TYPE_ORI	:	control_values_r = 12'b0_101_00_000_010;
		I_TYPE_ANDI	:	control_values_r = 12'b0_101_00_000_011;
		I_TYPE_SW	:	control_values_r = 12'b0_100_01_000_101;
		I_TYPE_LW	:	control_values_r = 12'b0_111_10_000_101; //Para ahorrar FUNCT utilizaré el mismo FUNCT a SW ya que solo cambia el control
		I_TYPE_BEQ	:	control_values_r = 12'b0_000_00_001_110;
		I_TYPE_BNE	:	control_values_r = 12'b0_000_00_010_110;
		
		J_TYPE_JMP	:	control_values_r = 12'b0_000_00_100_000; //asigne que para hacer un JMP necesitabas tener en 1 branch ne y eq
		J_TYPE_JAL	:	control_values_r = 12'b0_001_00_100_000;
		

		default:
			control_values_r = 11'b0000000000;
	endcase
		
end	
	
assign reg_dst_o = control_values_r[11];
assign alu_src_o = control_values_r[10];
assign mem_to_reg_o = control_values_r[9];
assign reg_write_o = control_values_r[8];
assign mem_read_o = control_values_r[7];
assign mem_write_o = control_values_r[6];
assign jmp_o = control_values_r[5];
assign branch_ne_o = control_values_r[4];
assign branch_eq_o = control_values_r[3];
assign alu_op_o = control_values_r[2:0];	

endmodule


