// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Apr 27 10:11:00 2025
// Host        : pikespeak running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_32x512_sim_netlist.v
// Design      : fifo_32x512
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_32x512,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "510" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_11 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
md0AksSCeI3fOZtF7nrw91OgSzGoACBon4GH9ENTzaI4jlg22H1uTtXayX2Kz+g4ZH2j52rtMH8H
Xc49HVcThMzO1cRXu+SkL59MRQ87klGca4XtjrTtunJoQ+jyOKRwRBeIMHUdntbk2T1kbXHf9KkB
bNYGEMqSrbiDt7IJUx8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r6CzxR0T3O2wvZRQe25aX3/CWOx/3d/3vJvvS/XsrKr7v852GNQNqCBn+PKsunj0Ncep8DqHtVie
BE6tKIqZW+3txAUjrhSri5liuFWSnzAk+Drsb4RnvIy7BeOdAK6NhVhn8ZyplkJSHVwaGjN8gtPE
LeWEHPHf5qLnzqGKV7B6oIC7POGV6Vamos1p2z1xv2cEw4udvmtZ5EjzeyCMf+omtxEPxhPi6Z2h
ENlGOmuPMkWGMjP6HQCZ1Mi0uiST/zDo29UDIMmOGcsDMe97imU/z2ekKTPXXwjcV+9q+4zHRgJV
6JWWgjU9cztV5OMaEfpBgRBWae/ijWpPZaGuFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
glFrHilvyO7nq7/OYhnyb9uU9d8UNGJruNnkmJWuTpgvyCDmtx7iVKPBPe1Bj9jUDT/HM9AGxvu0
g7b4TuMdVkegkVPeHhw31IW0HoTL8wPnrLEpzDVK+B7xl953hPKPe0vn+0EQh2UKeL5K8VLxmsSv
gbpEeToeR90yzlSUzDE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D4uBhES8Mkd0GCwY2aQOmEzTqz6hO5B9Wa2oyfVBEODkWyt+AHkIXn4tuBN05FcP2FVmgtVbvZX5
K6iog51IoPw5tv+pM5x8+bQBX/aZpf0c4to3qiX6RZuITpuSUWq/7sqQDqtMqDWOFMMnUBpTX+qI
t61NvyIZcfqRWo4yvIUV2Zh1etqYKDlhqRnMoBZKMeHFpVsp19nU4sf5Km7sSlPQ08vYD8qtJqgJ
ZDYC2KWFTHsnT+5anHvc80FgHt4zBHpPrGprgpltQmVmMZxUD6NRC9EvvXf+pBhgfwPHHePWIKUn
elLld/HEVeFw76SlVV8i4LsS4KWWOM+KmMprEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EW9gHDqS12MVhy+y/xQVscLd4qOim+cNTepYzlas7WzqDJogZthddOuGjpm3a3fS/cMbF/h0O1Hb
Wjow664GIga0y96lkbkcJ3W8x/IGAsvgyrYT6ScsFhyq7tSd1HjvRG81BhhGM1mmpxfzh0Uqbfso
q+uVKPUmPnbQ/Gdu9YRoxmYVJdmUTpXJ5waYOdib8WNMPLdDfIo/FGrYrx2zYQBtpU5DwwVUTMrB
ZasEyxOj++icI5k5lR3Tx+3gdCFTy4XYQfcj2COm4gnVZ8FN/X1/+0ywsVGAc/OKL+mjMYH3NNH3
zfDO/TpYft+HaVl+CfF/U6IgJJeJs4qI4gB4FA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Myfv5Skg7QCxlNBoFiSTLAeIRYS0J0ArRihYk7dGAHZWAFlxJLgqo51W9P9zTVBurMJjZLtonoDJ
19RfxQj5GqhqN1A20s8xOFfLq6+uDG/V39xQFY32O626Kh4MMlH07hNJL5u1NjJWg1yze0XdFEe9
oLwKQz5lSKGMIh+VPXDuCGhShS+KhHwGEdS0lmA/IHPFNlRG1LsK0zQmUiNkG4kQ5OEVkQgvknNC
B6++ZDIYlT9WbZPs5giRY0zAhUepLPaO+N9F3fIBKVGw4ejbZOt0kXKixF86DDfLmF2+dov+PrTX
1MXJaea3YoQdR2c2MSHAk/TTkzg9ayjvxKaXpg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ks9l+EPHXfDNnWd0exs1j0Q9iSNYaIExwQnpsi8TFJimjPtOkX050wFklsLBM83WyfuD+F2KLNnZ
Jg/aiIiGe9o424jOiEFdnAJuzrD0QL9WmhQ3W9iRJ7uPhha6NfR2WGTCCM4TpN8rTKLQDKxenVfv
6x83rnL5NQxvpp9cQh3zMma73qoEJjhTR9MD9cwA4VeKq2u/R0iTWBplX81vYFd9TW2qW5/Qyzzj
A0+pXzczcJKdggV8h8bYcO+PRC3t2XrufhnjvhjMLG2tPHSMW/soDH/v8KorXyWe5N/q12fo5auN
SXr3olNuB5kpiVS3mJAPV0z4UsFfu2A4hLH7MQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e3AJKDEM9byJqwpkFZqMIMKMQPOR1VrLFkshor7HR0C+ol7Uv3XTGyvQrINdBEArX0eazF0cHWjC
9B4BhDnysAhT6SENcNHIYHUGQE7uiF7zgL7WhCxClwEnIAVj+PU9FmqlvbreEikHQfbeIDPyCLii
NAS97RDxWki/MfR33zvZX4eEolA/oTyRzr1MagBs7LN1UXyGPvnze8JzHxA3zHVedIIrBrZxkfoj
Loqe6tLYRlC45h1Yr3Wa2gh3LJGtOSji+m7E9Xua/pPh8A/CAD+TNBa5d/X7C3a4AWl2bYTi7HBY
Y8vaIjHiSosru5F2UOEQG9xekCbNRK1Apew1UIvntzCmDMMhlAgB78AUOE2YEWKd9GOl+aTZjMS3
GxAYzrtv/bDRkPOYbcG0SNT9xf+izRM3lX1E2vN3i3uU2Qrh73fjU1lk3PIe/A/H56UrNPDnGT9W
TvlJR47bLDtGyX2+dLvfTaZGRP8aepePOXXLIlvqwCJSMVhCB/hIbz7E

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TfuXOFQtE7YhtTL4354NvKETmBCLSVnb+pbrT8gtzjU7pERE1Hu2ZVzHgVQXwt5RvwG1R/z2je+U
PzszCBhPNqUaXEhuJ0A/q0S/vvOOa6h6tW9MhiB3gnuqEFVWz5pbHZNfgrwh2gT8XyqLI8f1CoJM
xpcB2TbREV/kAAFMxIfH1Dg0KSO2dCeVV1na6N0AiMOQPvXZOB7QpXwNDbYfarWLtF0/l0hi4Fxu
Kgho2ggrUhajP0aKlrCQ9mLsqOyqJELeJldeD+vuUUqhYq4K4RrwtQF+B67lYc4AjznwQ92tUvYJ
ZspFoHJEScNvdFoHFTA2TQ2KToepsqXRiOCL1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tmfbBpNtCYJ7zsgNxUzw7Dvn+hNn2PPUBeRfXSci/q2/OcQeF/eAAML8YIN1V+AEoAqZTE2/xRQz
+6zwVOLyAOLynMIBQ7EG7xReDJ9kEEiBjnMGO6NWdAsa/VcreVHrLD1PFtA1+WoVe6yOvNGK+Nbh
HjPkXyycyP6RQ4Rx/PtTxw31LOFVezddSgRlaKHTprKTP4LbjPG//onRBg3fAl8zwU1wYYNLzYCX
jwY7xfMkQyhUSpV2Tx3seqy2IYVl8jjxynFxfyxulvrJiqmc6aaKKBdkoOVbJ5eO2sCXFJB1mKEU
WR2Ee2ozisABzk9IcGILewCW7ghdLP82CRZv4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GfDCxx9db4ripD5mvQy16BVlwPYfeC7ZobZXaX1my6WUDiKwd69J5SreUXKYD9lvZfI7djLgHkYm
5G247T4NX7zoBwc88bUD+tNvGNmzWFfSVVZqu8hjgd31lZXjy9uYdXA/gsE+T+JqEfRYdV8YoGgm
sREyiJjWRPDbx6kc8um8vlAK/Rjwz0EGVkGUoi/+UvxcnjG1PqCl7GSMOQ3gFMEOaxIflShnF2/c
//ioADxl3WjUGyTstMK54XlP8G1Hk95sSe/7Y+SbaIyoG8t6gGDimDJNuGs4JjDUi1V7Gxfzxk9+
O2J++9clyLkMZ3rRyxSvR+Xyrmn3YxjVC68GXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 50896)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
