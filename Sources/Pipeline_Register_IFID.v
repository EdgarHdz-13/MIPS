module Pipeline_Register_IFID
#
(
	parameter MEMORY_DEPTH = 32,
	parameter FLUSH_ENABLE = 0
)
(

	input  clk,
	input  reset,
	input  reg_enabler,
	input  flush_i,
	input	 [31:0]  pc_i,
	input  [31:0]  instr_i,
	
	output [31:0] 	pc_o,
	output [31:0] 	instr_o

);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
PC
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(~reg_enabler),
	.data_i(pc_i),
	.data_o(pc_o)
);

Pipeline_register
#(
	.FLUSH_ENABLE(FLUSH_ENABLE)
)
INSTR
(
	.clk(clk),
	.reset(reset),
	.flush_i(flush_i),
	.enable(~reg_enabler),
	.data_i(instr_i),
	.data_o(instr_o)
);


endmodule
