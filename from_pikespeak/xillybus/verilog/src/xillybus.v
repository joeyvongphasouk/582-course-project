`timescale 1ns / 10ps

module xillybus(PCIE_TX_P, PCIE_TX_N, PCIE_RX_P, PCIE_RX_N, PCIE_REFCLK_P,
  PCIE_REFCLK_N, PCIE_PERST_B_LS, bus_clk, quiesce,
  user_r_read_32_rden, user_r_read_32_data, user_r_read_32_empty,
  user_r_read_32_eof, user_r_read_32_open, user_w_write_32_wren,
  user_w_write_32_data, user_w_write_32_full, user_w_write_32_open,
  user_r_read_8_rden, user_r_read_8_data, user_r_read_8_empty,
  user_r_read_8_eof, user_r_read_8_open, user_w_write_8_wren,
  user_w_write_8_data, user_w_write_8_full, user_w_write_8_open,
  user_r_mem_8_rden, user_r_mem_8_data, user_r_mem_8_empty, user_r_mem_8_eof,
  user_r_mem_8_open, user_w_mem_8_wren, user_w_mem_8_data, user_w_mem_8_full,
  user_w_mem_8_open, user_mem_8_addr, user_mem_8_addr_update);

  input [15:0] PCIE_RX_P;
  input [15:0] PCIE_RX_N;
  input  PCIE_REFCLK_P;
  input  PCIE_REFCLK_N;
  input  PCIE_PERST_B_LS;
  input [31:0] user_r_read_32_data;
  input  user_r_read_32_empty;
  input  user_r_read_32_eof;
  input  user_w_write_32_full;
  input [7:0] user_r_read_8_data;
  input  user_r_read_8_empty;
  input  user_r_read_8_eof;
  input  user_w_write_8_full;
  input [7:0] user_r_mem_8_data;
  input  user_r_mem_8_empty;
  input  user_r_mem_8_eof;
  input  user_w_mem_8_full;
  output [15:0] PCIE_TX_P;
  output [15:0] PCIE_TX_N;
  output  bus_clk;
  output  quiesce;
  output  user_r_read_32_rden;
  output  user_r_read_32_open;
  output  user_w_write_32_wren;
  output [31:0] user_w_write_32_data;
  output  user_w_write_32_open;
  output  user_r_read_8_rden;
  output  user_r_read_8_open;
  output  user_w_write_8_wren;
  output [7:0] user_w_write_8_data;
  output  user_w_write_8_open;
  output  user_r_mem_8_rden;
  output  user_r_mem_8_open;
  output  user_w_mem_8_wren;
  output [7:0] user_w_mem_8_data;
  output  user_w_mem_8_open;
  output [4:0] user_mem_8_addr;
  output  user_mem_8_addr_update;
  wire  trn_reset_n;
  wire  trn_lnk_up_n;
  wire [3:0] s_axis_rq_tready;
  wire [511:0] s_axis_rq_tdata;
  wire [15:0] s_axis_rq_tkeep;
  wire  s_axis_rq_tlast;
  wire  s_axis_rq_tvalid;
  wire [136:0] s_axis_rq_tuser;
  wire [511:0] m_axis_rc_tdata;
  wire [15:0] m_axis_rc_tkeep;
  wire  m_axis_rc_tlast;
  wire  m_axis_rc_tvalid;
  wire  m_axis_rc_tready;
  wire [511:0] m_axis_cq_tdata;
  wire [15:0] m_axis_cq_tkeep;
  wire  m_axis_cq_tlast;
  wire  m_axis_cq_tvalid;
  wire  m_axis_cq_tready;
  wire [31:0] cfg_interrupt_msi_int;
  wire [31:0] cfg_interrupt_msi_pending_status;
  wire  cfg_interrupt_msi_sent;
  wire  cfg_interrupt_msi_fail;
  wire [7:0] trn_fc_cplh;
  wire [11:0] trn_fc_cpld;
  wire  trn_terr_drop_n;
  wire [5:0] pcie_rq_seq_num0;
  wire  pcie_rq_seq_num_vld0;
  wire [5:0] pcie_rq_seq_num1;
  wire  pcie_rq_seq_num_vld1;
  wire [1:0] cfg_max_payload;
  wire [2:0] cfg_max_read_req;
  wire [3:0] cfg_rcb_status;
  wire  cfg_err_fatal_out;
  wire  pcie_ref_clk;
  wire  pcie_ref_clk_gt;
  wire  user_reset_out;
  wire  user_lnk_up;

   IBUFDS_GTE4 pcieclk_ibuf (.O(pcie_ref_clk_gt), .ODIV2(pcie_ref_clk),
			     .I(PCIE_REFCLK_P), .IB(PCIE_REFCLK_N),
			     .CEB(1'b0));
   
   assign 	     trn_reset_n = !user_reset_out;
   assign 	     trn_lnk_up_n = !user_lnk_up;
   assign 	     trn_terr_drop_n = 1;

   pcie4c_uscale_plus_0 pcie
     (
      .pci_exp_txp( PCIE_TX_P ),
      .pci_exp_txn( PCIE_TX_N ),
      .pci_exp_rxp( PCIE_RX_P ),
      .pci_exp_rxn( PCIE_RX_N ),

      .user_clk(bus_clk),
      .user_reset(user_reset_out),
      .user_lnk_up(user_lnk_up),
      
      .s_axis_rq_tlast(s_axis_rq_tlast),
      .s_axis_rq_tdata(s_axis_rq_tdata),
      .s_axis_rq_tuser(s_axis_rq_tuser),
      .s_axis_rq_tkeep(s_axis_rq_tkeep),
      .s_axis_rq_tready(s_axis_rq_tready),
      .s_axis_rq_tvalid(s_axis_rq_tvalid),

      .m_axis_rc_tdata(m_axis_rc_tdata),
      .m_axis_rc_tuser(),
      .m_axis_rc_tlast(m_axis_rc_tlast),
      .m_axis_rc_tkeep(m_axis_rc_tkeep),
      .m_axis_rc_tvalid(m_axis_rc_tvalid),
      .m_axis_rc_tready(m_axis_rc_tready),

      .m_axis_cq_tdata(m_axis_cq_tdata),
      .m_axis_cq_tuser(),
      .m_axis_cq_tlast(m_axis_cq_tlast),
      .m_axis_cq_tkeep(m_axis_cq_tkeep),
      .m_axis_cq_tvalid(m_axis_cq_tvalid),
      .m_axis_cq_tready(m_axis_cq_tready),

      .s_axis_cc_tdata(64'd0),
      .s_axis_cc_tuser(33'd0),
      .s_axis_cc_tlast(1'b0),
      .s_axis_cc_tkeep(2'd0),
      .s_axis_cc_tvalid(1'b0),
      .s_axis_cc_tready(),
 
      .pcie_rq_seq_num0(pcie_rq_seq_num0),
      .pcie_rq_seq_num_vld0(pcie_rq_seq_num_vld0),
      .pcie_rq_seq_num1(pcie_rq_seq_num1),
      .pcie_rq_seq_num_vld1(pcie_rq_seq_num_vld1),
      .pcie_cq_np_req(2'b11),

      .cfg_max_payload(cfg_max_payload),
      .cfg_max_read_req(cfg_max_read_req),
      .cfg_rcb_status(cfg_rcb_status),

      .cfg_mgmt_addr(10'd0),
      .cfg_mgmt_function_number(8'd0),
      .cfg_mgmt_write(1'b0),
      .cfg_mgmt_write_data(32'd0),
      .cfg_mgmt_byte_enable(4'd0),
      .cfg_mgmt_read(1'b0),
      .cfg_mgmt_debug_access(1'b0),
      
      .cfg_err_fatal_out(cfg_err_fatal_out),
 
      .cfg_msg_transmit(1'b0),
      .cfg_msg_transmit_type(3'd0),
      .cfg_msg_transmit_data(32'd0),

      .cfg_fc_cpld(trn_fc_cpld), // Completion Data credits
      .cfg_fc_cplh(trn_fc_cplh), // Completion Header credits
      .cfg_fc_sel(3'd0), // Receive credit available space

      .cfg_dsn(64'd0),

      .cfg_power_state_change_ack(1'b1),
      .cfg_err_cor_in(1'b0),
      .cfg_err_uncor_in(1'b0),
      .cfg_flr_done(4'd0), // Never recover from Function Level Reset
      .cfg_vf_flr_done(1'b0), // Ditto
      .cfg_vf_flr_func_num(8'hff),
      .cfg_link_training_enable(1'b1),
      
      .cfg_ds_port_number(8'd0),
            
      .cfg_interrupt_msi_int(cfg_interrupt_msi_int),
      .cfg_interrupt_msi_pending_status(cfg_interrupt_msi_pending_status[31:0]),
      .cfg_interrupt_msi_sent(cfg_interrupt_msi_sent),
      .cfg_interrupt_msi_fail(cfg_interrupt_msi_fail),

      .cfg_interrupt_msi_attr(3'd0),
      .cfg_interrupt_msi_tph_present(1'b0),
      .cfg_interrupt_msi_tph_type(2'd0),
      .cfg_interrupt_msi_tph_st_tag(8'd0),
      .cfg_interrupt_msi_pending_status_function_num(1'd0),
      .cfg_interrupt_msi_pending_status_data_enable( 1'b0),

      .cfg_interrupt_msi_function_number(8'd0), // PF0

      .cfg_pm_aspm_l1_entry_reject(1'b0),
      .cfg_pm_aspm_tx_l0s_entry_disable(1'b1),

      .cfg_interrupt_int(4'd0),
      .cfg_interrupt_pending(4'd0),
      .cfg_interrupt_msi_select(2'd0),

      .cfg_config_space_enable(1'b1),
      .cfg_req_pm_transition_l23_ready(1'b0),
      .cfg_hot_reset_in(1'b0),
      .cfg_ds_bus_number(8'd0), // Ignored
      .cfg_ds_device_number(5'd0), // Ignored

      .sys_clk(pcie_ref_clk),
      .sys_clk_gt(pcie_ref_clk_gt),
      .sys_reset(PCIE_PERST_B_LS)
      );

  xillybus_core  xillybus_core_ins(.trn_reset_n_w(trn_reset_n),
    .user_w_mem_8_wren_w(user_w_mem_8_wren), .user_w_mem_8_data_w(user_w_mem_8_data),
    .user_w_mem_8_full_w(user_w_mem_8_full), .user_w_mem_8_open_w(user_w_mem_8_open),
    .trn_lnk_up_n_w(trn_lnk_up_n), .user_mem_8_addr_w(user_mem_8_addr),
    .user_mem_8_addr_update_w(user_mem_8_addr_update), .quiesce_w(quiesce),
    .s_axis_rq_tdata_w(s_axis_rq_tdata), .s_axis_rq_tkeep_w(s_axis_rq_tkeep),
    .s_axis_rq_tlast_w(s_axis_rq_tlast), .s_axis_rq_tvalid_w(s_axis_rq_tvalid),
    .s_axis_rq_tuser_w(s_axis_rq_tuser), .m_axis_rc_tdata_w(m_axis_rc_tdata),
    .m_axis_rc_tkeep_w(m_axis_rc_tkeep), .m_axis_rc_tlast_w(m_axis_rc_tlast),
    .m_axis_rc_tvalid_w(m_axis_rc_tvalid), .m_axis_rc_tready_w(m_axis_rc_tready),
    .m_axis_cq_tdata_w(m_axis_cq_tdata), .m_axis_cq_tkeep_w(m_axis_cq_tkeep),
    .m_axis_cq_tlast_w(m_axis_cq_tlast), .m_axis_cq_tvalid_w(m_axis_cq_tvalid),
    .m_axis_cq_tready_w(m_axis_cq_tready), .cfg_interrupt_msi_int_w(cfg_interrupt_msi_int),
    .cfg_interrupt_msi_pending_status_w(cfg_interrupt_msi_pending_status),
    .cfg_interrupt_msi_sent_w(cfg_interrupt_msi_sent),
    .cfg_interrupt_msi_fail_w(cfg_interrupt_msi_fail),
    .trn_fc_cplh_w(trn_fc_cplh), .trn_fc_cpld_w(trn_fc_cpld),
    .trn_terr_drop_n_w(trn_terr_drop_n), .pcie_rq_seq_num0_w(pcie_rq_seq_num0),
    .pcie_rq_seq_num_vld0_w(pcie_rq_seq_num_vld0),
    .pcie_rq_seq_num1_w(pcie_rq_seq_num1), .pcie_rq_seq_num_vld1_w(pcie_rq_seq_num_vld1),
    .cfg_max_payload_w(cfg_max_payload), .cfg_max_read_req_w(cfg_max_read_req),
    .cfg_rcb_status_w(cfg_rcb_status), .cfg_err_fatal_out_w(cfg_err_fatal_out),
    .user_r_read_32_rden_w(user_r_read_32_rden), .user_r_read_32_data_w(user_r_read_32_data),
    .user_r_read_32_empty_w(user_r_read_32_empty),
    .user_r_read_32_eof_w(user_r_read_32_eof), .user_r_read_32_open_w(user_r_read_32_open),
    .user_w_write_32_wren_w(user_w_write_32_wren),
    .user_w_write_32_data_w(user_w_write_32_data),
    .user_w_write_32_full_w(user_w_write_32_full),
    .user_w_write_32_open_w(user_w_write_32_open),
    .user_r_read_8_rden_w(user_r_read_8_rden), .user_r_read_8_data_w(user_r_read_8_data),
    .user_r_read_8_empty_w(user_r_read_8_empty), .user_r_read_8_eof_w(user_r_read_8_eof),
    .user_r_read_8_open_w(user_r_read_8_open), .user_w_write_8_wren_w(user_w_write_8_wren),
    .user_w_write_8_data_w(user_w_write_8_data), .user_w_write_8_full_w(user_w_write_8_full),
    .user_w_write_8_open_w(user_w_write_8_open), .bus_clk_w(bus_clk),
    .user_r_mem_8_rden_w(user_r_mem_8_rden), .user_r_mem_8_data_w(user_r_mem_8_data),
    .user_r_mem_8_empty_w(user_r_mem_8_empty), .user_r_mem_8_eof_w(user_r_mem_8_eof),
    .user_r_mem_8_open_w(user_r_mem_8_open));

endmodule
