
g
Command: %s
1870*	planAhead22
open_checkpoint cpu_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.230 . Memory (MB): peak = 228.109 ; gain = 0.0002default:defaulth px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1372default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2017.32default:defaultZ1-479h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
Parsing XDC File [%s]
179*designutils2�
oC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.runs/impl_1/.Xil/Vivado-5788-Lenovo/dcp3/cpu_board.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
oC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.runs/impl_1/.Xil/Vivado-5788-Lenovo/dcp3/cpu_board.xdc2default:default8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2�
oC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.runs/impl_1/.Xil/Vivado-5788-Lenovo/dcp3/cpu_early.xdc2default:default8Z20-179h px� 
�
%Done setting XDC timing constraints.
35*timing2x
bC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-35h px� 
�
Deriving generated clocks
2*timing2x
bC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:182default:default2
00:00:182default:default2
1120.2192default:default2
564.0822default:defaultZ17-268h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
oC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.runs/impl_1/.Xil/Vivado-5788-Lenovo/dcp3/cpu_early.xdc2default:default8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2
iC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.runs/impl_1/.Xil/Vivado-5788-Lenovo/dcp3/cpu.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2
iC:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.runs/impl_1/.Xil/Vivado-5788-Lenovo/dcp3/cpu.xdc2default:default8Z20-178h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.3812default:default2
1122.1802default:default2
1.9612default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.3812default:default2
1122.1802default:default2
1.9612default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 12 instances were transformed.
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 12 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2017.3 (64-bit)2default:default2
20188332default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:292default:default2
00:00:322default:default2
1123.0472default:default2
896.5782default:defaultZ17-268h px� 
m
Command: %s
53*	vivadotcl2<
(write_bitstream -force cpu.bit -bin_file2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2z
 "d
&risc32i0/cache0/uart0/recv_buffer/E[0]&risc32i0/cache0/uart0/recv_buffer/E[0]2default:default2default:default2�
 "�
>risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[7]_i_1/O>risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[7]_i_1/O2default:default2default:default2�
 "�
<risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[7]_i_1	<risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2z
 "d
&risc32i0/cache0/uart0/recv_buffer/E[1]&risc32i0/cache0/uart0/recv_buffer/E[1]2default:default2default:default2�
 "�
?risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[15]_i_1/O?risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[15]_i_1/O2default:default2default:default2�
 "�
=risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[15]_i_1	=risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[15]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2z
 "d
&risc32i0/cache0/uart0/recv_buffer/E[2]&risc32i0/cache0/uart0/recv_buffer/E[2]2default:default2default:default2�
 "�
?risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[23]_i_1/O?risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[23]_i_1/O2default:default2default:default2�
 "�
=risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[23]_i_1	=risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[23]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2z
 "d
&risc32i0/cache0/uart0/recv_buffer/E[3]&risc32i0/cache0/uart0/recv_buffer/E[3]2default:default2default:default2�
 "�
?risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[31]_i_1/O?risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[31]_i_1/O2default:default2default:default2�
 "�
=risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[31]_i_1	=risc32i0/cache0/uart0/recv_buffer/read_data_value_reg[31]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "�
4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][0]4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][0]2default:default2default:default2�
 "�
9risc32i0/cache0/uart0/recv_buffer/inst_value_reg[7]_i_1/O9risc32i0/cache0/uart0/recv_buffer/inst_value_reg[7]_i_1/O2default:default2default:default2�
 "�
7risc32i0/cache0/uart0/recv_buffer/inst_value_reg[7]_i_1	7risc32i0/cache0/uart0/recv_buffer/inst_value_reg[7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "�
4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][1]4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][1]2default:default2default:default2�
 "�
:risc32i0/cache0/uart0/recv_buffer/inst_value_reg[15]_i_1/O:risc32i0/cache0/uart0/recv_buffer/inst_value_reg[15]_i_1/O2default:default2default:default2�
 "�
8risc32i0/cache0/uart0/recv_buffer/inst_value_reg[15]_i_1	8risc32i0/cache0/uart0/recv_buffer/inst_value_reg[15]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "�
4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][2]4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][2]2default:default2default:default2�
 "�
:risc32i0/cache0/uart0/recv_buffer/inst_value_reg[23]_i_2/O:risc32i0/cache0/uart0/recv_buffer/inst_value_reg[23]_i_2/O2default:default2default:default2�
 "�
8risc32i0/cache0/uart0/recv_buffer/inst_value_reg[23]_i_2	8risc32i0/cache0/uart0/recv_buffer/inst_value_reg[23]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2�
 "�
4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][3]4risc32i0/cache0/uart0/recv_buffer/id_inst_reg[24][3]2default:default2default:default2�
 "�
:risc32i0/cache0/uart0/recv_buffer/inst_value_reg[31]_i_2/O:risc32i0/cache0/uart0/recv_buffer/inst_value_reg[31]_i_2/O2default:default2default:default2�
 "�
8risc32i0/cache0/uart0/recv_buffer/inst_value_reg[31]_i_2	8risc32i0/cache0/uart0/recv_buffer/inst_value_reg[31]_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 9 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
Q
/Please set project.enableDesignId to be 'true'.457*projectZ1-821h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
Z
Writing bitstream %s...
11*	bitstream2
	./cpu.bit2default:defaultZ40-11h px� 
Z
Writing bitstream %s...
11*	bitstream2
	./cpu.bin2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
182default:default2
92default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:252default:default2
00:00:342default:default2
1584.3632default:default2
461.3162default:defaultZ17-268h px� 


End Record