onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk_tb /MIPS_Processor_TB/clk_tb
add wave -noupdate -label reset_tb /MIPS_Processor_TB/reset_tb
add wave -noupdate -label alu_result_tb -radix hexadecimal /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -expand -group Program_Memory -label address_i -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/address_i
add wave -noupdate -expand -group Program_Memory -label instruction_o -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/instruction_o
add wave -noupdate -expand -group REGISTER_FILE -group input -label read_register_1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_1_i
add wave -noupdate -expand -group REGISTER_FILE -group input -label read_register_2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/read_register_2_i
add wave -noupdate -expand -group REGISTER_FILE -group input -label write_register -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_register_i
add wave -noupdate -expand -group REGISTER_FILE -group input -label write_data -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/write_data_i
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label at -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/at/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label s0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label t1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t1/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label t2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t2/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label t3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t3/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label t4 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t4/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label t5 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t5/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label t6 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t6/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label a0 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a0/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label a1 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a1/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label a2 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a2/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label a3 -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/a3/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label sp -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/sp/data_o
add wave -noupdate -expand -group REGISTER_FILE -expand -group Registros -label ra -radix hexadecimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/ra/data_o
add wave -noupdate -expand -group Tower_1 -label 10010000 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[0]}
add wave -noupdate -expand -group Tower_1 -label 10010020 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[8]}
add wave -noupdate -expand -group Tower_1 -label 10010040 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[16]}
add wave -noupdate -expand -group Tower_2 -label 10010004 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[1]}
add wave -noupdate -expand -group Tower_2 -label 10010024 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[9]}
add wave -noupdate -expand -group Tower_2 -label 10010044 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[17]}
add wave -noupdate -expand -group Tower_3 -label 10010008 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[2]}
add wave -noupdate -expand -group Tower_3 -label 10010028 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[10]}
add wave -noupdate -expand -group Tower_3 -label 10010048 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[18]}
add wave -noupdate -expand -group Stack -label 1 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[255]}
add wave -noupdate -expand -group Stack -label 2 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[254]}
add wave -noupdate -expand -group Stack -label 3 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[253]}
add wave -noupdate -expand -group Stack -label 4 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[252]}
add wave -noupdate -expand -group Stack -label 5 -radix hexadecimal {/MIPS_Processor_TB/DUV/DATA_MMRY/ram[251]}
add wave -noupdate -group Control -label mem_read /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_read_o
add wave -noupdate -group Control -label mem_write /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_write_o
add wave -noupdate -group Data_mmry -label address_i -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/address_i
add wave -noupdate -group Data_mmry -label write_data -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/write_data_i
add wave -noupdate -group Data_mmry -label real_address -radix hexadecimal /MIPS_Processor_TB/DUV/DATA_MMRY/real_address_r
add wave -noupdate -label mem_write_i /MIPS_Processor_TB/DUV/DATA_MMRY/mem_write_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {827 ps} 0} {{Cursor 2} {54 ps} 0}
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
WaveRestoreZoom {821 ps} {882 ps}
