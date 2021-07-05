onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk -radix hexadecimal /MIPS_Processor_TB/clk_tb
add wave -noupdate -label rst -radix hexadecimal /MIPS_Processor_TB/reset_tb
add wave -noupdate -label alu_result -radix hexadecimal /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -expand -group PC -label pc_value -radix hexadecimal /MIPS_Processor_TB/DUV/PC/pc_value_o
add wave -noupdate -expand -group PC -label new_pc -radix hexadecimal /MIPS_Processor_TB/DUV/PC/new_pc_i
add wave -noupdate -expand -group IFID -expand -group IFID_PC -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/PC/data_i
add wave -noupdate -expand -group IFID -expand -group IFID_PC -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/PC/data_o
add wave -noupdate -expand -group IFID -expand -group IFID_INSTRUCTION -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/INSTR/data_i
add wave -noupdate -expand -group IFID -expand -group IFID_INSTRUCTION -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/INSTR/data_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {19 ps}
