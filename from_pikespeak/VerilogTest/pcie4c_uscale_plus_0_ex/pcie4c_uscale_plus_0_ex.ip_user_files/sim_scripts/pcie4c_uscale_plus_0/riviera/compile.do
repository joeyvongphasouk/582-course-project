transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/gtwizard_ultrascale_v1_7_19
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap gtwizard_ultrascale_v1_7_19 riviera/gtwizard_ultrascale_v1_7_19
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source" -l xpm -l gtwizard_ultrascale_v1_7_19 -l xil_defaultlib \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_19  -incr -v2k5 "+incdir+../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source" -l xpm -l gtwizard_ultrascale_v1_7_19 -l xil_defaultlib \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source" -l xpm -l gtwizard_ultrascale_v1_7_19 -l xil_defaultlib \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtye4_channel_wrapper.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_common.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtye4_common_wrapper.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtwizard_gtye4.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtwizard_top.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_cxs_remap.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_async_fifo.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cc_intfc.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cc_output_mux.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cq_intfc.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cq_output_mux.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_intfc_int.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_intfc.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rc_intfc.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rc_output_mux.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rq_intfc.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rq_output_mux.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_sync_fifo.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_16k_int.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_16k.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_32k.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_4k_int.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_msix.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_rep_int.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_rep.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_tph.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gtwizard_top.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_phy_ff_chain.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_phy_pipeline.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_gt_channel.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_gt_common.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_clk.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_rst.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_rxeq.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_txeq.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_sync_cell.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_sync.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_cdr_ctrl_on_eidle.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_receiver_detect_rxterm.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_wrapper.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_phy_top.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_init_ctrl.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_pl_eq.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_vf_decode.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_vf_decode_attr.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_pipe.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_seqnum_fifo.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_sys_clk_gen_ps.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_pcie4c_uscale_core_top.v" \
"../../../../pcie4c_uscale_plus_0_ex.gen/sources_1/ip/pcie4c_uscale_plus_0/sim/pcie4c_uscale_plus_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

