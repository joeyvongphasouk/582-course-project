// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Apr 27 08:46:35 2025
// Host        : pikespeak running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_8x2048_sim_netlist.v
// Design      : fifo_8x2048
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_8x2048,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
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
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4095" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4094" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
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
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54736)
`pragma protect data_block
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
d4DtsFZI6YjlsMOxyz/tNA==
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
