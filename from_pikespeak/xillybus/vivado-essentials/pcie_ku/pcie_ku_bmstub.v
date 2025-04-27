// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module pcie_ku (
  pci_exp_txn,
  pci_exp_txp,
  pci_exp_rxn,
  pci_exp_rxp,
  user_clk,
  user_reset,
  user_lnk_up,
  s_axis_rq_tdata,
  s_axis_rq_tkeep,
  s_axis_rq_tlast,
  s_axis_rq_tready,
  s_axis_rq_tuser,
  s_axis_rq_tvalid,
  m_axis_rc_tdata,
  m_axis_rc_tkeep,
  m_axis_rc_tlast,
  m_axis_rc_tready,
  m_axis_rc_tuser,
  m_axis_rc_tvalid,
  m_axis_cq_tdata,
  m_axis_cq_tkeep,
  m_axis_cq_tlast,
  m_axis_cq_tready,
  m_axis_cq_tuser,
  m_axis_cq_tvalid,
  s_axis_cc_tdata,
  s_axis_cc_tkeep,
  s_axis_cc_tlast,
  s_axis_cc_tready,
  s_axis_cc_tuser,
  s_axis_cc_tvalid,
  pcie_rq_seq_num,
  pcie_rq_seq_num_vld,
  pcie_rq_tag,
  pcie_rq_tag_av,
  pcie_rq_tag_vld,
  pcie_tfc_nph_av,
  pcie_tfc_npd_av,
  pcie_cq_np_req,
  pcie_cq_np_req_count,
  cfg_phy_link_down,
  cfg_phy_link_status,
  cfg_negotiated_width,
  cfg_current_speed,
  cfg_max_payload,
  cfg_max_read_req,
  cfg_function_status,
  cfg_function_power_state,
  cfg_vf_status,
  cfg_vf_power_state,
  cfg_link_power_state,
  cfg_err_cor_out,
  cfg_err_nonfatal_out,
  cfg_err_fatal_out,
  cfg_local_error,
  cfg_ltr_enable,
  cfg_ltssm_state,
  cfg_rcb_status,
  cfg_dpa_substate_change,
  cfg_obff_enable,
  cfg_pl_status_change,
  cfg_tph_requester_enable,
  cfg_tph_st_mode,
  cfg_vf_tph_requester_enable,
  cfg_vf_tph_st_mode,
  cfg_fc_ph,
  cfg_fc_pd,
  cfg_fc_nph,
  cfg_fc_npd,
  cfg_fc_cplh,
  cfg_fc_cpld,
  cfg_fc_sel,
  cfg_per_function_number,
  cfg_per_function_output_request,
  cfg_per_function_update_done,
  cfg_dsn,
  cfg_power_state_change_ack,
  cfg_power_state_change_interrupt,
  cfg_err_cor_in,
  cfg_err_uncor_in,
  cfg_flr_in_process,
  cfg_flr_done,
  cfg_vf_flr_in_process,
  cfg_vf_flr_done,
  cfg_link_training_enable,
  cfg_interrupt_int,
  cfg_interrupt_pending,
  cfg_interrupt_sent,
  cfg_interrupt_msi_enable,
  cfg_interrupt_msi_vf_enable,
  cfg_interrupt_msi_mmenable,
  cfg_interrupt_msi_mask_update,
  cfg_interrupt_msi_data,
  cfg_interrupt_msi_select,
  cfg_interrupt_msi_int,
  cfg_interrupt_msi_pending_status,
  cfg_interrupt_msi_pending_status_data_enable,
  cfg_interrupt_msi_pending_status_function_num,
  cfg_interrupt_msi_sent,
  cfg_interrupt_msi_fail,
  cfg_interrupt_msi_attr,
  cfg_interrupt_msi_tph_present,
  cfg_interrupt_msi_tph_type,
  cfg_interrupt_msi_tph_st_tag,
  cfg_interrupt_msi_function_number,
  cfg_hot_reset_out,
  cfg_config_space_enable,
  cfg_req_pm_transition_l23_ready,
  cfg_hot_reset_in,
  cfg_ds_port_number,
  cfg_ds_bus_number,
  cfg_ds_device_number,
  cfg_ds_function_number,
  cfg_subsys_vend_id,
  sys_clk,
  sys_clk_gt,
  sys_reset,
  pcie_perstn1_in,
  pcie_perstn0_out,
  pcie_perstn1_out,
  phy_rdy_out
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txn" *)
  (* X_INTERFACE_MODE = "master pcie_7x_mgt" *)
  output [7:0]pci_exp_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txp" *)
  output [7:0]pci_exp_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxn" *)
  input [7:0]pci_exp_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxp" *)
  input [7:0]pci_exp_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.user_clk CLK" *)
  (* X_INTERFACE_MODE = "master CLK.user_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.user_clk, ASSOCIATED_BUSIF m_axis_cq:s_axis_cc:s_axis_rq:m_axis_rc, FREQ_HZ 125000000, ASSOCIATED_RESET user_reset, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_PORT , INSERT_VIP 0" *)
  output user_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.user_reset RST" *)
  (* X_INTERFACE_MODE = "master RST.user_reset" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.user_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  output user_reset;
  (* X_INTERFACE_IGNORE = "true" *)
  output user_lnk_up;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TDATA" *)
  (* X_INTERFACE_MODE = "slave s_axis_rq" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rq, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 60, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN , LAYERED_METADATA undef, INSERT_VIP 0" *)
  input [63:0]s_axis_rq_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TKEEP" *)
  input [1:0]s_axis_rq_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TLAST" *)
  input s_axis_rq_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TREADY" *)
  output [3:0]s_axis_rq_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TUSER" *)
  input [59:0]s_axis_rq_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TVALID" *)
  input s_axis_rq_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TDATA" *)
  (* X_INTERFACE_MODE = "master m_axis_rc" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rc, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 75, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN , LAYERED_METADATA undef, INSERT_VIP 0" *)
  output [63:0]m_axis_rc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TKEEP" *)
  output [1:0]m_axis_rc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TLAST" *)
  output m_axis_rc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TREADY" *)
  input m_axis_rc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TUSER" *)
  output [74:0]m_axis_rc_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TVALID" *)
  output m_axis_rc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TDATA" *)
  (* X_INTERFACE_MODE = "master m_axis_cq" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_cq, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 85, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN , LAYERED_METADATA undef, INSERT_VIP 0" *)
  output [63:0]m_axis_cq_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TKEEP" *)
  output [1:0]m_axis_cq_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TLAST" *)
  output m_axis_cq_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TREADY" *)
  input m_axis_cq_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TUSER" *)
  output [84:0]m_axis_cq_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TVALID" *)
  output m_axis_cq_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TDATA" *)
  (* X_INTERFACE_MODE = "slave s_axis_cc" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_cc, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN , LAYERED_METADATA undef, INSERT_VIP 0" *)
  input [63:0]s_axis_cc_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TKEEP" *)
  input [1:0]s_axis_cc_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TLAST" *)
  input s_axis_cc_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TREADY" *)
  output [3:0]s_axis_cc_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TUSER" *)
  input [32:0]s_axis_cc_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TVALID" *)
  input s_axis_cc_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_seq_num" *)
  (* X_INTERFACE_MODE = "master pcie3_cfg_status" *)
  output [3:0]pcie_rq_seq_num;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_seq_num_vld" *)
  output pcie_rq_seq_num_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_tag" *)
  output [5:0]pcie_rq_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_tag_av" *)
  output [1:0]pcie_rq_tag_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rq_tag_vld" *)
  output pcie_rq_tag_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tfc_nph_av" *)
  output [1:0]pcie_tfc_nph_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tfc_npd_av" *)
  output [1:0]pcie_tfc_npd_av;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status cq_np_req" *)
  input pcie_cq_np_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status cq_np_req_count" *)
  output [5:0]pcie_cq_np_req_count;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status phy_link_down" *)
  output cfg_phy_link_down;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status phy_link_status" *)
  output [1:0]cfg_phy_link_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status negotiated_width" *)
  output [3:0]cfg_negotiated_width;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status current_speed" *)
  output [2:0]cfg_current_speed;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status max_payload" *)
  output [2:0]cfg_max_payload;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status max_read_req" *)
  output [2:0]cfg_max_read_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status function_status" *)
  output [15:0]cfg_function_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status function_power_state" *)
  output [11:0]cfg_function_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_status" *)
  output [15:0]cfg_vf_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_power_state" *)
  output [23:0]cfg_vf_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status link_power_state" *)
  output [1:0]cfg_link_power_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status err_cor_out" *)
  output cfg_err_cor_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status err_nonfatal_out" *)
  output cfg_err_nonfatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status err_fatal_out" *)
  output cfg_err_fatal_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control local_error" *)
  (* X_INTERFACE_MODE = "slave pcie3_cfg_control" *)
  output cfg_local_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status ltr_enable" *)
  output cfg_ltr_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status ltssm_state" *)
  output [5:0]cfg_ltssm_state;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status rcb_status" *)
  output [3:0]cfg_rcb_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status dpa_substate_change" *)
  output [3:0]cfg_dpa_substate_change;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status obff_enable" *)
  output [1:0]cfg_obff_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status pl_status_change" *)
  output cfg_pl_status_change;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tph_requester_enable" *)
  output [3:0]cfg_tph_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status tph_st_mode" *)
  output [11:0]cfg_tph_st_mode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_tph_requester_enable" *)
  output [7:0]cfg_vf_tph_requester_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_status:1.0 pcie3_cfg_status vf_tph_st_mode" *)
  output [23:0]cfg_vf_tph_st_mode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc PH" *)
  (* X_INTERFACE_MODE = "master pcie_cfg_fc" *)
  output [7:0]cfg_fc_ph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc PD" *)
  output [11:0]cfg_fc_pd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc NPH" *)
  output [7:0]cfg_fc_nph;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc NPD" *)
  output [11:0]cfg_fc_npd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc CPLH" *)
  output [7:0]cfg_fc_cplh;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc CPLD" *)
  output [11:0]cfg_fc_cpld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.0 pcie_cfg_fc SEL" *)
  input [2:0]cfg_fc_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control per_function_number" *)
  input [3:0]cfg_per_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control per_function_output_request" *)
  input cfg_per_function_output_request;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control per_function_update_done" *)
  output cfg_per_function_update_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control dsn" *)
  input [63:0]cfg_dsn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control power_state_change_ack" *)
  input cfg_power_state_change_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control power_state_change_interrupt" *)
  output cfg_power_state_change_interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control err_cor_in" *)
  input cfg_err_cor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control err_uncor_in" *)
  input cfg_err_uncor_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control flr_in_process" *)
  output [3:0]cfg_flr_in_process;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control flr_done" *)
  input [3:0]cfg_flr_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control vf_flr_in_process" *)
  output [7:0]cfg_vf_flr_in_process;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control vf_flr_done" *)
  input [7:0]cfg_vf_flr_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control link_training_enable" *)
  input cfg_link_training_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie3_cfg_interrupt INTx_VECTOR" *)
  (* X_INTERFACE_MODE = "slave pcie3_cfg_interrupt" *)
  input [3:0]cfg_interrupt_int;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie3_cfg_interrupt PENDING" *)
  input [3:0]cfg_interrupt_pending;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie3_cfg_interrupt SENT" *)
  output cfg_interrupt_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi enable" *)
  (* X_INTERFACE_MODE = "slave pcie3_cfg_msi" *)
  output [3:0]cfg_interrupt_msi_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi vf_enable" *)
  output [7:0]cfg_interrupt_msi_vf_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi mmenable" *)
  output [11:0]cfg_interrupt_msi_mmenable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi mask_update" *)
  output cfg_interrupt_msi_mask_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi data" *)
  output [31:0]cfg_interrupt_msi_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi select" *)
  input [3:0]cfg_interrupt_msi_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi int_vector" *)
  input [31:0]cfg_interrupt_msi_int;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi pending_status" *)
  input [31:0]cfg_interrupt_msi_pending_status;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi pending_status_data_enable" *)
  input cfg_interrupt_msi_pending_status_data_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi pending_status_function_num" *)
  input [3:0]cfg_interrupt_msi_pending_status_function_num;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi sent" *)
  output cfg_interrupt_msi_sent;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi fail" *)
  output cfg_interrupt_msi_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi attr" *)
  input [2:0]cfg_interrupt_msi_attr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi tph_present" *)
  input cfg_interrupt_msi_tph_present;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi tph_type" *)
  input [1:0]cfg_interrupt_msi_tph_type;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi tph_st_tag" *)
  input [8:0]cfg_interrupt_msi_tph_st_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie3_cfg_msi function_number" *)
  input [3:0]cfg_interrupt_msi_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control hot_reset_out" *)
  output cfg_hot_reset_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control config_space_enable" *)
  input cfg_config_space_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control req_pm_transition_l23_ready" *)
  input cfg_req_pm_transition_l23_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control hot_reset_in" *)
  input cfg_hot_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_port_number" *)
  input [7:0]cfg_ds_port_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_bus_number" *)
  input [7:0]cfg_ds_bus_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_device_number" *)
  input [4:0]cfg_ds_device_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control ds_function_number" *)
  input [2:0]cfg_ds_function_number;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_control:1.0 pcie3_cfg_control subsys_vend_id" *)
  input [15:0]cfg_subsys_vend_id;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.sys_clk CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.sys_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.sys_clk_gt CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.sys_clk_gt" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.sys_clk_gt, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  input sys_clk_gt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.sys_rst RST" *)
  (* X_INTERFACE_MODE = "slave RST.sys_rst" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.sys_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input sys_reset;
  (* X_INTERFACE_IGNORE = "true" *)
  input pcie_perstn1_in;
  (* X_INTERFACE_IGNORE = "true" *)
  output pcie_perstn0_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output pcie_perstn1_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output phy_rdy_out;

  // stub module has no contents

endmodule
