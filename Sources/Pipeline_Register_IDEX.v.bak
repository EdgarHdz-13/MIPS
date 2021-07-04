module Pipeline_Register_IFID
#
(
	parameter MEMORY_DEPTH = 32
)
(

	input  clk,
	input  reset,
	
	input	 [31:0]  pc_i,
	input  [31:0]  instr_i,
	
	output [31:0] 	pc_o,
	output [31:0] 	instr_o

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
INSTR
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.data_i(instr_i),
	.data_o(instr_o)
);


endmodule
