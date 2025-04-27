// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Apr 27 06:55:27 2025
// Host        : pikespeak running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub /home/hkchu/xillybus/vivado-essentials/pcie_ku/pcie_ku_stub.v
// Design      : pcie_ku
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu095-ffva2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "pcie_ku,pcie_ku_pcie3_uscale_core_top,{}" *) (* CORE_GENERATION_INFO = "pcie_ku,pcie_ku_pcie3_uscale_core_top,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=pcie3_ultrascale,x_ipVersion=4.4,x_ipCoreRevision=21,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,PL_LINK_CAP_MAX_LINK_SPEED=1,PL_LINK_CAP_MAX_LINK_WIDTH=8,USER_CLK_FREQ=3,CORE_CLK_FREQ=1,PLL_TYPE=0,PF0_LINK_CAP_ASPM_SUPPORT=0,C_DATA_WIDTH=64,REF_CLK_FREQ=0,PCIE_LINK_SPEED=2,KEEP_WIDTH=2,ARI_CAP_ENABLE=FALSE,PF0_ARI_CAP_NEXT_FUNC=0x00,AXISTEN_IF_CC_ALIGNMENT_MODE=FALSE,AXISTEN_IF_CQ_ALIGNMENT_MODE=FALSE,AXISTEN_IF_RC_ALIGNMENT_MODE=FALSE,AXISTEN_IF_RC_STRADDLE=FALSE,AXISTEN_IF_RQ_ALIGNMENT_MODE=FALSE,AXISTEN_IF_ENABLE_MSG_ROUTE=0x00000,AXISTEN_IF_ENABLE_RX_MSG_INTFC=FALSE,PF0_AER_CAP_ECRC_CHECK_CAPABLE=FALSE,PF0_AER_CAP_ECRC_GEN_CAPABLE=FALSE,PF0_AER_CAP_NEXTPTR=0x150,PF0_ARI_CAP_NEXTPTR=0x000,VF0_ARI_CAP_NEXTPTR=0x000,VF1_ARI_CAP_NEXTPTR=0x000,VF2_ARI_CAP_NEXTPTR=0x000,VF3_ARI_CAP_NEXTPTR=0x000,VF4_ARI_CAP_NEXTPTR=0x000,VF5_ARI_CAP_NEXTPTR=0x000,PF0_BAR0_APERTURE_SIZE=0x00,PF0_BAR0_CONTROL=0x6,PF0_BAR1_APERTURE_SIZE=0x00,PF0_BAR1_CONTROL=0x0,PF0_BAR2_APERTURE_SIZE=0x00,PF0_BAR2_CONTROL=0x0,PF0_BAR3_APERTURE_SIZE=0x00,PF0_BAR3_CONTROL=0x0,PF0_BAR4_APERTURE_SIZE=0x00,PF0_BAR4_CONTROL=0x0,PF0_BAR5_APERTURE_SIZE=0x00,PF0_BAR5_CONTROL=0x0,PF0_CAPABILITY_POINTER=0x80,PF0_CLASS_CODE=0xFF0000,PF0_VENDOR_ID=0x10EE,PF0_DEVICE_ID=0xEBEB,PF0_DEV_CAP2_128B_CAS_ATOMIC_COMPLETER_SUPPORT=FALSE,PF0_DEV_CAP2_32B_ATOMIC_COMPLETER_SUPPORT=FALSE,PF0_DEV_CAP2_64B_ATOMIC_COMPLETER_SUPPORT=FALSE,PF0_DEV_CAP2_LTR_SUPPORT=FALSE,PF0_DEV_CAP2_OBFF_SUPPORT=0x0,PF0_DEV_CAP2_TPH_COMPLETER_SUPPORT=FALSE,PF0_DEV_CAP_EXT_TAG_SUPPORTED=FALSE,PF0_DEV_CAP_FUNCTION_LEVEL_RESET_CAPABLE=FALSE,PF0_DEV_CAP_MAX_PAYLOAD_SIZE=0x2,PF0_DPA_CAP_NEXTPTR=0x000,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION0=0x00,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION1=0x00,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION2=0x00,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION3=0x00,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION4=0x00,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION5=0x00,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION6=0x00,PF0_DPA_CAP_SUB_STATE_POWER_ALLOCATION7=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION0=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION1=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION2=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION3=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION4=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION5=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION6=0x00,PF1_DPA_CAP_SUB_STATE_POWER_ALLOCATION7=0x00,PF0_DSN_CAP_NEXTPTR=0x000,PF0_EXPANSION_ROM_APERTURE_SIZE=0x00,PF0_EXPANSION_ROM_ENABLE=FALSE,PF0_INTERRUPT_PIN=0x0,PF0_LINK_STATUS_SLOT_CLOCK_CONFIG=TRUE,PF0_LTR_CAP_NEXTPTR=0x000,PF0_MSIX_CAP_NEXTPTR=0x00,PF0_MSIX_CAP_PBA_BIR=0,PF0_MSIX_CAP_PBA_OFFSET=0x00000000,PF0_MSIX_CAP_TABLE_BIR=0,PF0_MSIX_CAP_TABLE_OFFSET=0x00000000,PF0_MSIX_CAP_TABLE_SIZE=0x000,PF0_MSI_CAP_MULTIMSGCAP=0,PF0_MSI_CAP_NEXTPTR=0xC0,PF0_PB_CAP_NEXTPTR=0x000,PF0_PM_CAP_NEXTPTR=0x90,PF0_PM_CAP_PMESUPPORT_D0=FALSE,PF0_PM_CAP_PMESUPPORT_D1=FALSE,PF0_PM_CAP_PMESUPPORT_D3HOT=FALSE,PF0_PM_CAP_SUPP_D1_STATE=FALSE,PF0_RBAR_CAP_ENABLE=FALSE,PF0_RBAR_CAP_NEXTPTR=0x000,PF0_RBAR_CAP_SIZE0=0x00000,PF0_RBAR_CAP_SIZE1=0x00000,PF0_RBAR_CAP_SIZE2=0x00000,PF1_RBAR_CAP_SIZE0=0x00000,PF1_RBAR_CAP_SIZE1=0x00000,PF1_RBAR_CAP_SIZE2=0x00000,PF0_REVISION_ID=0x10,PF0_SRIOV_BAR0_APERTURE_SIZE=0x00,PF0_SRIOV_BAR0_CONTROL=0x0,PF0_SRIOV_BAR1_APERTURE_SIZE=0x00,PF0_SRIOV_BAR1_CONTROL=0x0,PF0_SRIOV_BAR2_APERTURE_SIZE=0x00,PF0_SRIOV_BAR2_CONTROL=0x0,PF0_SRIOV_BAR3_APERTURE_SIZE=0x00,PF0_SRIOV_BAR3_CONTROL=0x0,PF0_SRIOV_BAR4_APERTURE_SIZE=0x00,PF0_SRIOV_BAR4_CONTROL=0x0,PF0_SRIOV_BAR5_APERTURE_SIZE=0x00,PF0_SRIOV_BAR5_CONTROL=0x0,PF0_SRIOV_CAP_INITIAL_VF=0x0000,PF0_SRIOV_CAP_NEXTPTR=0x000,PF0_SRIOV_CAP_TOTAL_VF=0x0000,PF0_SRIOV_CAP_VER=0x0,PF0_SRIOV_FIRST_VF_OFFSET=0x0000,PF0_SRIOV_FUNC_DEP_LINK=0x0000,PF0_SRIOV_SUPPORTED_PAGE_SIZE=0x00000553,PF0_SRIOV_VF_DEVICE_ID=0x0000,PF0_SUBSYSTEM_VENDOR_ID=0x10EE,PF0_SUBSYSTEM_ID=0xEBEB,PF0_TPHR_CAP_ENABLE=FALSE,PF0_TPHR_CAP_NEXTPTR=0x000,VF0_TPHR_CAP_NEXTPTR=0x000,VF1_TPHR_CAP_NEXTPTR=0x000,VF2_TPHR_CAP_NEXTPTR=0x000,VF3_TPHR_CAP_NEXTPTR=0x000,VF4_TPHR_CAP_NEXTPTR=0x000,VF5_TPHR_CAP_NEXTPTR=0x000,PF0_TPHR_CAP_ST_MODE_SEL=0x0,PF0_TPHR_CAP_ST_TABLE_LOC=0x0,PF0_TPHR_CAP_ST_TABLE_SIZE=0x000,PF0_TPHR_CAP_VER=0x1,PF1_TPHR_CAP_ST_MODE_SEL=0x0,PF1_TPHR_CAP_ST_TABLE_LOC=0x0,PF1_TPHR_CAP_ST_TABLE_SIZE=0x000,PF1_TPHR_CAP_VER=0x1,VF0_TPHR_CAP_ST_MODE_SEL=0x0,VF0_TPHR_CAP_ST_TABLE_LOC=0x0,VF0_TPHR_CAP_ST_TABLE_SIZE=0x000,VF0_TPHR_CAP_VER=0x1,VF1_TPHR_CAP_ST_MODE_SEL=0x0,VF1_TPHR_CAP_ST_TABLE_LOC=0x0,VF1_TPHR_CAP_ST_TABLE_SIZE=0x000,VF1_TPHR_CAP_VER=0x1,VF2_TPHR_CAP_ST_MODE_SEL=0x0,VF2_TPHR_CAP_ST_TABLE_LOC=0x0,VF2_TPHR_CAP_ST_TABLE_SIZE=0x000,VF2_TPHR_CAP_VER=0x1,VF3_TPHR_CAP_ST_MODE_SEL=0x0,VF3_TPHR_CAP_ST_TABLE_LOC=0x0,VF3_TPHR_CAP_ST_TABLE_SIZE=0x000,VF3_TPHR_CAP_VER=0x1,VF4_TPHR_CAP_ST_MODE_SEL=0x0,VF4_TPHR_CAP_ST_TABLE_LOC=0x0,VF4_TPHR_CAP_ST_TABLE_SIZE=0x000,VF4_TPHR_CAP_VER=0x1,VF5_TPHR_CAP_ST_MODE_SEL=0x0,VF5_TPHR_CAP_ST_TABLE_LOC=0x0,VF5_TPHR_CAP_ST_TABLE_SIZE=0x000,VF5_TPHR_CAP_VER=0x1,PF0_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,PF0_TPHR_CAP_INT_VEC_MODE=FALSE,PF1_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,PF1_TPHR_CAP_INT_VEC_MODE=FALSE,VF0_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,VF0_TPHR_CAP_INT_VEC_MODE=FALSE,VF1_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,VF1_TPHR_CAP_INT_VEC_MODE=FALSE,VF2_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,VF2_TPHR_CAP_INT_VEC_MODE=FALSE,VF3_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,VF3_TPHR_CAP_INT_VEC_MODE=FALSE,VF4_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,VF4_TPHR_CAP_INT_VEC_MODE=FALSE,VF5_TPHR_CAP_DEV_SPECIFIC_MODE=TRUE,VF5_TPHR_CAP_INT_VEC_MODE=FALSE,PF0_SECONDARY_PCIE_CAP_NEXTPTR=0x000,MCAP_CAP_NEXTPTR=0x000,PF0_VC_CAP_NEXTPTR=0x000,SPARE_WORD1=0x00000000,PF1_AER_CAP_ECRC_CHECK_CAPABLE=FALSE,PF1_AER_CAP_ECRC_GEN_CAPABLE=FALSE,PF1_AER_CAP_NEXTPTR=0x000,PF1_ARI_CAP_NEXTPTR=0x000,PF1_BAR0_APERTURE_SIZE=0x00,PF1_BAR0_CONTROL=0x0,PF1_BAR1_APERTURE_SIZE=0x00,PF1_BAR1_CONTROL=0x0,PF1_BAR2_APERTURE_SIZE=0x00,PF1_BAR2_CONTROL=0x0,PF1_BAR3_APERTURE_SIZE=0x00,PF1_BAR3_CONTROL=0x0,PF1_BAR4_APERTURE_SIZE=0x00,PF1_BAR4_CONTROL=0x0,PF1_BAR5_APERTURE_SIZE=0x00,PF1_BAR5_CONTROL=0x0,PF1_CAPABILITY_POINTER=0x80,PF1_CLASS_CODE=0x070000,PF1_DEVICE_ID=0x8011,PF1_DEV_CAP_MAX_PAYLOAD_SIZE=0x2,PF1_DPA_CAP_NEXTPTR=0x000,PF1_DSN_CAP_NEXTPTR=0x000,PF1_EXPANSION_ROM_APERTURE_SIZE=0x00,PF1_EXPANSION_ROM_ENABLE=FALSE,PF1_INTERRUPT_PIN=0x0,PF1_MSIX_CAP_NEXTPTR=0x00,PF1_MSIX_CAP_PBA_BIR=0,PF1_MSIX_CAP_PBA_OFFSET=0x00000000,PF1_MSIX_CAP_TABLE_BIR=0,PF1_MSIX_CAP_TABLE_OFFSET=0x00000000,PF1_MSIX_CAP_TABLE_SIZE=0x000,PF1_MSI_CAP_MULTIMSGCAP=0,PF1_MSI_CAP_NEXTPTR=0x00,PF1_PB_CAP_NEXTPTR=0x000,PF1_PM_CAP_NEXTPTR=0x00,PF1_RBAR_CAP_ENABLE=FALSE,PF1_RBAR_CAP_NEXTPTR=0x000,PF1_REVISION_ID=0x00,PF1_SRIOV_BAR0_APERTURE_SIZE=0x00,PF1_SRIOV_BAR0_CONTROL=0x0,PF1_SRIOV_BAR1_APERTURE_SIZE=0x00,PF1_SRIOV_BAR1_CONTROL=0x0,PF1_SRIOV_BAR2_APERTURE_SIZE=0x00,PF1_SRIOV_BAR2_CONTROL=0x0,PF1_SRIOV_BAR3_APERTURE_SIZE=0x00,PF1_SRIOV_BAR3_CONTROL=0x0,PF1_SRIOV_BAR4_APERTURE_SIZE=0x00,PF1_SRIOV_BAR4_CONTROL=0x0,PF1_SRIOV_BAR5_APERTURE_SIZE=0x00,PF1_SRIOV_BAR5_CONTROL=0x0,PF1_SRIOV_CAP_INITIAL_VF=0x0000,PF1_SRIOV_CAP_NEXTPTR=0x000,PF1_SRIOV_CAP_TOTAL_VF=0x0000,PF1_SRIOV_CAP_VER=0x0,PF1_SRIOV_FIRST_VF_OFFSET=0x0000,PF1_SRIOV_FUNC_DEP_LINK=0x0001,PF1_SRIOV_SUPPORTED_PAGE_SIZE=0x00000553,PF1_SRIOV_VF_DEVICE_ID=0x0000,PF1_SUBSYSTEM_ID=0x0007,PF1_TPHR_CAP_ENABLE=FALSE,PF1_TPHR_CAP_NEXTPTR=0x000,PL_UPSTREAM_FACING=TRUE,en_msi_per_vec_masking=FALSE,PF0_MSI_CAP_PERVECMASKCAP=FALSE,SRIOV_CAP_ENABLE=FALSE,TL_CREDITS_CD=0x000,TL_CREDITS_CH=0x00,TL_CREDITS_NPD=0x028,TL_CREDITS_NPH=0x20,TL_CREDITS_PD=0x198,TL_CREDITS_PH=0x20,TL_EXTENDED_CFG_EXTEND_INTERFACE_ENABLE=FALSE,ACS_EXT_CAP_ENABLE=FALSE,ACS_CAP_NEXTPTR=0x000,TL_LEGACY_MODE_ENABLE=FALSE,TL_PF_ENABLE_REG=0x0,VF0_CAPABILITY_POINTER=0x80,VF0_MSIX_CAP_PBA_BIR=0,VF0_MSIX_CAP_PBA_OFFSET=0x00000000,VF0_MSIX_CAP_TABLE_BIR=0,VF0_MSIX_CAP_TABLE_OFFSET=0x00000000,VF0_MSIX_CAP_TABLE_SIZE=0x000,VF0_MSI_CAP_MULTIMSGCAP=0,VF0_PM_CAP_NEXTPTR=0x00,VF1_MSIX_CAP_PBA_BIR=0,VF1_MSIX_CAP_PBA_OFFSET=0x00000000,VF1_MSIX_CAP_TABLE_BIR=0,VF1_MSIX_CAP_TABLE_OFFSET=0x00000000,VF1_MSIX_CAP_TABLE_SIZE=0x000,VF1_MSI_CAP_MULTIMSGCAP=0,VF1_PM_CAP_NEXTPTR=0x00,VF2_MSIX_CAP_PBA_BIR=0,VF2_MSIX_CAP_PBA_OFFSET=0x00000000,VF2_MSIX_CAP_TABLE_BIR=0,VF2_MSIX_CAP_TABLE_OFFSET=0x00000000,VF2_MSIX_CAP_TABLE_SIZE=0x000,VF2_MSI_CAP_MULTIMSGCAP=0,VF2_PM_CAP_NEXTPTR=0x00,VF3_MSIX_CAP_PBA_BIR=0,VF3_MSIX_CAP_PBA_OFFSET=0x00000000,VF3_MSIX_CAP_TABLE_BIR=0,VF3_MSIX_CAP_TABLE_OFFSET=0x00000000,VF3_MSIX_CAP_TABLE_SIZE=0x000,VF3_MSI_CAP_MULTIMSGCAP=0,VF3_PM_CAP_NEXTPTR=0x00,VF4_MSIX_CAP_PBA_BIR=0,VF4_MSIX_CAP_PBA_OFFSET=0x00000000,VF4_MSIX_CAP_TABLE_BIR=0,VF4_MSIX_CAP_TABLE_OFFSET=0x00000000,VF4_MSIX_CAP_TABLE_SIZE=0x000,VF4_MSI_CAP_MULTIMSGCAP=0,VF4_PM_CAP_NEXTPTR=0x00,VF5_MSIX_CAP_PBA_BIR=0,VF5_MSIX_CAP_PBA_OFFSET=0x00000000,VF5_MSIX_CAP_TABLE_BIR=0,VF5_MSIX_CAP_TABLE_OFFSET=0x00000000,VF5_MSIX_CAP_TABLE_SIZE=0x000,VF5_MSI_CAP_MULTIMSGCAP=0,VF5_PM_CAP_NEXTPTR=0x00,COMPLETION_SPACE=16KB,gen_x0y0_xdc=1,gen_x0y1_xdc=0,gen_x0y2_xdc=0,gen_x0y3_xdc=0,gen_x0y4_xdc=0,gen_x0y5_xdc=0,xlnx_ref_board=0,pcie_blk_locn=0,PIPE_SIM=FALSE,AXISTEN_IF_ENABLE_CLIENT_TAG=TRUE,PCIE_USE_MODE=2.0,PCIE_FAST_CONFIG=NONE,EXT_STARTUP_PRIMITIVE=FALSE,PL_INTERFACE=FALSE,PCIE_CONFIGURATION=FALSE,CFG_STATUS_IF=TRUE,GT_TX_PD=FALSE,TX_FC_IF=TRUE,CFG_EXT_IF=FALSE,CFG_FC_IF=TRUE,PER_FUNC_STATUS_IF=FALSE,CFG_MGMT_IF=FALSE,RCV_MSG_IF=FALSE,CFG_TX_MSG_IF=FALSE,CFG_CTL_IF=TRUE,MSI_EN=TRUE,MSIX_EN=FALSE,PCIE3_DRP=FALSE,DIS_GT_WIZARD=FALSE,TRANSCEIVER_CTRL_STATUS_PORTS=FALSE,SHARED_LOGIC=1,DEDICATE_PERST=TRUE,SYS_RESET_POLARITY=0,MCAP_ENABLEMENT=NONE,MCAP_FPGA_BITSTREAM_VERSION=0x00000000,PHY_LP_TXPRESET=4,EXT_CH_GT_DRP=FALSE,EN_GT_SELECTION=FALSE,SELECT_QUAD=GTH_Quad_225,silicon_revision=Production,DEV_PORT_TYPE=0,RX_DETECT=0,ENABLE_IBERT=FALSE,ENABLE_DRP_EYESCANRST_WOIBERT=FALSE,DBG_DESCRAMBLE_EN=FALSE,ENABLE_JTAG_DBG=FALSE,ENABLE_LTSSM_DBG=FALSE,AXISTEN_IF_CC_PARITY_CHK=FALSE,AXISTEN_IF_RQ_PARITY_CHK=FALSE,ENABLE_AUTO_RXEQ=FALSE,GTWIZ_IN_CORE=1,INS_LOSS_PROFILE=Backplane,PM_ENABLE_L23_ENTRY=FALSE,BMD_PIO_MODE=FALSE,MULT_PF_DES=TRUE,ENABLE_GT_V1_5=FALSE,EXT_XVC_VSEC_ENABLE=FALSE,GT_DRP_CLK_SRC=0,FREE_RUN_FREQ=0}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "pcie_ku_pcie3_uscale_core_top,Vivado 2024.2" *) 
module pcie_ku(pci_exp_txn, pci_exp_txp, pci_exp_rxn, 
  pci_exp_rxp, user_clk, user_reset, user_lnk_up, s_axis_rq_tdata, s_axis_rq_tkeep, 
  s_axis_rq_tlast, s_axis_rq_tready, s_axis_rq_tuser, s_axis_rq_tvalid, m_axis_rc_tdata, 
  m_axis_rc_tkeep, m_axis_rc_tlast, m_axis_rc_tready, m_axis_rc_tuser, m_axis_rc_tvalid, 
  m_axis_cq_tdata, m_axis_cq_tkeep, m_axis_cq_tlast, m_axis_cq_tready, m_axis_cq_tuser, 
  m_axis_cq_tvalid, s_axis_cc_tdata, s_axis_cc_tkeep, s_axis_cc_tlast, s_axis_cc_tready, 
  s_axis_cc_tuser, s_axis_cc_tvalid, pcie_rq_seq_num, pcie_rq_seq_num_vld, pcie_rq_tag, 
  pcie_rq_tag_av, pcie_rq_tag_vld, pcie_tfc_nph_av, pcie_tfc_npd_av, pcie_cq_np_req, 
  pcie_cq_np_req_count, cfg_phy_link_down, cfg_phy_link_status, cfg_negotiated_width, 
  cfg_current_speed, cfg_max_payload, cfg_max_read_req, cfg_function_status, 
  cfg_function_power_state, cfg_vf_status, cfg_vf_power_state, cfg_link_power_state, 
  cfg_err_cor_out, cfg_err_nonfatal_out, cfg_err_fatal_out, cfg_local_error, 
  cfg_ltr_enable, cfg_ltssm_state, cfg_rcb_status, cfg_dpa_substate_change, 
  cfg_obff_enable, cfg_pl_status_change, cfg_tph_requester_enable, cfg_tph_st_mode, 
  cfg_vf_tph_requester_enable, cfg_vf_tph_st_mode, cfg_fc_ph, cfg_fc_pd, cfg_fc_nph, 
  cfg_fc_npd, cfg_fc_cplh, cfg_fc_cpld, cfg_fc_sel, cfg_per_function_number, 
  cfg_per_function_output_request, cfg_per_function_update_done, cfg_dsn, 
  cfg_power_state_change_ack, cfg_power_state_change_interrupt, cfg_err_cor_in, 
  cfg_err_uncor_in, cfg_flr_in_process, cfg_flr_done, cfg_vf_flr_in_process, 
  cfg_vf_flr_done, cfg_link_training_enable, cfg_interrupt_int, cfg_interrupt_pending, 
  cfg_interrupt_sent, cfg_interrupt_msi_enable, cfg_interrupt_msi_vf_enable, 
  cfg_interrupt_msi_mmenable, cfg_interrupt_msi_mask_update, cfg_interrupt_msi_data, 
  cfg_interrupt_msi_select, cfg_interrupt_msi_int, cfg_interrupt_msi_pending_status, 
  cfg_interrupt_msi_pending_status_data_enable, 
  cfg_interrupt_msi_pending_status_function_num, cfg_interrupt_msi_sent, 
  cfg_interrupt_msi_fail, cfg_interrupt_msi_attr, cfg_interrupt_msi_tph_present, 
  cfg_interrupt_msi_tph_type, cfg_interrupt_msi_tph_st_tag, 
  cfg_interrupt_msi_function_number, cfg_hot_reset_out, cfg_config_space_enable, 
  cfg_req_pm_transition_l23_ready, cfg_hot_reset_in, cfg_ds_port_number, 
  cfg_ds_bus_number, cfg_ds_device_number, cfg_ds_function_number, cfg_subsys_vend_id, 
  sys_clk, sys_clk_gt, sys_reset, pcie_perstn1_in, pcie_perstn0_out, pcie_perstn1_out, 
  phy_rdy_out)
/* synthesis syn_black_box black_box_pad_pin="pci_exp_txn[7:0],pci_exp_txp[7:0],pci_exp_rxn[7:0],pci_exp_rxp[7:0],user_reset,user_lnk_up,s_axis_rq_tdata[63:0],s_axis_rq_tkeep[1:0],s_axis_rq_tlast,s_axis_rq_tready[3:0],s_axis_rq_tuser[59:0],s_axis_rq_tvalid,m_axis_rc_tdata[63:0],m_axis_rc_tkeep[1:0],m_axis_rc_tlast,m_axis_rc_tready,m_axis_rc_tuser[74:0],m_axis_rc_tvalid,m_axis_cq_tdata[63:0],m_axis_cq_tkeep[1:0],m_axis_cq_tlast,m_axis_cq_tready,m_axis_cq_tuser[84:0],m_axis_cq_tvalid,s_axis_cc_tdata[63:0],s_axis_cc_tkeep[1:0],s_axis_cc_tlast,s_axis_cc_tready[3:0],s_axis_cc_tuser[32:0],s_axis_cc_tvalid,pcie_rq_seq_num[3:0],pcie_rq_seq_num_vld,pcie_rq_tag[5:0],pcie_rq_tag_av[1:0],pcie_rq_tag_vld,pcie_tfc_nph_av[1:0],pcie_tfc_npd_av[1:0],pcie_cq_np_req,pcie_cq_np_req_count[5:0],cfg_phy_link_down,cfg_phy_link_status[1:0],cfg_negotiated_width[3:0],cfg_current_speed[2:0],cfg_max_payload[2:0],cfg_max_read_req[2:0],cfg_function_status[15:0],cfg_function_power_state[11:0],cfg_vf_status[15:0],cfg_vf_power_state[23:0],cfg_link_power_state[1:0],cfg_err_cor_out,cfg_err_nonfatal_out,cfg_err_fatal_out,cfg_local_error,cfg_ltr_enable,cfg_ltssm_state[5:0],cfg_rcb_status[3:0],cfg_dpa_substate_change[3:0],cfg_obff_enable[1:0],cfg_pl_status_change,cfg_tph_requester_enable[3:0],cfg_tph_st_mode[11:0],cfg_vf_tph_requester_enable[7:0],cfg_vf_tph_st_mode[23:0],cfg_fc_ph[7:0],cfg_fc_pd[11:0],cfg_fc_nph[7:0],cfg_fc_npd[11:0],cfg_fc_cplh[7:0],cfg_fc_cpld[11:0],cfg_fc_sel[2:0],cfg_per_function_number[3:0],cfg_per_function_output_request,cfg_per_function_update_done,cfg_dsn[63:0],cfg_power_state_change_ack,cfg_power_state_change_interrupt,cfg_err_cor_in,cfg_err_uncor_in,cfg_flr_in_process[3:0],cfg_flr_done[3:0],cfg_vf_flr_in_process[7:0],cfg_vf_flr_done[7:0],cfg_link_training_enable,cfg_interrupt_int[3:0],cfg_interrupt_pending[3:0],cfg_interrupt_sent,cfg_interrupt_msi_enable[3:0],cfg_interrupt_msi_vf_enable[7:0],cfg_interrupt_msi_mmenable[11:0],cfg_interrupt_msi_mask_update,cfg_interrupt_msi_data[31:0],cfg_interrupt_msi_select[3:0],cfg_interrupt_msi_int[31:0],cfg_interrupt_msi_pending_status[31:0],cfg_interrupt_msi_pending_status_data_enable,cfg_interrupt_msi_pending_status_function_num[3:0],cfg_interrupt_msi_sent,cfg_interrupt_msi_fail,cfg_interrupt_msi_attr[2:0],cfg_interrupt_msi_tph_present,cfg_interrupt_msi_tph_type[1:0],cfg_interrupt_msi_tph_st_tag[8:0],cfg_interrupt_msi_function_number[3:0],cfg_hot_reset_out,cfg_config_space_enable,cfg_req_pm_transition_l23_ready,cfg_hot_reset_in,cfg_ds_port_number[7:0],cfg_ds_bus_number[7:0],cfg_ds_device_number[4:0],cfg_ds_function_number[2:0],cfg_subsys_vend_id[15:0],sys_clk_gt,sys_reset,pcie_perstn1_in,pcie_perstn0_out,pcie_perstn1_out,phy_rdy_out" */
/* synthesis syn_force_seq_prim="user_clk" */
/* synthesis syn_force_seq_prim="sys_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txn" *) (* X_INTERFACE_MODE = "master" *) output [7:0]pci_exp_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txp" *) output [7:0]pci_exp_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxn" *) input [7:0]pci_exp_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxp" *) input [7:0]pci_exp_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.user_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.user_clk, ASSOCIATED_BUSIF m_axis_cq:s_axis_cc:s_axis_rq:m_axis_rc, FREQ_HZ 125000000, ASSOCIATED_RESET user_reset, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output user_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.user_reset RST" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.user_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output user_reset;
  output user_lnk_up;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rq, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 60, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]s_axis_rq_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TKEEP" *) input [1:0]s_axis_rq_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TLAST" *) input s_axis_rq_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TREADY" *) output [3:0]s_axis_rq_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TUSER" *) input [59:0]s_axis_rq_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TVALID" *) input s_axis_rq_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rc, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 75, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m_axis_rc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TKEEP" *) output [1:0]m_axis_rc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TLAST" *) output m_axis_rc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TREADY" *) input m_axis_rc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TUSER" *) output [74:0]m_axis_rc_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TVALID" *) output m_axis_rc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_cq, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 85, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]m_axis_cq_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TKEEP" *) output [1:0]m_axis_cq_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TLAST" *) output m_axis_cq_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TREADY" *) input m_axis_cq_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TUSER" *) output [84:0]m_axis_cq_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TVALID" *) output m_axis_cq_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_cc, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]s_axis_cc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TKEEP" *) input [1:0]s_axis_cc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TLAST" *) input s_axis_cc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TREADY" *) output [3:0]s_axis_cc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TUSER" *) input [32:0]s_axis_cc_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TVALID" *) input s_axis_cc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_seq_num" *) (* X_INTERFACE_MODE = "master" *) output [3:0]pcie_rq_seq_num;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_seq_num_vld" *) output pcie_rq_seq_num_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_tag" *) output [5:0]pcie_rq_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_tag_av" *) output [1:0]pcie_rq_tag_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_tag_vld" *) output pcie_rq_tag_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tfc_nph_av, xilinx.com:interface:pcie3_transmit_fc:1.0 pcie3_transmit_fc nph_av" *) (* X_INTERFACE_MODE = "master pcie3_transmit_fc" *) output [1:0]pcie_tfc_nph_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tfc_npd_av, xilinx.com:interface:pcie3_transmit_fc:1.0 pcie3_transmit_fc npd_av" *) output [1:0]pcie_tfc_npd_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status cq_np_req" *) input pcie_cq_np_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status cq_np_req_count" *) output [5:0]pcie_cq_np_req_count;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status phy_link_down" *) output cfg_phy_link_down;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status phy_link_status" *) output [1:0]cfg_phy_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status negotiated_width" *) output [3:0]cfg_negotiated_width;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status current_speed" *) output [2:0]cfg_current_speed;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status max_payload" *) output [2:0]cfg_max_payload;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status max_read_req" *) output [2:0]cfg_max_read_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status function_status" *) output [15:0]cfg_function_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status function_power_state" *) output [11:0]cfg_function_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_status" *) output [15:0]cfg_vf_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_power_state" *) output [23:0]cfg_vf_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status link_power_state" *) output [1:0]cfg_link_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status err_cor_out" *) output cfg_err_cor_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status err_nonfatal_out" *) output cfg_err_nonfatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status err_fatal_out" *) output cfg_err_fatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control local_error" *) (* X_INTERFACE_MODE = "slave" *) output cfg_local_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status ltr_enable" *) output cfg_ltr_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status ltssm_state" *) output [5:0]cfg_ltssm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rcb_status" *) output [3:0]cfg_rcb_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status dpa_substate_change" *) output [3:0]cfg_dpa_substate_change;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status obff_enable" *) output [1:0]cfg_obff_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status pl_status_change" *) output cfg_pl_status_change;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tph_requester_enable" *) output [3:0]cfg_tph_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tph_st_mode" *) output [11:0]cfg_tph_st_mode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_tph_requester_enable" *) output [7:0]cfg_vf_tph_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_tph_st_mode" *) output [23:0]cfg_vf_tph_st_mode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc PH" *) (* X_INTERFACE_MODE = "master" *) output [7:0]cfg_fc_ph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc PD" *) output [11:0]cfg_fc_pd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc NPH" *) output [7:0]cfg_fc_nph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc NPD" *) output [11:0]cfg_fc_npd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc CPLH" *) output [7:0]cfg_fc_cplh;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc CPLD" *) output [11:0]cfg_fc_cpld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc SEL" *) input [2:0]cfg_fc_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control per_function_number" *) input [3:0]cfg_per_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control per_function_output_request" *) input cfg_per_function_output_request;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control per_function_update_done" *) output cfg_per_function_update_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control dsn" *) input [63:0]cfg_dsn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control power_state_change_ack" *) input cfg_power_state_change_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control power_state_change_interrupt" *) output cfg_power_state_change_interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control err_cor_in" *) input cfg_err_cor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control err_uncor_in" *) input cfg_err_uncor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control flr_in_process" *) output [3:0]cfg_flr_in_process;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control flr_done" *) input [3:0]cfg_flr_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control vf_flr_in_process" *) output [7:0]cfg_vf_flr_in_process;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control vf_flr_done" *) input [7:0]cfg_vf_flr_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control link_training_enable" *) input cfg_link_training_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie3_cfg_interrupt INTx_VECTOR" *) (* X_INTERFACE_MODE = "slave" *) input [3:0]cfg_interrupt_int;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie3_cfg_interrupt PENDING" *) input [3:0]cfg_interrupt_pending;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie3_cfg_interrupt SENT" *) output cfg_interrupt_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi enable" *) (* X_INTERFACE_MODE = "slave" *) output [3:0]cfg_interrupt_msi_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi vf_enable" *) output [7:0]cfg_interrupt_msi_vf_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi mmenable" *) output [11:0]cfg_interrupt_msi_mmenable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi mask_update" *) output cfg_interrupt_msi_mask_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi data" *) output [31:0]cfg_interrupt_msi_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi select" *) input [3:0]cfg_interrupt_msi_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi int_vector" *) input [31:0]cfg_interrupt_msi_int;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi pending_status" *) input [31:0]cfg_interrupt_msi_pending_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi pending_status_data_enable" *) input cfg_interrupt_msi_pending_status_data_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi pending_status_function_num" *) input [3:0]cfg_interrupt_msi_pending_status_function_num;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi sent" *) output cfg_interrupt_msi_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi fail" *) output cfg_interrupt_msi_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi attr" *) input [2:0]cfg_interrupt_msi_attr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi tph_present" *) input cfg_interrupt_msi_tph_present;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi tph_type" *) input [1:0]cfg_interrupt_msi_tph_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi tph_st_tag" *) input [8:0]cfg_interrupt_msi_tph_st_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi function_number" *) input [3:0]cfg_interrupt_msi_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control hot_reset_out" *) output cfg_hot_reset_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control config_space_enable" *) input cfg_config_space_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control req_pm_transition_l23_ready" *) input cfg_req_pm_transition_l23_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control hot_reset_in" *) input cfg_hot_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_port_number" *) input [7:0]cfg_ds_port_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_bus_number" *) input [7:0]cfg_ds_bus_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_device_number" *) input [4:0]cfg_ds_device_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_function_number" *) input [2:0]cfg_ds_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control subsys_vend_id" *) input [15:0]cfg_subsys_vend_id;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.sys_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input sys_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.sys_clk_gt CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.sys_clk_gt, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input sys_clk_gt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.sys_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.sys_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_reset;
  input pcie_perstn1_in;
  output pcie_perstn0_out;
  output pcie_perstn1_out;
  output phy_rdy_out;
endmodule
