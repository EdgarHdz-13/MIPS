onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk_tb
add wave -noupdate /MIPS_Processor_TB/reset_tb
add wave -noupdate -expand -group Program_Counter -radix hexadecimal /MIPS_Processor_TB/DUV/PC/pc_value_o
add wave -noupdate -expand -group Program_Counter -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/PC/new_pc_i[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/PC/new_pc_i[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/PC/new_pc_i[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/PC/new_pc_i[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/PC/new_pc_i
add wave -noupdate -expand -group {Program Memory} -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/ROM/address_i[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/address_i[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/ROM/address_i[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/address_i[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/ROM/address_i
add wave -noupdate -expand -group {Program Memory} -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/ROM/instruction_o[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/ROM/instruction_o[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/ROM/instruction_o
add wave -noupdate -expand -group Reg_File /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/reg_write_i
add wave -noupdate -expand -group Reg_File -color Gray75 -label t0 -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[31]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[30]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[29]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[28]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[27]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[26]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[25]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[24]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[23]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[22]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[21]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[20]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[19]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[18]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[17]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[16]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[15]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[14]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[13]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[12]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[11]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[10]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[9]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[8]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[7]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[6]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[5]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[4]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[3]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[2]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[1]} {-color Gray75 -height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o[0]} {-color Gray75 -height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o
add wave -noupdate -expand -group Reg_File -color Gray75 -label t1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t1/data_o
add wave -noupdate -expand -group Reg_File -color Tan -label s0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -expand -group Reg_File -color Tan -label s1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s1/data_o
add wave -noupdate -expand -group Reg_File -color Tan -label s2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s2/data_o
add wave -noupdate -expand -group Reg_File -color Tan -label s3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s3/data_o
add wave -noupdate -expand -group Reg_File -label s4 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s4/data_o
add wave -noupdate -expand -group Reg_File -label s5 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s5/data_o
add wave -noupdate -expand -group Reg_File -label s6 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s6/data_o
add wave -noupdate -expand -group Reg_File -label s7 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s7/data_o
add wave -noupdate -expand -group Reg_File -color Gray75 -label t2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t2/data_o
add wave -noupdate -expand -group Reg_File -label DATA_MEMORY -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[0]}
add wave -noupdate -expand -group Reg_File -label t3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t3/data_o
add wave -noupdate -expand -group ALU -radix binary /MIPS_Processor_TB/DUV/ALU_UNIT/alu_operation_i
add wave -noupdate -expand -group ALU -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/a_i
add wave -noupdate -expand -group ALU -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/b_i
add wave -noupdate -expand -group ALU -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -expand -group ALU -radix decimal /MIPS_Processor_TB/DUV/ALU_UNIT/zero_o
add wave -noupdate -expand -group ALU -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/shamt_i
add wave -noupdate -expand -group Data_Memory /MIPS_Processor_TB/DUV/DATA_MMRY/mem_write_i
add wave -noupdate -expand -group Data_Memory /MIPS_Processor_TB/DUV/DATA_MMRY/mem_read_i
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
WaveRestoreZoom {0 ps} {63 ps}
