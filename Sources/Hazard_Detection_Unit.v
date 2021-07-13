

module Hazard_Detection_Unit
(
	input mem_read_IDEX_i,
	input reset,
	input clk,
	input [4:0] Rt_IDEX_i,
	input [4:0] Rt_IFID_i,
	input [4:0] Rs_IFID_i,
	
	output PC_disenabler_o,
	output IFID_disenabler_o,
	output control_cero_mux_o
);
reg [2:0] control_hazard_r = 3'b000;

always@(mem_read_IDEX_i,Rt_IDEX_i,Rt_IFID_i,Rs_IFID_i) begin
	if(mem_read_IDEX_i == 1 && (Rt_IDEX_i == Rt_IFID_i ||  Rt_IDEX_i == Rs_IFID_i) )
		control_hazard_r = 3'b111;

	else
		control_hazard_r = 3'b000;

end

assign PC_disenabler_o = control_hazard_r[0];
assign IFID_disenabler_o = control_hazard_r[1];
assign control_cero_mux_o = control_hazard_r[2];

endmodule
