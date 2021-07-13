
module Forward_Unit
(
	input	reg_write_EXMEM_i,
	input reg_write_MEMWB_i,
	input [4:0] Rs_IDEX_i,
	input [4:0] Rt_IDEX_i,
	input [4:0] Rd_EXMEM_i,
	input [4:0] Rd_MEMWB_i,
	
	output reg [1:0] forward_a_o,
	output reg [1:0] forward_b_o

);

	always@(Rs_IDEX_i, Rt_IDEX_i, Rd_EXMEM_i, Rd_MEMWB_i,reg_write_EXMEM_i, reg_write_MEMWB_i) begin
	
		if(reg_write_EXMEM_i && Rd_EXMEM_i != 0 && Rd_EXMEM_i == Rs_IDEX_i)
			forward_a_o = 2'b01;
			
		else if(reg_write_MEMWB_i == 1  &&  Rd_MEMWB_i != 0 &&  Rd_MEMWB_i == Rs_IDEX_i)
			forward_a_o = 2'b10;
			
		else
			forward_a_o = 2'b00;
			
		////////////////////////////////////	
			
		if(reg_write_EXMEM_i == 1 && Rd_EXMEM_i != 0 && Rd_EXMEM_i == Rt_IDEX_i)
			forward_b_o = 2'b01;
		
		else if(reg_write_MEMWB_i == 1 &&  Rd_MEMWB_i != 0 &&  Rd_MEMWB_i == Rt_IDEX_i)
			forward_b_o = 2'b10;
			
		else
			forward_b_o = 2'b00;
			
	end

endmodule
