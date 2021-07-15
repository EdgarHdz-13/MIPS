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
add wave -noupdate -expand -group Tower_1 -label 10010000 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[0]}
add wave -noupdate -expand -group Tower_1 -label 10010020 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[8]}
add wave -noupdate -expand -group Tower_1 -label 10010040 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[16]}
add wave -noupdate -expand -group Tower_2 -label 10010004 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[1]}
add wave -noupdate -expand -group Tower_2 -label 10010024 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[9]}
add wave -noupdate -expand -group Tower_2 -label 10010044 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[17]}
add wave -noupdate -expand -group Tower_3 -label 10010008 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[2]}
add wave -noupdate -expand -group Tower_3 -label 10010028 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[10]}
add wave -noupdate -expand -group Tower_3 -label 10010048 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[18]}
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
add wave -noupdate -group Register_file -label at -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/at/data_o
add wave -noupdate -group Register_file -label a0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a0/data_o
add wave -noupdate -group Register_file -label a1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o
add wave -noupdate -group Register_file -label a2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a2/data_o
add wave -noupdate -group Register_file -label t0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o
add wave -noupdate -group Register_file -label t1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t1/data_o
add wave -noupdate -group Register_file -label t2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t2/data_o
add wave -noupdate -group Register_file -label t3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t3/data_o
add wave -noupdate -group Register_file -label t6 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t6/data_o
add wave -noupdate -group Register_file -label s0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -group fetch -expand -group PC -label pc_value -radix hexadecimal /MIPS_Processor_TB/DUV/PC/pc_value_o
add wave -noupdate -group fetch -expand -group PC -label new_pc -radix hexadecimal /MIPS_Processor_TB/DUV/PC/new_pc_i
add wave -noupdate -group IFID -expand -group input -label flush_i /MIPS_Processor_TB/DUV/REGISTER_IF_ID/flush_i
add wave -noupdate -group IFID -expand -group input -label pc_plus_4 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/pc_i
add wave -noupdate -group IFID -expand -group input -label instr_i -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/instr_i
add wave -noupdate -group IFID -expand -group output -label pc_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/pc_o
add wave -noupdate -group IFID -expand -group output -label instr_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_IF_ID/instr_o
add wave -noupdate -group ID -expand -group register_file_ID -label read_register_1_i -radix binary /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_1_i
add wave -noupdate -group ID -expand -group register_file_ID -label read_register_2_i -radix binary /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_2_i
add wave -noupdate -group ID -expand -group register_file_ID -label read_data_1_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_data_1_o
add wave -noupdate -group ID -expand -group register_file_ID -label read_data_2_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_data_2_o
add wave -noupdate -group ID -group Contrl_unit -label opcode /MIPS_Processor_TB/DUV/CONTROL_UNIT/opcode_i
add wave -noupdate -group ID -group Contrl_unit -label alu_op /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_op_o
add wave -noupdate -group ID -group Contrl_unit -label {branch eq} /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_eq_o
add wave -noupdate -group ID -group Contrl_unit -label branch_ne /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_ne_o
add wave -noupdate -group ID -group Contrl_unit -label jmp_o /MIPS_Processor_TB/DUV/CONTROL_UNIT/jmp_o
add wave -noupdate -group ID -group Contrl_unit -label mem_write /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_write_o
add wave -noupdate -group ID -group Jmp_SHIFTER -label data_i -radix hexadecimal /MIPS_Processor_TB/DUV/JMP_SHIFTER/data_i
add wave -noupdate -group ID -group Jmp_SHIFTER -label data_o -radix hexadecimal /MIPS_Processor_TB/DUV/JMP_SHIFTER/data_o
add wave -noupdate -group IDEX -label flush /MIPS_Processor_TB/DUV/REGISTER_ID_EX/flush_i
add wave -noupdate -group IDEX -group input_idex -label write_register_i /MIPS_Processor_TB/DUV/REGISTER_ID_EX/write_register_i
add wave -noupdate -group IDEX -group input_idex -label flush_i /MIPS_Processor_TB/DUV/REGISTER_IF_ID/flush_i
add wave -noupdate -group IDEX -group output_idex -label write_register_o /MIPS_Processor_TB/DUV/REGISTER_ID_EX/write_register_o
add wave -noupdate -group IDEX -group output_idex -label jmp_o /MIPS_Processor_TB/DUV/REGISTER_ID_EX/jmp_o
add wave -noupdate -group EXECUTE -expand -group alu_unit -label a_i -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/a_i
add wave -noupdate -group EXECUTE -expand -group alu_unit -label b_i -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/b_i
add wave -noupdate -group EXECUTE -expand -group alu_unit -label data_o -radix hexadecimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -group EXECUTE -expand -group Mux_pc_r_branch -label selector -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_PC_R_BRANCH/selector_i
add wave -noupdate -group EXECUTE -expand -group Mux_pc_r_branch -label data_0_i -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_PC_R_BRANCH/data_0_i
add wave -noupdate -group EXECUTE -expand -group Mux_pc_r_branch -label data_1_i -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_PC_R_BRANCH/data_1_i
add wave -noupdate -group EXECUTE -expand -group Mux_pc_r_branch -label mux_o -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_PC_R_BRANCH/mux_o
add wave -noupdate -group EXMEM -label flush /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/flush_i
add wave -noupdate -group EXMEM -label read_data_2_i -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_i
add wave -noupdate -group EXMEM -label jmp_i /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/jmp_i
add wave -noupdate -group EXMEM -label branch_i /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/branch_i
add wave -noupdate -group EXMEM -label mux_pc_r_branch_i -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/mux_pc_r_branch_i
add wave -noupdate -group EXMEM -label read_data_2_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/read_data_2_o
add wave -noupdate -group EXMEM -label jmp_o /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/jmp_o
add wave -noupdate -group EXMEM -label branch_o /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/branch_o
add wave -noupdate -group EXMEM -label mux_pc_r_branch_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_EX_MEM/mux_pc_r_branch_o
add wave -noupdate -group data_mmry -label write_data_i -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/write_data_i
add wave -noupdate -group data_mmry -label address_i -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/address_i
add wave -noupdate -group data_mmry -label mem_read_i /MIPS_Processor_TB/DUV/DATA_MMRY/mem_read_i
add wave -noupdate -group data_mmry -label mem_write_i /MIPS_Processor_TB/DUV/DATA_MMRY/mem_write_i
add wave -noupdate -group data_mmry -label data_o -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/data_o
add wave -noupdate -group Mux_jmp_r_pc -label selector -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_JMP_R_PC/selector_i
add wave -noupdate -group Mux_jmp_r_pc -label data_0 -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_JMP_R_PC/data_0_i
add wave -noupdate -group Mux_jmp_r_pc -label data_1 -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_JMP_R_PC/data_1_i
add wave -noupdate -group Mux_jmp_r_pc -label mux_o -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_JMP_R_PC/mux_o
add wave -noupdate -group Mux_pipeline_r_branch -label selector_i /MIPS_Processor_TB/DUV/MUX_PIPELINE_R_BRNCH/selector_i
add wave -noupdate -group Mux_pipeline_r_branch -label data_0_i -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_PIPELINE_R_BRNCH/data_0_i
add wave -noupdate -group Mux_pipeline_r_branch -label data_1_i -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_PIPELINE_R_BRNCH/data_1_i
add wave -noupdate -group Mux_pipeline_r_branch -label mux_o -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_PIPELINE_R_BRNCH/mux_o
add wave -noupdate -group MEMWB -expand -group input -label write_register_i /MIPS_Processor_TB/DUV/REGISTER_MEM_WB/write_register_i
add wave -noupdate -group MEMWB -expand -group input -label alu_result_i -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_MEM_WB/alu_result_i
add wave -noupdate -group MEMWB -expand -group input -label jmp_i /MIPS_Processor_TB/DUV/REGISTER_MEM_WB/jmp_i
add wave -noupdate -group MEMWB -expand -group output -label write_register_o /MIPS_Processor_TB/DUV/REGISTER_MEM_WB/write_register_o
add wave -noupdate -group MEMWB -expand -group output -label alu_result_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_MEM_WB/alu_result_o
add wave -noupdate -group MEMWB -expand -group output -label read_data_mmry_o -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_MEM_WB/read_data_mmry_o
add wave -noupdate -group MEMWB -expand -group output -label jmp_o /MIPS_Processor_TB/DUV/REGISTER_MEM_WB/jmp_o
add wave -noupdate -group WB -expand -group register_file_wb -label write_register -radix binary -childformat {{{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i
add wave -noupdate -group WB -expand -group register_file_wb -label write_data -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_data_i
add wave -noupdate -group WB -expand -group register_file_wb -label reg_write /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/reg_write_i
add wave -noupdate -group WB -expand -group mux_register_write_data_jal -label selector -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_REGISTER_WRITE_DATA_JAL/selector_i
add wave -noupdate -group WB -expand -group mux_register_write_data_jal -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_REGISTER_WRITE_DATA_JAL/data_0_i
add wave -noupdate -group WB -expand -group mux_register_write_data_jal -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_REGISTER_WRITE_DATA_JAL/data_1_i
add wave -noupdate -group WB -expand -group mux_register_write_data_jal -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_REGISTER_WRITE_DATA_JAL/mux_o
add wave -noupdate -group {Hazard detection} -label Rt_IDEX_i /MIPS_Processor_TB/DUV/HAZARD_DETECTION_UNIT/Rt_IDEX_i
add wave -noupdate -group {Hazard detection} -label Rt_IFID_i /MIPS_Processor_TB/DUV/HAZARD_DETECTION_UNIT/Rt_IFID_i
add wave -noupdate -group {Hazard detection} -label Rs_IFID_i /MIPS_Processor_TB/DUV/HAZARD_DETECTION_UNIT/Rs_IFID_i
add wave -noupdate -group {Hazard detection} -label control_hazard_r /MIPS_Processor_TB/DUV/HAZARD_DETECTION_UNIT/control_hazard_r
add wave -noupdate -group {Hazard detection} -label Control_Switch_selector_i /MIPS_Processor_TB/DUV/CONTROL_ZERO_SWITCH/selector_i
add wave -noupdate -group {Hazard detection} -label flush_o /MIPS_Processor_TB/DUV/HAZARD_DETECTION_UNIT/flush_o
add wave -noupdate -group {Hazard detection} -label jmp_i /MIPS_Processor_TB/DUV/HAZARD_DETECTION_UNIT/jmp_i
add wave -noupdate -group {Hazard detection} -label branch_i /MIPS_Processor_TB/DUV/HAZARD_DETECTION_UNIT/branch_i
add wave -noupdate -group Forward_Unit -label forward_a_o /MIPS_Processor_TB/DUV/FORWARD_UNIT/forward_a_o
add wave -noupdate -group Forward_Unit -label forward_b_o /MIPS_Processor_TB/DUV/FORWARD_UNIT/forward_b_o
add wave -noupdate -group Forward_Unit -label Rd_EXMEM_i -radix hexadecimal /MIPS_Processor_TB/DUV/FORWARD_UNIT/Rd_EXMEM_i
add wave -noupdate -group Forward_Unit -label Rd_MEMWB_i /MIPS_Processor_TB/DUV/FORWARD_UNIT/Rd_MEMWB_i
add wave -noupdate -group Forward_Unit -label Rs_IDEX_i -radix hexadecimal /MIPS_Processor_TB/DUV/FORWARD_UNIT/Rs_IDEX_i
add wave -noupdate -group Forward_Unit -label Rd_IDEX_i /MIPS_Processor_TB/DUV/FORWARD_UNIT/Rt_IDEX_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {148 ps} 0} {{Cursor 2} {105 ps} 0} {{Cursor 3} {2297 ps} 0}
quietly wave cursor active 3
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
WaveRestoreZoom {2278 ps} {2323 ps}
