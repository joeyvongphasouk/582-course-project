// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Apr 27 10:11:01 2025
// Host        : pikespeak running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/hkchu/xillybus/vivado-essentials/fifo_8x2048/fifo_8x2048_sim_netlist.v
// Design      : fifo_8x2048
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu50-fsvh2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_8x2048,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_8x2048
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
  fifo_8x2048_fifo_generator_v13_2_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54672)
`pragma protect data_block
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
HUrfENm7qTDF
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
