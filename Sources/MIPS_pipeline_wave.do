onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk -radix hexadecimal /MIPS_Processor_TB/clk_tb
add wave -noupdate -label rst -radix hexadecimal /MIPS_Processor_TB/reset_tb
add wave -noupdate -label alu_result -radix hexadecimal /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -expand -group Register_file -label s0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -expand -group Register_file -label s1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s1/data_o
add wave -noupdate -expand -group Register_file -label s2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s2/data_o
add wave -noupdate -expand -group Register_file -label s3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s3/data_o
add wave -noupdate -expand -group Register_file -label t0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o
add wave -noupdate -expand -group Register_file -label t1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t1/data_o
add wave -noupdate -expand -group Register_file -label t2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t2/data_o
add wave -noupdate -expand -group fetch -expand -group PC -label pc_value -radix hexadecimal /MIPS_Processor_TB/DUV/PC/pc_value_o
add wave -noupdate -expand -group fetch -expand -group PC -label new_pc -radix hexadecimal /MIPS_Processor_TB/DUV/PC/new_pc_i
add wave -noupdate -expand -group IFID -expand -group input -label pc_i -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/pc_i
add wave -noupdate -expand -group IFID -expand -group input -label instr_i -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/instr_i
add wave -noupdate -expand -group IFID -expand -group output -label pc_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/pc_o
add wave -noupdate -expand -group IFID -expand -group output -label instr_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/instr_o
add wave -noupdate -group IDEX -label write_register_i /MIPS_Processor_TB/DUV/REGISTER_ID_EX/write_register_i
add wave -noupdate -group IDEX -label write_register_o /MIPS_Processor_TB/DUV/REGISTER_ID_EX/write_register_o
add wave -noupdate -expand -group EXECUTE -expand -group alu_unit -label a_i -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/a_i
add wave -noupdate -expand -group EXECUTE -expand -group alu_unit -label b_i -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/b_i
add wave -noupdate -expand -group EXECUTE -expand -group alu_unit -label data_o -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -expand -group register_file_wb -label write_register -radix binary -childformat {{{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i
add wave -noupdate -expand -group register_file_wb -label write_data -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_data_i
add wave -noupdate -label reg_write /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/reg_write_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {131 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 176
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
WaveRestoreZoom {116 ps} {151 ps}
