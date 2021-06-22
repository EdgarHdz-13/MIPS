onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk_tb
add wave -noupdate /MIPS_Processor_TB/reset_tb
add wave -noupdate /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -expand -group Program_Counter -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/PC/new_pc_i[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/PC/new_pc_i[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/PC/new_pc_i
add wave -noupdate -expand -group Program_Counter -radix hexadecimal /MIPS_Processor_TB/DUV/PC/pc_value_o
add wave -noupdate -expand -group {Program Memory} -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/address_i
add wave -noupdate -expand -group {Program Memory} -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/instruction_o
add wave -noupdate -expand -group Reg_File -group Reg_File /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/reg_write_i
add wave -noupdate -expand -group Reg_File -label s0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -expand -group Reg_File -label s1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s1/data_o
add wave -noupdate -expand -group Reg_File -label s2 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s2/data_o
add wave -noupdate -expand -group Reg_File -label s3 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s3/data_o
add wave -noupdate -expand -group Reg_File -label t0 /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o
add wave -noupdate -expand -group Reg_File -label t1 /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t1/data_o
add wave -noupdate -expand -group ALU -expand -group ALU -radix binary /MIPS_Processor_TB/DUV/ALU_UNIT/alu_operation_i
add wave -noupdate -expand -group ALU -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/a_i
add wave -noupdate -expand -group ALU -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/b_i
add wave -noupdate -expand -group ALU -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -expand -group ALU -radix decimal /MIPS_Processor_TB/DUV/ALU_UNIT/zero_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {21 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 66
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {66 ps}
