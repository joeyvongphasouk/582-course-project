
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/hkchu/xillybus/verilog/vivado/xillydemo.srcs/utils_1/imports/synth_1/xillydemo.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2Z
X/home/hkchu/xillybus/verilog/vivado/xillydemo.srcs/utils_1/imports/synth_1/xillydemo.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
g
Command: %s
53*	vivadotcl26
4synth_design -top xillydemo -part xcu50-fsvh2104-2-eZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
x
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
xcu50Z17-347h px� 
h
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
xcu50Z17-349h px� 
G
Loading part %s157*device2
xcu50-fsvh2104-2-eZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
7Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
57199Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 3123.402 ; gain = 247.859 ; free physical = 41959 ; free virtual = 59909
h px� 
�
synthesizing module '%s'%s4497*oasys2
	xillydemo2
 20
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

xillybus2
 2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFDS_GTE42
 2=
9/tools/Xilinx/Vivado/2024.2/scripts/rt/data/unisim_comp.v2	
760178@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFDS_GTE42
 2
02
12=
9/tools/Xilinx/Vivado/2024.2/scripts/rt/data/unisim_comp.v2	
760178@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pcie4c_uscale_plus_02
 2
{/home/hkchu/xillybus/verilog/vivado/xillydemo.runs/synth_1/.Xil/Vivado-57162-pikespeak/realtime/pcie4c_uscale_plus_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pcie4c_uscale_plus_02
 2
02
12
{/home/hkchu/xillybus/verilog/vivado/xillydemo.runs/synth_1/.Xil/Vivado-57162-pikespeak/realtime/pcie4c_uscale_plus_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_rq_tag02
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_rq_tag12
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_rq_tag_av2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_rq_tag_vld02
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_rq_tag_vld12
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_tfc_nph_av2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_tfc_npd_av2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pcie_cq_np_req_count2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_phy_link_down2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_phy_link_status2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_negotiated_width2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_current_speed2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_function_status2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_function_power_state2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_vf_status2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_vf_power_state2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_link_power_state2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_mgmt_read_data2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_mgmt_read_write_done2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_err_cor_out2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_err_nonfatal_out2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_local_error_valid2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_local_error_out2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_ltssm_state2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_rx_pm_state2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_tx_pm_state2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_obff_enable2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_pl_status_change2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_tph_requester_enable2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_tph_st_mode2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_vf_tph_requester_enable2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_vf_tph_st_mode2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_msg_received2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_msg_received_data2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_msg_received_type2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_msg_transmit_done2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	cfg_fc_ph2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	cfg_fc_pd2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

cfg_fc_nph2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

cfg_fc_npd2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_bus_number2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
 cfg_power_state_change_interrupt2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_flr_in_process2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_vf_flr_in_process2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_interrupt_sent2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_interrupt_msi_enable2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_interrupt_msi_mmenable2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_interrupt_msi_mask_update2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_interrupt_msi_data2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfg_hot_reset_out2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
phy_rdy_out2
pcie4c_uscale_plus_02
pcie2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
pcie2
pcie4c_uscale_plus_02
1372
862/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
998@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
xillybus_core2
 24
0/home/hkchu/xillybus/verilog/src/xillybus_core.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xillybus_core2
 2
02
124
0/home/hkchu/xillybus/verilog/src/xillybus_core.v2
18@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s_axis_rq_tready_w2
xillybus_core2
xillybus_core_ins2/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
2108@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xillybus_core_ins2
xillybus_core2
642
632/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
2108@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

xillybus2
 2
02
12/
+/home/hkchu/xillybus/verilog/src/xillybus.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
fifo_32x5122
 2v
r/home/hkchu/xillybus/verilog/vivado/xillydemo.runs/synth_1/.Xil/Vivado-57162-pikespeak/realtime/fifo_32x512_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fifo_32x5122
 2
02
12v
r/home/hkchu/xillybus/verilog/vivado/xillydemo.runs/synth_1/.Xil/Vivado-57162-pikespeak/realtime/fifo_32x512_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
wr_rst_busy2
fifo_32x5122	
fifo_3220
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
1378@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rd_rst_busy2
fifo_32x5122	
fifo_3220
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
1378@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
fifo_322
fifo_32x5122
102
820
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
1378@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
fifo_8x20482
 2v
r/home/hkchu/xillybus/verilog/vivado/xillydemo.runs/synth_1/.Xil/Vivado-57162-pikespeak/realtime/fifo_8x2048_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fifo_8x20482
 2
02
12v
r/home/hkchu/xillybus/verilog/vivado/xillydemo.runs/synth_1/.Xil/Vivado-57162-pikespeak/realtime/fifo_8x2048_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
wr_rst_busy2
fifo_8x20482
fifo_820
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
1528@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rd_rst_busy2
fifo_8x20482
fifo_820
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
1528@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
fifo_82
fifo_8x20482
102
820
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
1528@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	xillydemo2
 2
02
120
,/home/hkchu/xillybus/verilog/src/xillydemo.v2
18@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3205.371 ; gain = 329.828 ; free physical = 41849 ; free virtual = 59800
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3214.277 ; gain = 338.734 ; free physical = 41849 ; free virtual = 59800
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3214.277 ; gain = 338.734 ; free physical = 41849 ; free virtual = 59800
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.012

00:00:002

3222.2772
0.0002
418482
59800Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2]
Y/home/hkchu/xillybus/vivado-essentials/fifo_32x512/fifo_32x512/fifo_32x512_in_context.xdc2
fifo_32	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2]
Y/home/hkchu/xillybus/vivado-essentials/fifo_32x512/fifo_32x512/fifo_32x512_in_context.xdc2
fifo_32	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2]
Y/home/hkchu/xillybus/vivado-essentials/fifo_8x2048/fifo_8x2048/fifo_8x2048_in_context.xdc2

fifo_8	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2]
Y/home/hkchu/xillybus/vivado-essentials/fifo_8x2048/fifo_8x2048/fifo_8x2048_in_context.xdc2

fifo_8	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2x
t/home/hkchu/xillybus/vivado-essentials/pcie4c_uscale_plus_0/pcie4c_uscale_plus_0/pcie4c_uscale_plus_0_in_context.xdc2
xillybus_ins/pcie	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2x
t/home/hkchu/xillybus/vivado-essentials/pcie4c_uscale_plus_0/pcie4c_uscale_plus_0/pcie4c_uscale_plus_0_in_context.xdc2
xillybus_ins/pcie	8Z20-847h px� 
y
Parsing XDC File [%s]
179*designutils28
4/home/hkchu/xillybus/vivado-essentials/xillydemo.xdc8Z20-179h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
LOC2
port28
4/home/hkchu/xillybus/vivado-essentials/xillydemo.xdc2
78@Z12-1808h px� 
�
Finished Parsing XDC File [%s]
178*designutils28
4/home/hkchu/xillybus/vivado-essentials/xillydemo.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project26
4/home/hkchu/xillybus/vivado-essentials/xillydemo.xdc2
.Xil/xillydemo_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3294.0472
0.0002
418332
59784Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.012

00:00:002

3294.0472
0.0002
418332
59784Z17-722h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002	
fifo_322
clk2
4.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
10.0002
fifo_82
clk2
4.000Z38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 3294.047 ; gain = 418.504 ; free physical = 41854 ; free virtual = 59806
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Loading part: xcu50-fsvh2104-2-e
h p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 3302.051 ; gain = 426.508 ; free physical = 41854 ; free virtual = 59806
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 3302.051 ; gain = 426.508 ; free physical = 41854 ; free virtual = 59806
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2
"xillydemo/demoarray_reg"2
322
8Z8-6904h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 3302.051 ; gain = 426.508 ; free physical = 41840 ; free virtual = 59792
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
V
%s
*synth2>
<	              256 Bit	(32 X 8 bit)          RAMs := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
t
%s
*synth2\
ZPart Resources:
DSPs: 5952 (col length:93)
BRAMs: 2688 (col length: RAMB18 192 RAMB36 96)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2
"xillydemo/demoarray_reg"2
322
8Z8-6904h px� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2
"xillydemo/demoarray_reg"2
322
8Z8-6904h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 3302.051 ; gain = 426.508 ; free physical = 41841 ; free virtual = 59801
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
l
%s*synth2T
R+------------+---------------+-----------+----------------------+---------------+
h px� 
m
%s*synth2U
S|Module Name | RTL Object    | Inference | Size (Depth x Width) | Primitives    | 
h px� 
l
%s*synth2T
R+------------+---------------+-----------+----------------------+---------------+
h px� 
m
%s*synth2U
S|xillydemo   | demoarray_reg | Implied   | 32 x 8               | RAM32X1S x 8  | 
h px� 
m
%s*synth2U
S+------------+---------------+-----------+----------------------+---------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 3779.406 ; gain = 903.863 ; free physical = 41365 ; free virtual = 59353
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 3779.406 ; gain = 903.863 ; free physical = 41365 ; free virtual = 59353
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
l
%s
*synth2T
R+------------+---------------+-----------+----------------------+---------------+
h p
x
� 
m
%s
*synth2U
S|Module Name | RTL Object    | Inference | Size (Depth x Width) | Primitives    | 
h p
x
� 
l
%s
*synth2T
R+------------+---------------+-----------+----------------------+---------------+
h p
x
� 
m
%s
*synth2U
S|xillydemo   | demoarray_reg | Implied   | 32 x 8               | RAM32X1S x 8  | 
h p
x
� 
m
%s
*synth2U
S+------------+---------------+-----------+----------------------+---------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 3793.422 ; gain = 917.879 ; free physical = 41341 ; free virtual = 59330
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2"
 \xillybus_ins/xillybus_core_ins 2
s_axis_rq_tready_w[3]Z8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2"
 \xillybus_ins/xillybus_core_ins 2
s_axis_rq_tready_w[2]Z8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2"
 \xillybus_ins/xillybus_core_ins 2
s_axis_rq_tready_w[1]Z8-4442h px� 
�
*BlackBox module %s has unconnected pin %s
3599*oasys2"
 \xillybus_ins/xillybus_core_ins 2
s_axis_rq_tready_w[0]Z8-4442h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41195 ; free virtual = 59199
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41195 ; free virtual = 59199
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41194 ; free virtual = 59198
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41194 ; free virtual = 59198
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41194 ; free virtual = 59198
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41193 ; free virtual = 59197
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
D
%s
*synth2,
*|      |BlackBox name        |Instances |
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
D
%s
*synth2,
*|1     |fifo_32x512          |         1|
h p
x
� 
D
%s
*synth2,
*|2     |fifo_8x2048          |         1|
h p
x
� 
D
%s
*synth2,
*|3     |pcie4c_uscale_plus_0 |         1|
h p
x
� 
D
%s
*synth2,
*|4     |xillybus_core        |         1|
h p
x
� 
D
%s
*synth2,
*+------+---------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|      |Cell               |Count |
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
>
%s*synth2&
$|1     |fifo_32x512        |     1|
h px� 
>
%s*synth2&
$|2     |fifo_8x2048        |     1|
h px� 
>
%s*synth2&
$|3     |pcie4c_uscale_plus |     1|
h px� 
>
%s*synth2&
$|4     |xillybus_core      |     1|
h px� 
>
%s*synth2&
$|5     |IBUFDS_GTE4        |     1|
h px� 
>
%s*synth2&
$|6     |LUT1               |     2|
h px� 
>
%s*synth2&
$|7     |LUT2               |     2|
h px� 
>
%s*synth2&
$|8     |RAM32X1S           |     8|
h px� 
>
%s*synth2&
$|9     |FDRE               |     8|
h px� 
>
%s*synth2&
$|10    |IBUF               |     1|
h px� 
>
%s*synth2&
$+------+-------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41193 ; free virtual = 59197
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 4 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 3953.234 ; gain = 997.922 ; free physical = 41191 ; free virtual = 59197
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 3953.234 ; gain = 1077.691 ; free physical = 41191 ; free virtual = 59197
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
m
Parsing EDIF File [%s]
106*designutils2-
+/home/hkchu/xillybus/core/xillybus_core.edfZ20-106h px� 
t
 Finished Parsing EDIF File [%s]
97*designutils2-
+/home/hkchu/xillybus/core/xillybus_core.edfZ20-97h px� 
�
�Bus range ordering inconsistency detected for bus pin %s. Existing range for black box cell is %s:%s, range for replacement cell is %s:%s.
510*netlist26
4xillybus_core_ins/cfg_interrupt_msi_pending_status_w2
312
02
632
0Z29-739h px� 
�
WReplacement cell view : %s has additional ports (%s) not seen in its original version.
5*netlist2
xillybus_core2(
&cfg_interrupt_msi_pending_status_w[32]Z29-5h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.032
00:00:00.032

3953.2342
0.0002
413842
59392Z17-722h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
3589Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' defined in file '%s' contains large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
43*netlist2
	xillydemo2
xillybus_core2
xillybus_core.edfZ29-43h px� 
c
Netlist was created with %s %s291*project2
Xillybus IP Core Factory2
1.0Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2@
>xillybus_ins/xillybus_core_ins/wr_arbiter_ins/Mram_dma_address2
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2A
?xillybus_ins/xillybus_core_ins/unitr_2_ins/Mram_segment_array_02
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2A
?xillybus_ins/xillybus_core_ins/unitr_2_ins/Mram_segment_array_12
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2A
?xillybus_ins/xillybus_core_ins/unitr_4_ins/Mram_segment_array_02
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2A
?xillybus_ins/xillybus_core_ins/unitr_4_ins/Mram_segment_array_12
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2A
?xillybus_ins/xillybus_core_ins/unitr_5_ins/Mram_segment_array_02
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2A
?xillybus_ins/xillybus_core_ins/unitr_5_ins/Mram_segment_array_12
INDEPENDENT2
COMMON2
BRAMZ31-422h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3953.2342
0.0002
413162
59384Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 2752 instances were transformed.
  (CARRY4) => CARRY8: 81 instances
  FD => FDRE: 500 instances
  FDE => FDRE: 1457 instances
  FDR => FDRE: 363 instances
  FDS => FDSE: 18 instances
  IBUF => IBUF (IBUFCTRL, INBUF): 1 instance 
  INV => LUT1: 159 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 20 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 28 instances
  RAM32X1S => RAM32X1S (RAMS32): 8 instances
  RAM64M => RAM64M (RAMD64E(x4)): 73 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 37 instances
  RAMB18E1 => RAMB18E2: 6 instances
  RAMB36E1 => RAMB36E2: 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1edc903fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482
662
42
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:302

00:00:292

3953.2342

2419.4882
413152
59383Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 3149.590; main = 3149.590; forked = 268.082Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 4209.824; main = 3925.500; forked = 915.773Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.012

00:00:002

3953.2342
0.0002
413142
59383Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2J
H/home/hkchu/xillybus/verilog/vivado/xillydemo.runs/synth_1/xillydemo.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2]
[report_utilization -file xillydemo_utilization_synth.rpt -pb xillydemo_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Apr 27 11:46:48 2025Z17-206h px� 


End Record