onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk_tb /MIPS_Processor_TB/clk_tb
add wave -noupdate -label reset_tb /MIPS_Processor_TB/reset_tb
add wave -noupdate -label alu_result_tb -radix hexadecimal /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -expand -group Program_Memory -label address_i -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/address_i
add wave -noupdate -expand -group Program_Memory -label new_pc -radix hexadecimal /MIPS_Processor_TB/DUV/PC/new_pc_i
add wave -noupdate -expand -group Program_Memory -label instruction_o -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/ROM/instruction_o[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/ROM/instruction_o[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ROM/instruction_o[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/ROM/instruction_o
add wave -noupdate -group REGISTER_FILE -group input -label read_register_1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_1_i
add wave -noupdate -group REGISTER_FILE -group input -label read_register_2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_2_i
add wave -noupdate -group REGISTER_FILE -group input -label write_register -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i
add wave -noupdate -group REGISTER_FILE -group input -label write_data -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_data_i
add wave -noupdate -group REGISTER_FILE -group Registros -label at -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/at/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label v0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/v0/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label s0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label t1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t1/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label t2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t2/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label t3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t3/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label t4 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t4/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label t5 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t5/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label t6 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t6/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label a0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a0/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label a1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label a2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a2/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label a3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a3/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label sp -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/sp/data_o
add wave -noupdate -group REGISTER_FILE -group Registros -label ra -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/ra/data_o
add wave -noupdate -group Tower_1 -label 10010000 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[0]}
add wave -noupdate -group Tower_1 -label 10010020 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[8]}
add wave -noupdate -group Tower_1 -label 10010040 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[16]}
add wave -noupdate -group Tower_2 -label 10010004 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[1]}
add wave -noupdate -group Tower_2 -label 10010024 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[9]}
add wave -noupdate -group Tower_2 -label 10010044 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[17]}
add wave -noupdate -group Tower_3 -label 10010008 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[2]}
add wave -noupdate -group Tower_3 -label 10010028 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[10]}
add wave -noupdate -group Tower_3 -label 10010048 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[18]}
add wave -noupdate -group Stack -label 1 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[255]}
add wave -noupdate -group Stack -label 2 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[254]}
add wave -noupdate -group Stack -label 3 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[253]}
add wave -noupdate -group Stack -label 4 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[252]}
add wave -noupdate -group Stack -label 5 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[251]}
add wave -noupdate -group Stack -label 6 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[250]}
add wave -noupdate -group Stack -label 7 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[249]}
add wave -noupdate -group Stack -label 8 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[248]}
add wave -noupdate -group Stack -label 9 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[247]}
add wave -noupdate -group Stack -label 10 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[246]}
add wave -noupdate -group Stack -label 11 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[245]}
add wave -noupdate -group Stack -label 12 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[244]}
add wave -noupdate -group Stack -label 13 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[243]}
add wave -noupdate -group Stack -label 14 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[242]}
add wave -noupdate -group Stack -label 15 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[241]}
add wave -noupdate -group Control -label mem_read /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_read_o
add wave -noupdate -group Control -label mem_write /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_write_o
add wave -noupdate -group Control -label reg_dst /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_dst_o
add wave -noupdate -group Control -label branch_eq /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_eq_o
add wave -noupdate -group Control -label branch_ne /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_ne_o
add wave -noupdate -group Control -label mem_to_reg /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_to_reg_o
add wave -noupdate -group Control -label alu_src_o /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_src_o
add wave -noupdate -group Control -label reg_write_o /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_write_o
add wave -noupdate -group Control -label jmp_o /MIPS_Processor_TB/DUV/CONTROL_UNIT/jmp_o
add wave -noupdate -group Control -label alu_op /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_op_o
add wave -noupdate -group Data_mmry -label mem_write_i /MIPS_Processor_TB/DUV/DATA_MMRY/mem_write_i
add wave -noupdate -group Data_mmry -label mem_read_i /MIPS_Processor_TB/DUV/DATA_MMRY/mem_read_i
add wave -noupdate -group Data_mmry -label address_i -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/address_i
add wave -noupdate -group Data_mmry -label write_data -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/write_data_i
add wave -noupdate -group Data_mmry -label real_address -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/real_address_r
add wave -noupdate -group LW_SW -expand -group Control_LW -label reg_dst /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_dst_o
add wave -noupdate -group LW_SW -expand -group Control_LW -label jmp /MIPS_Processor_TB/DUV/CONTROL_UNIT/jmp_o
add wave -noupdate -group LW_SW -expand -group Control_LW -label alu_src /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_src_o
add wave -noupdate -group LW_SW -expand -group Control_LW -label mem_to_reg /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_to_reg_o
add wave -noupdate -group LW_SW -expand -group Control_LW -label reg_write /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_write_o
add wave -noupdate -group LW_SW -expand -group Control_LW -label mem_read /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_read_o
add wave -noupdate -group LW_SW -expand -group Control_LW -label mem_write /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_write_o
add wave -noupdate -group LW_SW -expand -group Control_LW -label alu_op /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_op_o
add wave -noupdate -group LW_SW -expand -group Register_file_unit_LW -label read_register_1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_1_i
add wave -noupdate -group LW_SW -expand -group Register_file_unit_LW -label {read data 1} -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_data_1_o
add wave -noupdate -group LW_SW -expand -group Register_file_unit_LW -label write_register -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i
add wave -noupdate -group LW_SW -expand -group Register_file_unit_LW -label write_data -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_data_i
add wave -noupdate -group LW_SW -expand -group Register_file_unit_LW -label {a1 (5)} -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o
add wave -noupdate -group LW_SW -expand -group ALU_UNIT -label alu_operation /MIPS_Processor_TB/DUV/ALU_UNIT/alu_operation_i
add wave -noupdate -group LW_SW -expand -group ALU_UNIT -label alu_a_i -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/a_i
add wave -noupdate -group LW_SW -expand -group ALU_UNIT -label alu_b_i -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/b_i
add wave -noupdate -group LW_SW -expand -group ALU_UNIT -label alu_data_o -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -group LW_SW -expand -group DATA_MMRY_LW -label Dirección -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/address_i
add wave -noupdate -group LW_SW -expand -group DATA_MMRY_LW -label {dirección real} -radix decimal /MIPS_Processor_TB/DUV/DATA_MMRY/real_address_r
add wave -noupdate -group LW_SW -expand -group DATA_MMRY_LW -label {dirección 242} -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[242]}
add wave -noupdate -group LW_SW -expand -group DATA_MMRY_LW -label write_data /MIPS_Processor_TB/DUV/DATA_MMRY/write_data_i
add wave -noupdate -group LW_SW -expand -group DATA_MMRY_LW -label data_o -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/data_o
add wave -noupdate -group Jmp -label jmp_control /MIPS_Processor_TB/DUV/CONTROL_UNIT/jmp_o
add wave -noupdate -group Jmp -label branch_ne /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_ne_o
add wave -noupdate -group Jmp -label branch_eq /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_eq_o
add wave -noupdate -group Jmp -label jmp_shifter_2_i -radix hexadecimal /MIPS_Processor_TB/DUV/JMP_SHIFTER/data_i
add wave -noupdate -group Jmp -label jmp_shifter_2_o -radix hexadecimal /MIPS_Processor_TB/DUV/JMP_SHIFTER/data_o
add wave -noupdate -group Jmp -label mux_jmp_r_pc_o -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_JMP_R_PC/mux_o
add wave -noupdate -group JR -label jmp_control /MIPS_Processor_TB/DUV/CONTROL_UNIT/jmp_o
add wave -noupdate -group JR -label alu_topc_w /MIPS_Processor_TB/DUV/MUX_REG_TO_PC/selector_i
add wave -noupdate -group JR -label read_data_1_1 /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_1_i
add wave -noupdate -group JR -label {$ra} -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/ra/data_o
add wave -noupdate -group JR -label read_data_1_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_data_1_o
add wave -noupdate -group JR -label alu_data_o -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -group JR -label alu_topc /MIPS_Processor_TB/DUV/ALU_UNIT/topc_o
add wave -noupdate -group JR -label jmp_control /MIPS_Processor_TB/DUV/CONTROL_UNIT/jmp_o
add wave -noupdate -group JR -label alu_topc_w /MIPS_Processor_TB/DUV/MUX_REG_TO_PC/selector_i
add wave -noupdate -group JR -label read_data_1_1 /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_1_i
add wave -noupdate -group JR -label {$ra} -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/ra/data_o
add wave -noupdate -group JR -label read_data_1_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_data_1_o
add wave -noupdate -group JR -label alu_data_o -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -group JR -label alu_topc /MIPS_Processor_TB/DUV/ALU_UNIT/topc_o
add wave -noupdate -expand -group {beq y bne} -label branch_eq_control /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_eq_o
add wave -noupdate -expand -group {beq y bne} -label branc_ne_control /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_ne_o
add wave -noupdate -expand -group {beq y bne} -label alu_src_o -radix unsigned /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_src_o
add wave -noupdate -expand -group {beq y bne} -label zero_o /MIPS_Processor_TB/DUV/ALU_UNIT/zero_o
add wave -noupdate -expand -group {beq y bne} -label alu_op_control /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_op_o
add wave -noupdate -expand -group {beq y bne} -label alu_op /MIPS_Processor_TB/DUV/ALU_CTRL/alu_operation_o
add wave -noupdate -expand -group {beq y bne} -label a0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a0/data_o
add wave -noupdate -expand -group {beq y bne} -label at -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/at/data_o
add wave -noupdate -expand -group {beq y bne} -label read_data_1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_data_1_o
add wave -noupdate -expand -group {beq y bne} -label read_data_2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_data_2_o
add wave -noupdate -expand -group {beq y bne} -label PC_PULS_4_o -radix hexadecimal /MIPS_Processor_TB/DUV/PC_Puls_4/result_o
add wave -noupdate -expand -group {beq y bne} -label branch_adder_o -radix hexadecimal /MIPS_Processor_TB/DUV/BRANCH_ADDER/result_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4783 ps} 0} {{Cursor 2} {105 ps} 0} {{Cursor 3} {315 ps} 0}
quietly wave cursor active 3
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
WaveRestoreZoom {310 ps} {329 ps}
