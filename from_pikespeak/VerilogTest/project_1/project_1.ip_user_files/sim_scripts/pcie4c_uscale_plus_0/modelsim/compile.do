vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/gtwizard_ultrascale_v1_7_19
vlib modelsim_lib/msim/xil_defaultlib

vmap gtwizard_ultrascale_v1_7_19 modelsim_lib/msim/gtwizard_ultrascale_v1_7_19
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work gtwizard_ultrascale_v1_7_19 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source" \
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

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtye4_channel_wrapper.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_common.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtye4_common_wrapper.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtwizard_gtye4.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt_gtwizard_top.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/ip_0/sim/pcie4c_uscale_plus_0_gt.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_cxs_remap.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_async_fifo.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cc_intfc.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cc_output_mux.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cq_intfc.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_cq_output_mux.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_intfc_int.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_intfc.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rc_intfc.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rc_output_mux.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rq_intfc.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_rq_output_mux.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_512b_sync_fifo.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_16k_int.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_16k.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_32k.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_4k_int.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_msix.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_rep_int.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_rep.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram_tph.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_bram.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gtwizard_top.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_phy_ff_chain.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_phy_pipeline.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_gt_channel.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_gt_common.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_clk.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_rst.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_rxeq.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_txeq.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_sync_cell.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_sync.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_cdr_ctrl_on_eidle.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_receiver_detect_rxterm.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_gt_phy_wrapper.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_phy_top.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_init_ctrl.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_pl_eq.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_vf_decode.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_vf_decode_attr.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_pipe.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_seqnum_fifo.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_sys_clk_gen_ps.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/source/pcie4c_uscale_plus_0_pcie4c_uscale_core_top.v" \
"../../../../project_1.gen/sources_1/ip/pcie4c_uscale_plus_0/sim/pcie4c_uscale_plus_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

