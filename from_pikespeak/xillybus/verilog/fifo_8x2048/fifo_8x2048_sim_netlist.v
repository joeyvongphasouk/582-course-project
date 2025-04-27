// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Apr 27 08:46:35 2025
// Host        : pikespeak running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim /home/hkchu/xillybus/verilog/fifo_8x2048/fifo_8x2048_sim_netlist.v
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
FZ60tZqVUrdqXXZ1PnBK8GqApIhwwF46npsGFRjTPGZGEC5Iwu9pWZT6Ebdk39iWKft60hw++g/0
+ukxTB6CyYTUNJsOh992qBoOWeV0LWIihulH/uGpXbSREjJd221AGev4XDI+kAV7rEUj7kjmYLy4
BUu0Fe55j+mKg90kCi8K7+lyGIhS2NCvW1/Mt9o+kIM22jvZ/uP3qbq0rTq6FCuwQaURSclln/6t
EW3o60IHL+OsEOTdfQ9toeIZ0m8Dcyg8uXtoVA4kdaoQqqc9mBXEphHOrFAxvv+dGoUbesXM8s6M
D2w2KGmPmXoszGz57ISGq8OOQbH2K7N/IdGOj3LdcAQ28eH76gwQN/oNfvpy/V5jd5Hc9zKMlDIG
/vcz/uRR7RsiMcbD1wae+VXlK4CzlutLCpHHh2iItvrKMn1xK/D0CJihhtHsU61n7W7K0dbAjaQb
ImtGtMzKZWlHp27dlQ0lZyEwbiCC0NYy6ZO5bznEum31SC8llSdHMLircVhWa/7nf3/UKm41XQcJ
uFe+TiaeHmzP7nQ1zeilyur+oVLVFLcJUz2ylgvKWEo+1PHcM3ZNmOPONp/G9nd7PPQ/kCNQ7pLe
rsTNuff615UFtP8jHcXmzjMp2KCFWMRk75ZutwlWOKcD4x6TyfDfJyyIO51LFhaFvhsMUWVCTN4v
8r4kxMqFNFjLWG/LGKeS1AcJkWY0gam/juVkx8neBE4AVgNURF4Mt+tCfMSC4Yx7y/cEX48uIBqK
bEReQouQ+oE/iPw42TdkXSzV0r+/bm3Spv4QHj0s8qMxZfWMGizaDHYaqf6W/DWnmKZjkmhSyysj
enn4MvGzuGTWAuKQRkmgpIpGsWnAFbPlCWdaa8baJyLHVxSkigUXMnp8SGPXlQfZB8Aq1t9t8/FH
7MJgyO1tgRkOZtsgEGvEISIPHFHOU8t4PL3oburdzYNlZU6D2ri1ecxU7rcgB8jF2Wm7268m+jJB
oAKJL+D1/tvyCXEB6rkJAd2vA3NjUvX8y2ZywgfkXvK+ViXdN6NV2VCZXK3Mox+XUeYYUAn2INx6
iuIrJWklsRYTqiPeVcQM+kWphitW1BL9vPQ777R8b193CVwqcgf0M4SiG2uaCOGcdj6CZPkySNcN
trTL6S4gUPWB1By/cJ8/BAKdWNXxr/vLr4AZFBKYNu958bH4ZRvTrcQaxVAZDSYwri65Bq3i0u8e
vlh4j9BKMoF9qn7qg0MvRAdQopDOIS4YR8QLRpKbDwr3pXbp/PD5O9S5TI1wS1mjJdQfDstL8D+1
hgwGKcO6MPutRy6BPSYo2MoNseywrdd/wHoxfXIzKfIyodCGsQ5rHqgDnd57/PoCMHVC7DKidHf5
oRGyUoit4Y0GAwucxuBYWB7zSPs8wvl3/eT8tWMAnYh70afILIId5NvIByN9JKEwvijgEND1XGDs
lFOLO5EIXu10bP+rfScLLTBczZM9t21/F27+lg5ko9IeG1LhlvAV8WZX2QEsvX/CWRoClDXdxgZ3
e1WK9Gf7uevNx1HbhXNNjy6DmU62yIyFiKlvOnyl1Y8x9SLpePxly8IViGal6jV+0wQm1qST2NQc
yW902u9PxsVnfwwv+yqEaMNJQd9KcZbLkU5RzQ9qPmYw86pTjuC+86d8WfkwOehDeyfxJMFUPgwJ
WSfm0sj0oFk6IJoXJiVAiKfBxTU31UfsbenT78ow7H2Qml8E2mwsgME0hVZ1TNfCo7k6yQezc16F
MF0zdbDJGUv5XWXgtWuHYHCJavMy9BJ1e6WBHFdgFUaEz77m3LZtyLL+tcEy8DjEL8RisGQuq3m2
Z+PKstJlQspasknGUTQKjstsvnoAxn0GdZpCbKr9B/ohUPRmWadTGV9wzxlpGu8DAWUlmuEq1vPV
865KmrBlWfWh2sttXLB0PEg3cE9rpGtma/lOS3ypE/R9wVBWpFKlAkepXIRBeEGEBaW6PMtEwh0j
Td1Kqvgj1BMg2jcHrVuWKru9owEtrlbMUVBQZRh3fDm8X33XvZP6ffm3+TkUFcW3udQNJXI8QVHU
35QjqIEuqGY1rQyCajgLtknr314w+pW/FYNhRu1n/7pVdYQKVtc2q3zwX0hUcnyAtWnbcG3W1Nlt
964XTn+rnBNMaYpbgYAybSis8CvhzPSUBoJ8QHZUfk67iuH73jPl8LbYXBtio7RWjvTGuueE6rK7
BKeWpMcRVi7qjEdNx//XhPWP2erffoN98iyC7LYZJVcW0digSZ9odRBFC40K3ucwvsTLH6SS4+bw
rzzE6XysoZ3QL1pjPe9A51FzKIfqpM0X5opOrj5jjflIWGrooCSdU/AE24NOM1SYzf+8ISIEJGn0
+Obk15ZQf+uZF5WCpVDQuZo4aWhegLsgITNvpQNeqjzSV/jr3IrVY9BkBRBv78dBbmT0/J2/v0kr
GP0olESYE2Qx+QPYB4bpQAH6VFgvMj1mKuoR0Beup1MalaxJ8hY60agAyI/XO4hIvsSgw1oSQwRJ
1T3drmio8K12YCkN9n7mimz0+j/8xcKV//lLmxtLzhHGmpg6ogT0jJVNePUCpahQ9cZFHcUF88cP
9VNEAvL52o8JXrUCovSpQE8eOy/8CixquHCQxYeUSpP8J8i3hZSSQ6L6IyOrBHvEh2bTfJonTmby
yf38q4ySFIsf5Q8Wp793DzXrZ+1I64+WyCMwxU1ApicukzG58O7u6hPn2LrwPg4Az7511mQbl/QV
FRuSIpSK9dv7xr/Maas0UgqOSAzSkVH1p2yFCBnlcsgyI/oxXHVZJTqpBpX3zsZ0W/eanjeRfO4X
qJJBGDiqAVJx5JF2xZM892yyvaVXUhZ39gyyu0O8zdNNGoiUb7S7EYlmDx8Zs/+6D1UWJ7OyHLCh
LsxknYs/WfBuPW2IfjeYSLFe7Q16H8Y/pTM2gwXuc7xOtREOHAifAAMB0AYuO+Rcj7fuKylkUW1g
RB8+XGJAnHpEMW6CQAVMDv6IesJ2jT/8rG0r4AauVkYxLgR63P55o0V9AE1qP9v/aFH1PhDtvfIe
bxewuraxr92qN20ReOfFi+kIG1nrXIF40y8MKEhE51OsfqpFhp2cq080bB4yR+Sw2Lqiv/kJActC
2zHJaQa0KAvHMWWe5W/lHOlfcW1gRrEmzWcUZTfiA6AL6bxx5NFo5BGkgAYbQg63y+8Pf7Bsx3pw
2eZ9ENxLU8SUsJF3fG280KoX+ThMLPbXEcJ+BQi7//Vl8oDwklwhqX3+Y2SKeO9ZfDWPA/PXzm+X
3nisR5VarSMlr3v+qcDBPJcwfiGVBI5HJw8roJ8sWraFrkpOUlgluthN/aL0hvx0OCYycfYGGsW/
MJRLZoX9I0orUhwRDurZrmXQ38Z2y7Dp9tIqNop1Q/CpXo3d7fxVfoDpUbR33AkKibaxUld1Lv2Z
tkLMMX8YNTLv7IXdj0rp1ZSAoLrwtMzBP1Am+xA0aP9L0FPRO7HoX1W+B6CSfO/7kRylzfXf7mnH
EjKlI2X2lnaAXWG7TmksFuD2QAadZzedrWi7Vjfo+EI0QLSEixTEVMQH/lyFw0TLVE9lmEQ6i53A
oIS29HrciDKvHSqBsRaKC10xO5uGY+RK2elzS49kfypMHZpPDtGWcS7BLnGkZkvnmVKCWQsZu4pj
LZqi/RM+35F0Z9e1vp3f7ADQ0P0KU/MMCF7TTJjoOaREaG2WCPn4ba3BWSW9ff7mbAVQLRfbKVRu
CkjvgCYKBLTLR62H1hFuwarQpK5Cqf34ACNgZJFG5zLAsp5ZWomA9pwUfiVgKp8i/88xlONxWHLJ
IPHO/uBIoe68nywW6mzKVectlnZw5gsASFoPd2AvZMZDOFtskB4c0t4B+jCQ8ME/+Ic/DWyNT3g1
4bok8lKPGz+hK1HzD4wtnytb7S2bUzUNWn/Nna7E3mtU4JwCnhyTEmGp3MpDM9T2vUAlZeo6fkZ4
itQnTZJ1sKHyHQDf528rZt5d23NGMsEQlIxfY/UkVxv7+UZ3SjlC0o+cfk5UvBps2hCZvgHgdbzu
ycmnyxvjNmfnYrQA0DSGooI4QMQShnAZTFpIcZvTwVFLpOk9QZL94XnuBixQTBPjqqQly7RsoDq+
bRQEO2+K2IrKQUL6Xv9bwkX8LNpUsTrbVzbsEVIP27xaozUdEJXDp75y8iqBqohdNOip/fwtuNKD
KRaDCLtIMsrz0KvsypMtqW6cdII7JR+r6vlrCKBUr5FKBeAghgIa5R2CaZ+qgV0RcsK4ao/6sLNe
ecr7f+oFpMtVEGZT4towqV+exNuGM0kEulcCBaZZafCObdbego8kA5N1/Jfwj99CuhxyexNC46eF
X2vG1TGull1HwPLRk1TDaXGnBGVEPPl3dDdCSqyI31hv6KgjipT2CEgxpJUmTAbzQQUZtcBVSNlS
GahBRL0NbHJ1/HuEgiFiHtc9Z3KAXo+agS4TUHoMqCtt1RU5GtVdiZMZVvhAMKMRrJEc+iH0Nnij
59yUfRs5pTUGqiAJd+457nNfQEo/JJulZ7vc1+Z2YDYFPwAEdObNXb8Qt6brsVtYJQefzArNEA3X
5HqLkkbxju2CaOdEUgnOuW7bQpuRvE/QLADEXLFwJW2UOvZ8pdx8myC4ZcvyYWgAZ2rmuUHSy7ok
+KD6wAdphzF4Md1HsfYYNPSDCZF19W9rTeP4D3CIrPSKYOD8muIF1BfS5zE3YL8DdPlWIwno6geN
MJ7P8VunxK23abox1eL3BeRc38kF6OSdbXvJpVFv3aW5SjSaCRRlJL7t1RwnOSOcGBiO2t1Q8s9p
WybggCEs0gj6c6Hr6j1IsNpKcOnlReDMN4CluzUagzhW/sorG1rJnPwNv8I3ibmHxGvGaKLZKX/N
HziB4HF6IH8I2v9tyBjsv9rTGqmwKTU5L7+Hlm4TvdMM2B73CVavSvgvFhUuXojIVauiMI6Weap0
5PFLUClx/g7OESI66DUi3bjtk4P+x8lPrFFqTlMi7yJvLS8ibxtU04WkPEp6JcoysnFQr+Qxzfoi
TrjfuG3xp+mm++8RJV1RKY7A4sQ+YySR/U2BuWvIoB21i7nc/ZSq7zcHdbMrEN/LxWU7SHYnnBge
C4I1KgpWByAPyAz+9nU5IePSNnRz1VEVIEUeNno5Ci3TDc+MSRvXCa10RmTPXHAp2STl0x8q2Fl8
tKkHoJxgC9CII0F6uaPgSfRWnd5FpG5V/g/3GS7Pp91HO4Xnt1xm/gWM6yFcFdFzdIOk+VYJwH/B
voosxPcCIXOLhS5yYybNN3OzKG+4E5MszLAWNo5yXGyIOu0D3f6PNaSB+AOcqnxtPLr5sQFTSP5G
k4VKAC0+H2BWA982lCAdIXVh9cnzDBtA6mOamc7OLM2uf7KcWlSwpt7qrXOmLHb+RVU/Mbw/9hlP
U0+zCqgC2NtHR/w7AM7bdPbDNMxN1GSjdkBN4nnZYc61rUAjeEtkpSJNLQCL798P6Ave2TqsS8zW
fH2e8cpViiNCoOGEDkqNL1V5PpkCMBBJF4fXl7XsgsZ9wCbsApN0PmCqUXNYnxd3PUOprolV4j8h
ydBlkcD16H+aoeTjiI14RCxclJK7pPdRzPxfCMSOlUAiMsIht6BOIzlianZQlGvuYBiKVFrTJPPT
ius2vSlV7s6A75xAO42mzdW4uCAmJC7KeSIAnnfPfqz9USl43V74JmUg1pbMLIMHadNIENFcWcbk
S/+K25ybmpOQ8IEI2pODfl+mOUlK3YflRVOWWTEPbE5WvnAhKktkd9GN0Hw4pl5+ErlMzXh0K5hQ
HbT+OLj1rX52VvAyzXSqQaY9ed+37UbFy3Jsegi+t+M6AexhbIFKqoT8N/EGpiUXH4N0n3JtiD5+
/YgudcCQ7yMalraJfwZBs/Qa82FLV+3uw44vvLze5zNUBvBCF1G14AuteSvGcg05juv40V3ZjGo5
OvcyvYZcYX9F3s/UF4LNA4kY0BhAnWkmMZwQgLHnwx4ef/4mJ2FnmUL2YscSbGqLSv+vgCOOiJ0h
eyNBnewMbBhsdsOPayYwAvALzlfF63C6q8nHNKnoF9mRGI7ZiO68TlCohJZ2+X0k1NE2o0DbOYKH
dhKUXu3JoUQj3/Q/RqwfYUwsIsf95fjD4SzXMZFcDJoW1I3EDt/9owJE6C9/jtFNbuwS12K4GHBo
yWnCFe91tyht1Pzl2KW8YZRg16AmD5BPP6uSL2p47302MnkMOUktnSLrKZVW75Y6N2kVNSPayxKz
GkXToS7QsznnIFJOKuV+N5mKlA13Xl1yD57JL7GWUEburc+6C1RxNiv3cZJilUdBvo9DIDpKTPKz
8fjGclpfhgQ8zWaOxDNPe+UrURDWcvvpMLJBDV0H3gsd4vfjcr8It4A57V9uP0ypdA5uyCsG0BTU
Jo4acQLN7ONwh/ilUZZsKgK8OiYbIkf2cLdS8Zfk9qMy+6EmNWCpHTw9A08vZSjKVAsu9Taf1Uhh
Y8DzS5FC7NfLO5VAdhLFSwIwx1FE5ta1o93008Vof4Sg+atc8I57FsL185zAeOIoKYKaWcoF1QKu
PTcXkgJZzneBwh9of65+VFkzHzBgX7zFCSpT3tnpotFT2L1OraFVTRvCl4bEabqCWjugr089rA7l
JAfk36bhjxcfThMgm6yIDAkTuxWkFp1mO1llsEtPXY8mtJ1CXyldLWj1qfwzR8RkCEdksQgwVjEg
bHIITJM1uGB8Krn7Bl2e+ukoiczrDEMmK8au5I8qteMrAzVg94XVpCOKonzNPeHnlv0dtOHD2iHS
MUjWpSqiIYQaNmoweeet8/KNMJL4S1NEh90vsTt1MF4vnAnneaeKwdrws4HLg4Rnn8DfLE+R/mQl
Y0Sdgaz6NJ61GgfK+yHd3eS/WkEGnYTvl5pRxQQUxejDMVXzfzUroeuOvD4jdImV6Fh0SYyu7DhH
YSdj6Y7dPxURj2O+6rsRiECDP4tqiajpMnkKf+vH6zgOZjXqdFKIgTgsGXyOxXvXMGivSdXVHYKm
qe6LsUZx8hTEGAYEMJdHU1iJdwudWk8RLhF2gizsOM8JEaiOmmv32C6x2dVFbqB3XkA7wBNb1eyQ
O/Iqt66jnNDXjb1zIy/m7pNNPfVVYtNu4TutskhdWmRStUP9Yyyz2I0DT8x2NiAqGP2yzN+OlRbF
nJGoId3LPwBzBaLDLlYWCcin9yp2mHfIP5ERd6W7MZr/xTNZqzWo3jG8jIOzMN11ddaYdUz+OJf8
0Tz3SPtRIoOwr2OlivOfkoHJY/VTdbi29ZxzwaMUB+/TAJcQxg4gATnERZ28RRDTFYKxAz7ke9Ps
jVj3y+UWwCWT9QJkLV0h1WieKY1Icpp+zaTrsGAn1IsaekVdzXLMoIH9DE541ENmH1ge26XPkvnK
TUMCp1HqehgS635cezMUyf2kWkc/ZnXxxzwydVlo35XUeaMzshFhBEwp7bY3u0OIfmGb7JXlYmn+
DWEUCgNpE33MPsuGFVfyCKQLbaDZH3Y+kBoejCAhARhg2rrKyVcjN48xZeTd8fdVaFrLQUf4x7LW
hwvMNAlD3Ox6dFRAjCzsTtKFrr5vI6lAXBS7Wmsuhd51/RzhnEnooNSs1raLndhIvB5BRbME71PI
2OmuVK02QaWRRj+NBIxtLa9q7f6MfhOCguChn9NQMfS6v04CnAJjpDer+KXS8TdYvdtqF6D4uFM0
uxQNsMdD3w/oDdAsH50cFNffnSIgL9PdfM7Pf+FVY9/4I+U6sxTfGcfFVume13Ku1dpkU751K6cu
bc4JAl5oaqidx+LM6Ce2RUSAUqRTT8CjH43B2hnr0DciCAju0vdCDT7g3PEijTYp6TlCKiRFDtQy
5pO+5eEPBy0LWngi/q1MocZKKE62wKCWvJmilOFAmJUY49M4yhKtQCLY0KXi8TQTKX4zXJPCMgTV
dNdqGhcupdApHJ799WhBl9lWoR2LmQjksZdYJZ+Kz5yrptLlkaUnoRQalT1wdJfAjVFbbJBd3bdu
39x5ngo01upsqyJ63g31o5ugK+XxeY1ko5WAfV8Aqqqg49dH3+IzCHmqrOmjO/eH+wdW1NmSelOe
xxvgQXaz8xpmUN3de3rILd4w5Ts+dVLVsyj/7IDEGzO6I04YdqyR5X3Bp4mv1DykKT+VkOgE1gyJ
urZc+62zQ6aC4rap8d7O/lLHFdWdShDCLSfL4pwn6k9jGWfYDYS7RCayQFtpJRsJmahx0ZjwRDe4
bsJNDUZwDNMb6wIWE0nEXBhgu+QZoxqPCCaLnOnP9Mk/iuJ/bVQTz6EQ1RD9VYcUCscooLIlsmcD
Wi/cu+5p7+l7v7G0gYWVTj27CRPoXLRPmPzF4ZJhqN58iG/PPLpzEfCBp7d2lgDQYo/HjTTYJIuj
RbEruHVJJkgUS71+ZgFRNDNnqHFfzukSj1WOyLNpYow6QxR7oNujyYcqrViIYaIsm5E/Sv/0QP6O
TT/LnEsc4QwQGFhDhD+IMwywRivkkQH7akD00TsQcWl7D/gW+fy9AtbQezJWxcsGsT4DVB6gdJRC
hqnPezBaYIKE7NamPJfNoMhbw24nalA1A+COs460A3sLp3QG1JfKo6MBWMwE1nByocaDX/lMdmRk
Rm/tVqsnwjx4Lb9pkhG+4xinVgF7o+kT/kySTVDuVyb7UBKbvHpWBqucdExcpF/XZhZY2QzTIBG+
3Ev6ykewDAt4wLAhlw4Zcinz+MhrH7YXZHS0ttg7nUgRVnXffyucpP/zL/DOkTVoYCG0ASD6aqub
b/Cm3hTrrcUDbfVoFuTEFID17yhHeEhDIw8byjiwcX588qY5EohSNBE/M56M+nTmhSvR2n3W9Tab
+0feZDcUkswnHDkr2V7suYlaDJpll0Wk+xx2rGpBH5xuaXmITqYIkcXzK6/9BZAT/caRVPwCcRl3
9KpJtZe027Qg2f6FzjSdBUFzfVFj2KuCFNqkv0grvrHTjvsToxPWFQwHGYjZdN01OsSId0QtWnNs
Ie4MJvWN3HgkehpzwTC0VD6uLWjygjMxIDueAifb1xbeTiO68krvUMfAops7D+lkLV14ZKp2mDSU
9Eo3P3d+DOQh6laZNpO4JTVjRaFr4w4sQbAClkUTAV881i3Uw6dpAJJ4y44f/UDMAo21eQS7q1rr
mgDqhcKs+215lhCpI/Z+l2DQsrpoZoSQGnxyg/jmBw0P1taVP6iBJSG32qh+tHMBHLSHe69mfS9K
AR8j5kDIYsPgFgeJmWnirCamheonvBGn5K4W8gYgenPeTURAPSRQcyXDXfZJBWJO/X54vs57wKfo
PwbNM4p3HqOn6Ux21XfCMh3zFkToNVrfUqsw38BFGQkLqDK0ijolua/ijkZZT9/pSok9ARezWax9
QWkKJ2MdqbgyhYADi229ohA35pbniA2TPkx2nthEJWePIXRO74OpCVnujnYFtj5vRP/QDQ0NoP+e
7nTmkX44+TpC35wLFZ/I3Ywjufgw1UclBmEQP8PSZ3PgAdMPKA2XSEdn77UmA/mpzTyI0HCTm2Vt
/lwJmz1uPCFBldrdhJZcKAEJisp/52PS6u2Nov6Y0mYKxFNdIcJAvIafRzy9Hvx8xBcOu8cQOtcS
gmb4y/Mca+EVhd6dCBYVCeEoZsM5t1+YX0uPhheJz6lIeaSQJ6D83yugr8ASXL1kO6nLba44V0KK
Wgui+0zZxwrcc4LxIvGataeGMYu0nUVVLUzP9bagtcyQ8SGfO4RTohWmFfMV4GZG7RYMvl7Olhb5
02YmUodY5rWgkPYoievdnE7Uicl+vhygZ6lmfMPrU6nltJ/xwYBM9Ium+DC2PA8977RsKI/x5Kwy
dYTSpz7DLsVMz/f1L6PMLEz5pU8KNmRiKVHMYI8v7ogCXutsoK07w4Kjcu93Snt/bgtoVGQg/5Ln
SoC3J2FL2DaXzSLNXMwMZQzSW+jtH7YJY5JY0PtGA21s77l50CBmK+qoQRMHx5fg7ZpST12ERkZK
x7T6VWHXW9SkJUHRxPC2dj1blaCW8mXmjtmlvpO0YZRtUwmivcOxLZ6BLGIhsmXgNr8FFvF9Wd6+
6S5o2vVIFX2msSrSScmkvGrYlGzEUIby38OeA8IOo34umFJSCtqpFliuvooG4i6kR2L+QzeH1+fs
K0Xug6+0WUkoVzaOKBfDFpI4+L3CsGysHJHSpAco83AoDHib7/0MoHslq9grdPjmwNpY9zVqmpat
tA82fpa345nlat0eApJGyby6T8F7DLsZs3tSghX4NMTRDx0nAcArs3kRMFBa3F8aYJjcwQo2iKUg
pmKmzTGfuRppgf+7B39i24MSibLXmrPbbFzkmUniNuqnUJSBu7bvo5i+OPomk2++Q1z48toQXZu/
dRV27tP0ON0rDmNQt4F5ao0oLpbhktKYAIrmEcyDCWHQtZWcS9caggX06KsB3Rzb+pXMjNzcECKu
L9jEtmewBdAc1sV5EVe5ZX3Osa4iG+SbAqPSn8ojnxKbl+V2MKwDAGj0d39/yf0hXCMcLnjyys+N
G70sY77JbUlgUidxv2wkmwDGjyqLm5BZcAyJ++K5GGgzTk6/KxdlGLsS1PBw6Z/zfuSMtRXGPthF
5qsRhLa00/slrfKfdEpa/U6pmB/xbO99TfW1DDnkVyhANyO5yxLnrFMDjDQTrdms1RiRn4d382PL
9U0JQmMMDf5ccYMbwBUafPAzy7l6d+oZyaSFsRwVqvwOYtoKDdu72d9OGkg6iU8WC9kerUNy5HmI
udBDkDQBGzzOheoL5mr8D8Hi5fgksM6gFROHVY+l5EKvb7Sq5IetOEgZkP605hti4wxKoNsIdG+u
HFlwtpx0HUary1nN0Csq/79xwvnhb9Ghio/Na81lL1+YXLwqqHznp1Pq6EnIG/lrmW7U5srgaHJi
TpS7Lh14fNaWpZaHTteFgTWGYCyKIllD3eIxWC0Ec9kUfIpv6jy/iKHbugTQ7re20GgIPmfpE9PG
7LNtgSkE55CYWGvtS6kehTx8q07hPM56+49LwKruNJIXSNMW07gJvytNyczdeA2A0Jydx/JxCQcR
PL03dEz7U0913rAyjBBe7EpFeiJBlfPoFnRBMfbJlKotRqhGXcVLiF8jT2VWxd2xSSdW11VaT3JL
a6I66JEXG+RvgjDFY3CNC4C3QShdImxC6mZVM1k4aQmNEX+ge6n3S3PIa6UESh/CHNY7i35AcvVb
FbTvGd8NTcsrf12D3STbuRwky2nyDWXeCYfKD9boMIz52hr1Fe3PP/MChXh1KbOcPAmaJ33vMQ/J
0ZzV7QwI6fOiDtbZBPy/nPqq6ENAbeZHcrQgb4jAVXK0RtDas8qNAXotPko/iIBD/9SZVg/a55dG
qvSKcd0UnzIbr/CtueuGR/agML4Qjlvastt6xFO4QzMWJ9pY1uCbe0T6Apn3RSsCdFIJR/bBd8sD
DGnM/UmdWjIvoKmUFq8WY/Z9LL9gkm9C5s0KbhyXOY1Hbqj7TT5htjM8l+TfXJLzg8dfskeZdGHK
si7/UPRLUi+WyjU5CM4EA8qRowztz5cjY9jXaf7mGQWd+3uQl7h6WRBsQyi30oO8tF+g/11DmD8S
bJGzpVBnW5v680DfRam7sBYhNPWVOWQMmVtwx6DO4jGXFJC1aiU+zO+rYkkio6X5TrnKRVfyfBp5
p6fNufOzfiheaDqEvJYbVawBiYOqplsyZuM12TAQEc333fgkAPR2U79p4J0aX5Bs38uHLeA8nfuA
wX9InTrxA+LDc3IYcxHHAqvGEgHfUrjKxupVsbe+guVKBRj12ZBB26mg/a6vHZUNLBgxFAwxFetb
WXjxtIYB2Jg0wDC0BcLNooDx66kj3ByqPjnFIwbY66AkqJmB1r1C2B8RNPYuyGUms664njkF3QjY
slyFtDVkejRymzcLwJWsnylxllJFmrWAMpwi2G9LnjzaBTn7miyMsMvaLfFPCFN9352CrdjGkJI8
IWBQPefdVMbK23RK/m8OkpWpx5a+1WHWVsRUrWb2qkILQgj2v7aARg0MDjr2vSBEcNGpgJhYxAcg
o1Kbl+HJbm2ylv9Mwj0MfyWIYre0/lPfmlysdNU7MlyN8s9QjuninBKz1L6wSiyyB49/vYLg8uq1
cEgTkiG6twO6JozirXHXSNt/n/CjujWLF7Uxcqj2922FhRv7eTcl2n5V2JgRIF3cbPeC2PafE9hx
AIEqCisQ4IQfeg2Uo72YKIyHfyy0nv6tyV/FWK+YYbJz8JLDPv4nKspUinYTtKWGiCilr5QehGEQ
FRsyygwddILdili5Kbdh28xCKt+OPsxyLCiudK0CbjWK7sus3oLGpwaioM9G3KTl/f90hB1PqvtB
ulrNsgsRw3OopMBbrVz+BQTbi4dZkNjdam9VyruOyoluIKxoKJiAN54m1dAJH4iSw8iHJWOlVDn5
Ep58pIHIVaIUZj281zk/Bp912dRDJl82GXSzyNCwaZS6szFIWG4vtJdXvNKkTcHLHODpOUnj8V/f
6cO0lQ69zV6Y8xdOges9aXPmzJ0gTRPm4f4YrxGcLBWvmspr7ENwb0+aiusy0oRjZphLrcLRROZR
onl+3C2WzPq5ogFMOPa3jBtmWBFhpDsHw+T6UCLzdwIFnCBna/mDAiRoqvlLGcVD4xu+EA4Fjrko
pjTgy+fKZCXKeZgVAWxJCUc5RXaGiXa7oyaZKLgiTjAH45QtkzOnfh4HRIVdc3qS98k+NRuGJCbJ
F7qwqYqEGCG2uMqSDohXUctr5zaiHUJ+YZ7iFeNyMT/P6fAlLdEUAhu7nA/ae78ZX7wV2yQV4iK1
flynd0QlFZwKCn/Xejt0Ovj5HxSx65X0FiEiyzM9ykVRoXCHjxJGnT9Znoww17U+BY3EVHcr2ye3
VpHNsYtNXU4a95NvQklfgY1AFp39WFqAV9JK1JH2OPH6pk83TfdDZ03OFVIbd2pqBahHxg3tlN5h
0nCClGy+dnfpJQDbSg4KpL2+2qgpsCw2qWV+5kNZwGG6VUFM2CI38kHGjxm9QCi06QfzRiYbmzg6
sDBHP/lTXptyJAvvAhHMLf1BAJayGz+ksAdjwxuvKkb8D4o/+UPG7MvCgaVPSTUfj2vQkZCGvpYE
hkJrUE1iU29zCKqXP6lIWL++w7JqUqYCmICEfhjfCjQpgTzRF8wwLLuHUBrGLl4r2hpcSlv6iuzZ
u0CuLZfTtBpqKm1bAdxvU4HgBVfIKQIUUymgl7oxahaVwk87plASD8ViApGvM904L30TcsnNIrOH
tnVw7jfNLgXo5/aToK7YMeQSFIy+ksT99MShwe73nqvhcRypcbO6zI3PPlHGDa2oWOHB0ptVQ40S
IZEA+lgtfhHn1OGJ+t+IuILZSrGcRfFYCsZP2D6Xx7PmIFBoPzCS2bi1aq4FJq3oe25rvhjo9WpS
hv6q/isvKweYKXYlnKpJ4QYQ2J77Amsj8tZ6aFGHTnLJwGMDYitfZW99hJ+4kdYcqXnHcDNyokUm
DdTL6twxl/VLHkPsBmA+f79bUglE2pgFBu6tB2rHiBrtx15Y3dNUB4baQY30ITS+QjBExFtVfVvw
m7E1f39jHBAm9YOrzN7PdlHb9zcAgN/LWzR1P+CMj/FFZF/gVivKltQpWsi2R1Fj88o9R1wel91H
w+gsVDfj0anJfaHuBTMGLZhUJmcdB+LDOyGLBt+DOiqfXp3bjKWCn2EJznOBcoLEK80uxWHmo9jk
e/ZIPOgKmKpv2yuCkcOOvOkRAFD0N/lLhJf1kaW+y4fvU4NePwY18LyvcCe+FgCRymh6qwo2/E1G
ji8lEX9qeDJWe4ArLA3ok+nhbKk34h+qDrY/S3HDrP2aTTn4n88/cmXEcE5jakvB15irt9qFkTI4
I4SNydQtL7Wb+LjdviUsufbpPorjoy4mGj88B8t/Ajc0pU0L/Qfxjeij2ZXWWvWXZc0VW+qgSdI7
h+Wk4IA/9L8lvFE92nxq1LHPy1ei7M/gKhwz9XyZCMQsOBpovUimNC2fIS9PgfayVTNHucZQaw5X
K3vvmMX0GSOXE/KJOywnw+6SVgGXHBVAnNi2Pg7uFeAZ25BSPhQG+Clfh87zL4W2cxu7i1w/LO8B
JHMFiOE0eM5SnEow2CIp6diRFvqIS2tsJwsLZ9LXxM/4RtFspVV+3koVuAYe7hfBryt0uVp1wVi5
X0OEFTfSeA7F0uKrCYoOyP3utD5QKnlD9kIJrywJ2cjncbk111IXY4diGbwUl1x7av/Sa1WLfqg2
vXvQZGKlE0cGOvSiw1iMLvllBasG9fJnKkkTGoM0JO6jlR4vu2pf88raF5U5bA06hof8kyA2wZLa
LC91h1vXT/6mdZND4WhYorEYMYDUhB6K1vj2K1Gxn17nuDeE5J05C1ELkN90X6mGPrtW0X5AXuVl
wJMIZ2iVhk/8vG5ulPjR9uuiTEz2//GIYcvzVXBzJtObf+xiTibBgtwGg0I+BRx+KqVcZJ27qQGi
5u1jE3zgeDEju3IYhiEd+G7wEHOTijLJ2+ZwIYlTi8jvqBy2BB/rAPW2JnjEAUZUX7l0PnN7/tqZ
EQr1yuRpvtuS8MOPfPqhO8PsIBozEbnus8HmVI3fJFXZjPLSqX/1w1jYTRzFnukiadCrEwwQn4Jj
6W5ul7Qq0OajFU3qc9Xy3jy9WYyr+WoQIgs0ar1NbrE5OB/uelq8QhXI3D93co87RDCP0mz2V9k4
ClmJK2T5zeOV+bUMEdn96Gpapi4BxeqxAsYrxqFr1QghI1Nz4ns8gl1Lg2dhtt9mbnTE+3qC5yhI
+wC+8c64ikDI3HDzh3W3LzM1EXCYC4IxRSLo3RvkFI5YUSWiLKhuFqgi06zGuvegasGejEmPNdm+
ygl5DmWvoB/RQKDlk7m7owObJsyCGoljD1gSioHGm51D65wzDK1fCuedS45jJ7+iNfm8gmtUchq+
B/T03zYCUZi1XV+kkbcpkWqkkttC83O2qE/72i3UUQ0uZ9j7zn0GwD7ZGkSDON1hBBQAxMTEMa5n
MN1u8hTYI+wzx7dL910pPmDgUsi3Re6VvMUp3GBKBXvLwgrs3uJwL1tsMEbnn0QmEXUsXzULUAcd
/AQqpP9gsi23dXe3YjjJBgpUI5SKeY5vdWdTadMwpO7FRGmAkTv7J2sh1H/4Kq3v1PJJYGw7Si28
fti+FCv+FU2ZHAipXJBK3zYLmRE3nqDaWoJ6WmtwW0z2gZ4SSRtXNZUOWbaEF+jpN9Ow8DTEvozF
T9OWlNdUSu6hn3Ay7zV2C6MyIa1fLM2H0cP7VO8EWvrPS8u2VuEMK1rokvz/4S7WfdYdnLLBTwFD
oxAhWVamzqbUpIEP9quNArz7cjE6XiPJMNnjqY6Rcsl3xOJp0K0/lNHIl+wL99P6kjifaJKIICCK
VPeGKLaZEhrGxGWgEjkALqBlqhb9pC8JyyDraVtAEk0yTljSBBi+RKYN295nlZ7SOWKYVpZIuwAU
XDd7clyYAiwmDLhre8YTtPVl7rqb6NhIUN3sZp6UYHOr3VoaTvhnRB4PLCUhOhs7KJJWYeflnXZu
xV4oQeWNSYKTli8blMbEsqUgybFdR3/6tyzPcRYpX7q+kVaEhzzcpNgg1B9ZPxMGQfUYOOhSyx0X
46YP1T6VhHMbqcBbFBWRKD3hmjM/G6JadTYhSOoKncB8xUUMLcgl8Enq4DZkYNOZ+M7EmMrgl+Yf
s6yqweAg+fEDdkTZP0bAdZSdZ9q1rx2ddzFSqpU+tiNJnCqDG/+2aQcR1eqq2P/cprwxlNg96abi
0idJ4KG0AN/sdnOqsDTaaw96UN06+QTrUVhcCbHGKm8/rSWcJRy0HR2LltjnO0JggvyMpKtymyIn
VMCdMwrCaj0ZzW1Bb+wqF23jqme9YJHxvKTa+D2J5Se+7+TkP1Nd8vjjxTWavnsEWowUePlTVkD4
CNSmc85zd8Z7OYcwW/UkehqEGtnyNAVLM/gcWem07vDuYcQ4ZgCj9hgPAiCXLA+IKZgtsn3aLQFH
fuHR3jAWhe+xJTykOV6ssQ2btHFSxsziMh7EDeI9c4ZvaC2JPnT+BGVUUas9ASLuz98lF7gqePw/
pZuiZTjDkIcSoTlinranpeqDTvcZ3JHnBgySFjg+HQJfvYJS2/0bnoFa8vlZAG2KIQH7zahXA8hV
tSyNBsxIo9c2rqJoOFZ2i6/pZbNm9xGn0gMXvqHF2hwKfi1oXv12KkOGwDHLeIsRAuXC8J2eNR9S
D8dLHHCQIaVfAKckuXo7WeAAuLFnUX2IKpnNQmRUsTaQQmQbOZXZzQiYexfRtIVgEQlpKqYhREmx
48KUn8kryvTijaIBtqHf1HlI/wdtoAQkTeKK3ePRUEbWZR+4U+DThbeJR8qXqzb3kHsCLJoBiY+E
/8xkOv6L3y9e0Gtt9osJOdWijqX6zUsZjViN8bShzyeaNDgIcc8d0uUa3ErngeSeNSCEx8IiLrUA
ADZ7urjZ3/vp7jKo8Y/NzlKkVSUZmkN7TUGG1/o4ufVoTxQPKBVmCsTN+DNhiIqihYIAH19HcvxE
iqHkoQ9oJz6gchvJCih0MPhsxbU05nAiIV1Eem2P6tIuYPbyqicKiq4ihYoYMVkofdoDSNnugx6j
qOrET1ur6oU2yvsgrxwZtgsIXP1K9bJn9JgXdbuOoHuJrOUHJEXJ5t7u+M43cuzKdtE6bQeSWoKP
1fBlvWOsXN6r7zr1tH3yUKOWUOHebWkL4euwy9SbX6b7NpQfNTWYh9/+aAxraA8/cfpUpy1c0osy
aTdhPxGAASzNI9wk+WM3QNVmGfSRjoOrYd+i0Xl+8tzTavXEJ7v/PzaqTTTkgDmWHrnGWX0CvNIv
hFDVF0OQtbCd16Dxm7E6cGedCYkQDPoaKO29U5p/g6oGL+e+TcjZt55NbPKFSpuGERHqg+vVVWX+
RPx9ks4x++hj4xKAfYA5NTiROSBCNTCpg+a3ros9X+iKLbkZnWxsmLVzcz4cwDRr4S1m53ag3/Ev
8KW5MNrhLmCg3j7C9vxiMPiERBrJHn+ll97/xMWlvxW+ULRfVe5KVheB5j7VDn4D0KA/DtTjpxnu
eAqvtl2rawzYtgBSXmclBIO6bQvXwqROSekJiaikRbcniwsa3NlMXzvQ2I3aFW3kioUw87P6ROk5
21dS6pzIpuDO44p26Wf+8Z+ZI1bMs3D+7AeMAPtU94CfXnnxvNDgR9Fst+P2zLgH6tXdjG4RmrOP
9AFzdCrCb2PvJWwGN3d6UXlXiXJbPFVqEgV2WapeWI8QagddNVzOzKvrDdJfuulGd4fJzGh7X2wP
oWz7CJzZEI4v+DuDxCGL9vy/aOv+rJEcOr8vRel24TYTjTXpwaBCE5wROUObdPzWT8SDbXLNGxTJ
pktjZRvBE2tEG05NCGgBZ1Zz47feWdtQTimcIvZDUixI8hjUpg7Ma9RDH36S43HOSduw5mPajY/Y
2Q9qlESnGyOaRACm8P9nZnxF2LIbWSfkD/bBGze2eXEiDpHP28FtnCnBhQviLX7ovbUiNHQJl4Gr
MjSYo41YLjGNso+v04KZzyR68tsTbxJU6TsgEDLwCOcPGW/QwQW/T+Y2aARps3i+ta49VxjLB6H4
yATNfLYFP0Mx5Qpp+jxMx4W7nPjgz6i60EnT2zErV2cvbcwoAssuDADZUwM4SL7KEuH56kfthO7u
t0loc6HG80EsSgc3wzAajtVYxj6qQeLz9EEGj7qkNygSf2My9RGA3ALShszGE62t2cZ9LImvryd+
ENACF2Ucj9EOCClnql3ZpCmNosA/cMm8/2HRzQ0kSgf4JQ8Uqu4meH7VgyljPhyndVUpRjB9G6aL
/LaPWdR7ykiwGeXRkJT+HjcK4pU7SNvlkK4akvQm2+yKKf63dOeD5j+4ad66IL9WxlwodwnD8Bmn
fAj/7SiLuqFYkvkaq32pS01SUVx6kqUy7CGhoRwaSxD0WRZhW4+kZYC1Mb9PiRkGxJjZbYFKvqcG
TkcPxXBahU7J9uziRxhQ6NRj0ZQ+wwthSklK/ABVoBasj/bN7bC8o6YKkQLm/An+/OYBER8H2uoH
J1CFDa4rs5P4a+BBKx3925vZWziXuGUfEpnzEUFij+FaBME9ZMpLQnTBcwm1RZfia7k/x7SDVNKf
w7Ok2tkUgw4J+JxI/098etDrItHZZeuet6Uur4eF2+qKvTUKqb9DZVONsU4GBHfHmMQiHotEpfxO
p1lv7O1Z+xsjRrnUsNf/8CL3XEsJTeXf0tSWUiVaBR5QAkygHBlf7K+4LnErXRTVw0wH9LI4MJr1
f5Z7PWbeNtx6YHbmsgHY/oBkMCRwNTf6Hxym88ZP4kqzy2CQYvmvQ9AhMLGoBrFvIJAuw2r/2ZcK
6ws6OB+X76+z6Y0AH1WOqVRm846c4lJe9dKgiAuKXwcxukuKDv/MNfuU5B4GMlL8fvOBSIxtNDXn
OsZPQT91BvTOCXK/Lc3KEkzhWRG5q9/vm0LkmBLNMDHL7oj8O+otgJpPwCUhTnrNHbkignrM8pU+
NbBl+2bj1rpmn9em+fr7JKfgqliV6SxCroeQIuoOEfAum8OX5EVwOfJn/lnBF1iJkZAnOmDjEg0o
KHmNh1mbTkOdOZIHVmcvZYoL8dytYTS8fBVUFmUSCwq9tRxRPPAiDCT+IQtAVcrHiGCItp/Jd2Yq
aIu3B7rJWcrLsuUOg3LoX04tZH6ZEGhxzBcbrRt/xZbfVt8DFPsANCBmRKsUxBsYJqVQDDH8DA/8
/6W553HUX4P+Rg/uxJIMVAXrqrrbhz8vBF9IzBgYJ4x4cx6kafYZXSEezl4cFDCsakYk9UjXM63K
prHLjrbGVRJp/AQ+SPJs7wEfuOr0ibbWt6WSgnD5nxgRtYiqADyb5n+1v20qGOzjQ7KRYXlqyvhW
O9oUWYJ2QXXavNu31g5zjvINzgpX6s/d/TI1UYAqeNQPoMYQr+pmZoNhwTAgxl7eM8tsZOSOteqn
6/Fm85FpeI68x03FftmRJiCL8MRP9BA2io8oqJOsdC4wpyrqL4qmJWlw3hxk6yT9pKNkvHi60SNC
xhCjDRpJ5GW2L07K/njIHETGsQOeezKTh2c0hET/38IFQYcpn1pHGu6uh9bOiAYjBMevR5E6pfD6
PdUvyRz0M4awzcw9OESPIH1lZ3aDXcgjzCOiVTFzTRKYuka5ClbcxM5rmzTSit/U/lJnbo9YiuHS
NSFwEJQs/+a/RfTlDZ+HNWj5cWb0umDdtGL0eqJB0CJGFLFUnCV6husaGJ8OE30lcuGuR60aXIyz
O7h6wHkNEuxlzb4U4BI7+7GUCsHDFNx0DnI+UhEaJzWxo2N4efu9nx3V9gWvbueTP7TDwtC4Wa+b
z13Wo11lfeR6vZw+DO3PkfbreDZWn+MCNhazdnevQJmFGJxmehj+MEAyjkKhpaKsqLQ8ByqSqXDV
jln+tlwjTnAXpTwVA/OpxiIN9ULX5SxsElbSvTGZSpH8KV8sp4dpX7DTFBIPAMiwBDXEQ4tsYgAM
4dG4WzERP9hNV6SWrJMkRtXunl+2lI91xqcStbUHQhEoDF51A49KKvE336nPNZdfdwsDJ20sSL14
9VdEsnOcjeA108blWjCQl1jSvsHNZwcac5xmsXY/l8/pGdV/RUAgTRhOijfrR6SVoTyY02jUpUBu
TdZvWwmiQN0ZD0gNQL7HrfTjzceZ8jJq5AlDD6dv8RA0FJ532aeMZrKzJrKD1GOyDds6qsdX0W6A
PsFDs0m21bYptnoe/CcGeYQ23px2J2nyvI5wRUQG/4FVbxLQJkjE2b7dI1XKrzPuAdWO3az5wMou
IcbPXGZWi0ox2X6peRa6Rn5v6wLBgmatVyYy5gXs49LhlwdyZHtLB67p/iZABkgbQIU+y5Ov+GZZ
wOfcDdoaI8xHmMr09mgLg+5iIrdlsqc/ebi+U93BpEdM36az+JPDcfBzM9nR652ax5jeRNyWgNzK
rK2nPFHUrzXV6c42aWChEpkIvLOlsdnIWRlLm0Cbq/b33zOLph+Mej5i1yJk1vpOLgike3pTVd3k
wak8/Q87Qx/LV4cPlr/tyO3pQIN8gNM8j5f4DOlHN00Js/lsyQsdw5gkqGix4l3ZAtArxvGxRftC
wH/hmCLLvFlZUKvDci1FFxlIygWY3wF+klDIosZsEW8XKDHU5nGEZ3PVX1MiYGzo+TuqGR5LTTrl
wIgAF8fWbmXj23VRXEa3Cg6nXixnho9wwYCaQKGjCMMhgL6tsYAqS0tNOibdLPIhjj0xwGZYUeyK
NMq659iR2QOTQVp5Bd3hW7qAmAPr2tdkKPaE7gtelnu93shHFaX12wl2hQy0OXYnFcvtdomlFUTK
eRUsWW52ujLdR6up9JzwUGvDde9aucBKi6C2trAcXZ0wQrmjDYskbYfbPU1bIhwLM1Sab/2BZ6jm
fJGgBo4SpXqasR7n31S/8dLR+zkkb5x89MnlI6rCKo31i9emLG5egmkMihE/XFiGJcVk6BVzgv+X
XwrnhlvwzSCZevnZI+JVG8xYUsdcUHcuYAVoQLtldE0ylrSZbk67Jeg6O+6115d5gQ+/6P0swHlc
cshpDESXVDRnV+x2Px0L4/7sZ8mDFpp2KqOHiGZMd7NSUI/PrhIwiVwEDTvYWi9vWNQKKMLsIw78
Y8cmBnlAkxXkIhLb+YvnJUcuc5tttH/By6oTJIEYI2gQquepG2xT0SQLExBjalyWxYjLJCmaXpv3
8r5JV3/+1rAJWszwZpGpq2VdmFlKxcbYP445CcE5ZU2HzQ97aOnmVnsYOeON0LwqU4FkHDtgMp0P
r+Gqy1vJpTJjswKyL1hHQd2sTMTShsbXEbooGL8OmH6JsEn63cacOBR9KGCjeU+6Jc0eOCf4xPzd
l20b/5EeqmE122JAYbCqZf9z61fiK5VPV8KxlhUIsIu3GMreo7WWK3v3HylkdjucUdaqTzipA1IL
90M0U9eWfGdmn2dX1HxDAMgcX9i/XnCkjBvYfckRmmiX6hmRyBe+clD/6r4VzEdugkb079L2UR7P
bUBj2VhPeMYETEQxOxtqFWbrE70VkhHK7Pk0ET+xs8IKpRf1r01F9qgoVrxa5725GeEqdKe29qMq
I4xrhk62poH/h7DQoo51FEJcYJ/4S72WH5Y1YxbsQVg0/7lpOqKv6clfc4oIvlbiwr8zs7Zg/z3p
RkBXN/R9BezFgwRZTW+6xBkOv0YpoVx09XEW7CMsTAZhbV7m5o0yme++N8g77znsURWCw40qJcf+
8cvSXWBhuXeshOzKhHFsZz2Mf0dw/dRDzy5Z0CSBQNrSBCdN78vLlYDumjPaJHU8AWHUjwNWfyXA
J0mA7VygRD9+dNxT0ON/6wFqv+9nS7wph79gzWGEpu4qDnPW+FUlahFvBae1oKfwDrXoGN7w95NU
ROFRoUxO1yngfW6dNtcmrrMGBvkYbef0WfQsCXDp8dgRenAsSG9VpnlIPmZb/deczxYDsi6nMrAo
Rwl0P3YRALQa2Y6X/FgD/D4Ea3bvFIkH1JvSR4ph2lNwpe0JuOiYEdNPsIlIABRuL/+2QG0GmYdd
Imf54hhexV0RJaAwZPteZedXxfaESA/4nKbPlkwLdPk29hG1oRrKTK60wS26lcFilrEnNG8Qq+oU
eOCggR+pIaKcDPAcis+izLSzKuy3uJ3AY9ak/CSZgvRS1qn9/wxV2A2HMmdNhD58QvpqSudKEZ6C
FMrQWdbG27x67zs/a/dMRcwoEJxD1DhxXGCq+If9zjJMTTjOe7VqKnv1ulMQggKtbRujfnBXOgkP
c1PHhya6VuIGyYGJC8R9WbEqYc3xNWvhN4jEtdzte1A/TogGqPt2+97e/L3wwPevXEsaCAeJdVRj
S5EnlvOWjWxzK8XuDFFPngebcqx0GIKMkDtuXEJ26ov5FtOHlSCYwTAPZAInsoUFVE/y19lR0dRf
G8CJVK0k1e+9QgyKiZHMPwX3bQDy5/ePVtOdDd74LX1dmD0ftYe0+/Q6gBw9uK6To1LpyUXjsf0+
axH1mRqQOgVhBmvN4zlhDTrOQgHwLUQWwX7wkfKqK+3joNF7ecSaDwRcAGr96XlRmRZufNwTHOKx
MVKihKny/2eiL1eFWDDJ22rXiODfopWOVAtnP1zy+jyGYDzKktULZ+Ss6cqNjj9AxJ/ckut7XD4A
6togMXXyRF5vpV/kdSF6lUnE0UDmjZ3/GYp7NjUNHgtrBPYSPb/q4EbdZfCustOIdUkMMC+S4ejU
CBsGnGVEv2ODaouD4JDZEDwlhPmOcdT6jTx3ganF1J5GD2flPnxmwvIWIGjPuL8m46snOfFScYA2
m2i6PQwwTPZz/H8h8MIPxQ24JOPWXRby/XKDuXt4KeyFZFtOpfanmpH86meqCBzrG2Aktw/ey+hS
wue289XaZsnKXfatGdab7PCECMldyLgYAWrMIQdsRLq5M/hSxfSSe84aHWyEEMaGaWX4+xmAYWnS
EogruqFpL33/+o/z8QKRPqZepcrKfaODJq2pWyOapEB03JXJ0kBZMsMu1HCmxOFXz+O3r3dsNF+X
73Cj602IoifibqD3H5vHPX3ksOlRGJG/ceQFCGi4yaHHxPpUY0XnvPSRYF9KRi6abYtSY6g1SxkL
ZJ9AAowuEPz7qVurq6G+WIIpCBuW1ZFqOf7Jyz3af/h79t1VsxScrN6aWrSB6/YGR1ZxM1RCQlX9
d3BAiv2YkCdTtVtg6v5CNVAJckBRvl+HI5wDfoVRCIKAONpths9RoSLf/ZWvAJhooJjK1EXBpWlQ
AXac2547lPEgUbAYGs8x2R2sEZ8D18PtrY4W1yUKbkyQRPhu4WvJkMu67HXaZ5gCqnGiz6s0xoZG
9bGnFyBeBVA2macuy7k6Tc0QKWrmoK28sETtHrn6BzHg4qkIG4fQ0CCyUDnkz/F0hYi3qMwKhwmP
I879MUFDXyFgkFzOVz+80RmKM7NwQx4CNCGLvYwooAUSRwgZhWObTG2z+/1Bo0bgxtmdo6x/Pu/d
GV2tXHzfMPyVfD6r690oK5RYsWPqCJWiqysLXKS41VVK+qULtD48HahGHa5m4H/ZW7d+eDnLhSNP
yuz1BFD9ZLme+wLRCKlxyUncRtn+oHlqdtujaA0vCkTgY6QTJp/PasXFzAcakCGsbjaO4PAS+sxr
pLsSBtuIC/2IAVAkCgbwdfQdQc/6pRNqWtpR0GfdfCtCxR3SurrzZKsIuo4UiGdyM7Eoxonf6ZzR
T+rOLOiPmhYsPH2n097MkJhQxJWzgHBIRPn1Xbnbd6ff5+iFB1Q/rdhwbdS6IxuQMmDDjTUkjofg
oFTlyxCNa+CKfbls5BI8UCE5JypgKJZrf816TgpPVN2j1Xl4jrmN6gTB2E+NWEBOEe0EuJCcYryS
sAm32Q4UKsLWgX+Ggp83CDqpDo1qThktfVh3pqz+D1lRh2BptumFtkdUyrJ9vG5KSii/xo/1XQ3b
YVzQgsGZ/q/nau/w4myshv+Zp5ahMxiDt1TlDDjTYQZsUNOKJmpHKHGRs9m2SQYy319w8B5VKDaP
WCZzTTwiojAJekZtMfeDd4OP/FN/1Yd7watBgPOnbJ7KDE8o1/3KOKXXsVpGzShfVNJKii8Gs/aF
onrK4MAKdFwew62ktp6iD4vUXo7rL/zDKAt+R6IuJ+awC7s+QWpHhE4c75qwo9xIUnplG23Tp7N7
c6fdb5hqshOzdbifo2eFmy6+mlK7ID7ZEU6IAbx0Qm3g8x+HcIOd6wb+lvchvg4kV11n0ACRCnWU
IN+bfJNU9k7iyqdzF23jrIcj5CJ4h2vnofW8jTHP0bnYpqHudKgtwxloPhk7F/gtVGRe3N6zXuAI
OXZls++Y/yC9ScAVHJfZYtZdNl+djHQCeuPJifr79EFWyjd1qnbrkDeqkSB1WYvv+FGnfnD86Ocm
jMxeQVZT9TZlaeFWMs5Dj6hik3Bb0ch1Pc+kNVqPsC20I8aZzKQI9lyeLZLqEG8iul4V1SKhB8A/
BwvqIhv0tkZwj9pYSDFD+/P3H/GdTLQlbPJbXYXibPB4T7yL62+2VAr9mrHzqB25PvDLnrDotEPb
CYBvzMm6xpc4la0ppMz0MC44zV75ET3G5793josiYwYTnZ92cPV0TD19+INfisU4TPpFG9h8j9RU
CFTu79jNlawfO2NemQjpZqIjSfN7YoEL1uVdO+6sAnUSlidsZkxwP6spPUYQ/SSgZPUlNxwbZgqK
kNh1MntWI2nfMjQsEksu6JTXc0sYeokqFTlwGcCxiamSd9KyzFbieTy3nZyrtWODBn47Ju0pSUUW
gma3bdKnZxEywwHdC5TirYMeuwY5nFBgTkthHNw8iwzwTSxsILF/KKxAtdhSJj31H7gTTViTxMib
7ScuSB5kIzbe2NVz0osD5E5FHQOdU3v4NqVYF7ElVELFWtaZY99bJOCLmyr4Vw20y4a/MPQUnd1J
qHI6vflUp05BrC5bkaVAqYTkg9fkpRmQKPe75ICxJzSCJq9FEkeFGu2H+0neKl1+9TRPe1MovP6T
BLSw5ceOvN9Gd/31n3SuKQeJUqUmfLUsSnNZBnyaCK4qIl5eoqkZevhgRI3UmWYUy+F2VfypHu0Q
nRyWvfWv0jkAc1ANU3w3LKD2CmUO/pxr8379w7SaD34rhZ2IJ8sRo3Vj1mzn2UXutHFOODqfuT0O
2cwP9p04MMUFzofv/zuDgOmI9l2+IIZyTLa3BO7ha1UCVbiI5DoB6I7Gmtf0xnjD07h0JYxxX6lo
z165AnRXzUclCv7uvm41xIeKJTR0O5LYepFT54EFAEgmNAjdgwn0eh7uLKm8og6J51LECAKQ8TSr
UbGoOS3GarnlIOKntsE/Zui10oP8KEesZj/UcjwCrRVXZHasIPJZ64RabGi4Ur+ac/yIkn3562Ip
sylyxAWLI4ijdO9mPFEHqD5qFT+j1JRg6R4b1Qo0p67jhddv5mYXP3KyAZ8HI6hK3qI/kxMN0gOg
1zLb8O28YfqbMJ2qLgDCTNsCvXH+knzugNgvjEtchqXHWBGHmcr8KUem4V9GdRLryAgRciACE0Yj
ntXH6ukPrrPczXVSrT2ylURKNOEn69U8Dpr7UkGd03O7ccoth/xC6tuOTwKcuKF3ehOUj5NBASDG
cpbhG7exz9gcsPyW1x/rkkGEbtbnsjbExbXkkNIsDf+mFcKYxTNG0YtcaigG4rks5BVTAKBKv16i
K6VMt2Vix1+O9MvS+1DWl1Vf6+P2UYYxGoi+Klm75Rdl3NibY4a3y7Rb1anQUt5JpdJ6UBbfH+Xz
ek2sZK3GIO6q5qq8H5eVA8nfPL0mU1hn+R3Wwmjbaucvu8SIQMmYqSl25a9IhutMDifAEDu0lfyi
HcK4dLkEhwV+v8JZDs+bGfkSedxL8XGyXR3rtcAYwvDxkmWRzGZG8OGwnLGZ1TL/G/mT3XwngelB
SjnAYNzJ2cQ3nkqJv4GdzHo7uBFN6BAgoDHGvHOx6InXaR50W+UYq6sR5wzVnjelWIQTgvm9l1Km
NfFUN7RhzFov9BkmWs2YJFXx2Seec2LNcB47v05Rmpq0sTUmLCcg8X52J5WkuX2cdq6ZJp2fK0bN
XgUdcdp1HiKfxlk6myUYR7r61I6W3gWHLrA0Onzd64+Lk6qiEIqGcPg/arrssXBSxVP8epDm5Uly
c4rXcrwVNDJaOyupwOS273nstSIoy6nGd93WCUXKdNPCLtreQSmJgSDBgzOqz88I5EppEosQR12Q
CrcddJ8ptQ6ixfN2yCDIRnD5foNi2QFECElSROf7WUHaR1o+QH+W1LZWq+YCbxMq8XPaRVurIYgU
0wFOlsCSblXGWH27L/Me4Z72aNwTdOhtS/XLoKkqg95azNVg+Z2s04qbic216rw7/TfWMpxDPduv
pWZBCcmqWzdOkYnyUqFZyPOgij0dnxbcLM3AENSleNXKLJj7Vg05h+gBD5zwg7VsVNy/KRLm7avd
Gxg4MjqXA1uZNG5Cg74xyl1B81ddDvNAiTYXmfjjXL9dAhSJg/EUqxridCL1+6qYsp05eO9hfUEN
qtnemJ8lklnZNr/Dp56hyRo7V9i930Q/y3GIzey+YB5QCSIPvNc6wurqQngdL/JVKJF3fmCFaMk+
l3TLc4t0YAlxRBvnQSu/V/bY0p5MoYmTvZBRuTEcp5FYcwKi9yqS7LdqIeUvgKbp9cAtDqEm4EJq
ErQ7zpgzYyMl9ocHeFuzuHdlczI0naNzP6zhk7A2aNdWlV6yuyP6YkawxDBnTqAg2MeoBrvYZtVt
PsA9Y8YRETJmrHT/UyP6BMFq9iuxlr1Wh6/6gIsvOMpnA/6EhJsT+y+Ek7+JJu2WhBLBrglVWPQY
c0Zothe5+m73fv2kucTCe5zr9t5F4LgFdcsE+SJvyae+umJjKUlyWp2Bw/EMaw8pe7U5TDJI+YUa
DjMmmPaXoZwtI1qwGhZ5T4nYpEVajd/hBSiGTrgCZPBu0ddL/cvTygkcoQsKQqjZRyfptkXO9W9t
tftsEmvn7H/5mDjjNAs61orkEI2Wqi0HjqCTowgBgLG5RV3C4ipykMpwUieFQ/gQEf2QrTX9ASmm
D8757v00laroK5fYQSBEJ7uo2gE/iOPraAEJeDwmnAoe1GccJ46hEUz2wUmsCmqlIED3qtIiv+qh
i22xyIi+CFVnI094DVJ5xOWDr0JjJrXS5Fyv3pSCadhH2RDYmHjzCPgjIPDKpFqoaGBpJDbx4mc3
THyv0r5PmAvI9ZzHkSXtnCVOeD0v/5eCwBvd7NqyoSV0F0UQO4gAyaDeiTBHrhUJSrmriiydO6bX
wN3UHPV6IMmKD8pAyYXBO4iEKDP0IHg4KSXYHKjcEe1uhNdZAj2OyYQe5+RyYfgqLl2M4Aupo1Qz
qVbY2gYxboKFlmNuE4yKwHdPFbGexKEvlo4vmfnMTMcmlEJiQADckPu8ToGF0Wq08ac0Dcj+2uQz
zE+i86zkNvkRLDzuj6T0hNEe67bPT7lDUMrrhVrlfVa6SOtTkgfE9Sg0C1cTbtwDASKvyBn0SVhq
DYRiK7dEaMcRUEKLtZjzV3G81evjFTY0uNz/rzs0+wJwNGDMnkSZVFybZwaGQY8U89iMCeASrJCP
g8cUkQ2SP1IxBG0B1ODlhthglo5Rua8HclTbWN2m5Ko8qj77jhjCwaJrdNdhDOFyv6wnQa2qsZIA
WQMhCFISI6fb8G3L3+/rSztOjGINxi9Pl8+syQNa0CWuFJyycZBMBRMx+/ui784rTUq8bBHUBUMI
fCNvncep69A0kkE8Frew8v3mR9og1g/urnB2ic1WtxyOkF87MwNGa+CW+EIXY3PVuUxUTO+0yify
b4MwjFsG4yAhk8UJTvS/LMSD9eDjU/WxQ6QsXh7kGn4qre6idJ2f/xzNhYxm09CXDLAB+BrdY5Ba
R91mH5KqTq4nMq+KxXxWfGoPfmmuuutV5kAvRkKQ1qNQ3KTciUc+XUFQTQ6HACFvPXcMKyhKYkyO
VNayLuji1nPQ4LoqVWxjZktYQG8oyFqRYyZ/km5676gzweeHbFfhbTennb3ppyYVQFHF6dPOUsFt
kxNbn5eEEaBI4iD82m7Ka8zpnPVEO2R765ZETkZbT1TuGtGlfpK2mIsWjksYI0kLfLrXKuqkCAOt
mAxNaHFU0s3G05+NdWs4VOvVj2XiY71W+T8DvHLoQuU8iRC5MDn0XrNQIA7S2xMBt/7IsroiDicl
eA8oqP23++1tzMiHx65QIeWQV0m1QnSbTLr+QWaRTSHmoQrSZXUY1d0XWqlk+Bg/mUgdrods2VuA
gFrYwDkmQ6HuQ/d5AihZxEKAzRog/KcJnrNJbLkms05AD2c4AztptkhYCxindAv2417UFGPTkKK6
EO56AN1vqzdYxVZgP/KN0uM0aH3Ejd8gKbKxPAFLnQuGVWvl3FkcWo8ErRIkWiG6QQ9p4sRrrq9P
kFOSCFsGtM2K3qum7E9FiWfWdZNdnXPxJ9KaNuLmiRLG/ltrEEOi4V9CjO7gTg1/x2/GyZscdwcd
eS6+0S3vHMi73z4LoSBwvDioRk7AKZNC21W7yx898Yln/GdQXHR9Df0/BJh3oKiYubSWDHHE5nFO
IP6zum+dwILrblFuSj9o9lP/SfM7eNhj8Ugbf134fnNmUkXnNU8b8KHJqcea2JD1lkU3VxvtEYGb
UK29GQZe4fCDW4g6+3aIFNknylkroBZA1B7y7rS3zYzBfoRHiC1ZS+RUBj+HzQyaOAcyDLYiVAhX
bDCP28D18L1yL7ZfiEhnRfBxuJLvtl0cjwuUtD+icLCraRSWkESuypraZ+oc2J98gKqK4hut/tN4
fnjSx0phfJ/O6+zov4Mu3vPp9FrtZ+WP1tRLJcUSIKs2bc0KO7SaLnEhMHh5wn0I9/5BzQwkKj6g
t71Dwc28zoX12NzzmWSw08DTzeGoCbOGMEzK+XnDq3+20PtjY5pdUarYTaAc2Yw2vNClV8VrqBow
fFAPtvBIm3w2NLxCfkIzBot7apiZNWHyBNDVVWxH05GzoY7NgVvGczp+aMZdxMRMtuDiSLPjF+JU
zJl+kWd9sNO9Pr+ukoKyj9lS2w+YNiEud0OOSyNG9HQJ0BwgXJ+tXRLE0RkP1D2UIcFdN6lk82N8
s7KApKfdfXDRlYPe7qEqbjzhkHddi/bz2oZKK8l5V+DrVeTLp40KSyPPX7dVbLP3JF0W3McojM9R
5WN1tNGz9lYEO34On5jApCKJJSycDVjUOs/wEeyBMrcrRm5g/jtskW7X2mOlJ76yr2McYfkqmCpx
r7ClUHveOBzC43L9f2I5D7dUQPAMpcwWgDWVkYiQbCembbD1cI9Yr3qroPwtEZchGxWYCCynZrWU
uYamyvFNlceGH/MzWs4kySzdLDya4xPtKRKgLODHAvvJlt2WmNfVPkteA9D3WD56mCkrIIUjhpE9
SqYMGoJAbKGuEnMm7ZOkzXHYFoYWOELDIc1JPR/NoYV0ZBwyOQfZOGjWrVcZZNZAv+553eFSUpGT
iel7M2/WWspdkFvtcq4SyR/KYtxqlFXcp4JrreLi6YV6aX/KAWZ++JFDeI5RhN68YX2p/7Y6Sx3V
agxs7ZZRKAPt+RZvLj+Ktpbw4qiLV0GaFCR6UQ2Nq01VjawzCuOveFE2oYvTRHW22uJE4oJ92SY9
8mz0O9yeWGARk3CpO5rErHF0lQ3sz8M0AIYkhSXOFoSdK90LQ0f/919z4aopZ1HUNhwuFqkSLoyK
Hk5wl6bVCRsMvrj3N+rQwXLZ/eGIYH3kv3ufYVVKxfjzY274fchllAJ2FIKhHTi3hSRcg6sYt0tN
CN/jDrH4Wfuv/3UG+hiIF2j/qtjrCmBtKAFDrsOy6X7qjXjs8P9yrG7bTtZycACFnv3Xbin2Z+dt
BHRUODCVPEwbZMYaHaKrmOu1HsyRU0PxvGLA9J1TF9kEkoB/BOrL9dV3/I2hFRobu1hQQy9oYBks
Ru9WWLMAMG4p6dnrGRJQ2Sqmo/ja9FwNk7QQ2UrVDUpU8hvRbzDNIE+L5qWJE8PxrDfRVDB0lqnf
ktv5+V5bLdLGfxkFM6OXd5sSmjEcFhlfyqwpoVB8FulT0ZF06oQ9tTAmfZfcIMFqJhTpZCwVc5Kh
D6Hp0M9GZTR2itQ6Qek93Ae/ox5qc85Z95GSUCgjvmItsrGq+ALYkwF69apQl5HgfQKjPF0+88jb
uViPKoYEk2jBjDxqWChDFt95w8Yc+qS8NKBsbI1dbwGimxDKLoTnQnnBHxId42zFPZK/4XNfoqdY
6sbN+HYjFxgicyIXtUnLjJx5DwkWXIybUUxsNnTnCJApXCn9a1goyPCu2jOucg3H5q3Falw+mcCV
I/rX/DOXkmZUKcR60EbNZKmKtEaRKURDmd1DGMilc8i3Hxi7QSU/WaGvoszbkpMJVQ01hmtdMk/1
idnp2iZHNuTs1xMCQcy6l0ZJ93ZU7xPJAkJLQeZzx78OPDm45apG7sJN89o9HZeQI+WDI2a1a94m
UWwZjdZaw0BALCkKfrjwhRwxFVHKTo8/Overyet9h4yKzt5FQD4Y3jkefa3X6+3S40liM0dXZ57e
RzSbJvGhLoXsIf88maF4MyJwv7wcEHjC6Qg68cSmum3R7Ez6Jp0CA+FG0NWxak2jbipx4wl3ym2B
wuOWeDEU8Yz0rDGxH/3wUshFm4QqY1LvOU5u+UKvvbVpBlTOzPyhMUKYpPQBDw9qz5UQOQEISHMF
gNyVYqfnPUcjoB76nEMHxxXVzaIITY72Bkm/pq/FOp0Jm9JtD9tX+LY6dMJj0Rc/Bv47uagwQCVD
/U+yh5IsmdAAaedaiOaaIDKEf/ybJciq8l3Ytya4OaVZIWz/O6iv9nRiiRQKjXsnpl75mxFgGw09
Spwyb55xy4HVCFcZI99Eb7xTVeDwstmz2slnQpQ5YINvL0GayzLv9bpNuc9qnJHnoBIk39TeQkEb
xoiPSuXO5IgwzrHrdTxuR29s7gxsajkvKRzhog8YObGskjCkHCOIjrYwd9hCikT8FOIc2iOVYDZB
oIVvYFgsDB8zwtZnUoG6E5hZWydQIo4X3lkYBSmt7hjFaEPGkwZw318KIqOKqM/9IYUQnHNnRgV2
4JGS3B9Gi0j+it4KWOx0GexbJQm0Rb6xwycaBKzn5NBhD0ZvoMB/rTumsQXWe7WGxh07CHs5HMAY
ojPDev74B8JBTq1pSBAbfWJLmWyyvxldD++gTXppjkuYWthzODHoAHKKifgRamf4eQVuFf9o4KWn
yOgBvyIGlmJ56Zr4EVMXH296Q8asHSoVlo0neUHK595YcEeH0YcWkQ1URmadMLfsP9ohjJPcuKt5
YTLFj4VcKQoDCDGyC/ZyiEoAPCinJIUPKz5/ZFZW82+3xM2jLN6lMIrtYHHV7P+hJJ+E7FecizMn
BKZefRbZg26JASQYCUbrgaQxnCfMnEwS8d2yjCTApQt6aAjWi11gYSZs5fAizXk2hziMy6elY0Jy
pH6scpmYjcrlZMfbTwjn08gdhuuCnzoSFSV++6bsMeX0P44+MsXgD2hQvb9DJS3oSEVEWQP+Cju7
t2QX3n2bNzj9h6rI9DZBiU6KOVBo0Z3zYThmH3kFHTiRa/WT7/6ykXvGNj1oJgiHPiXDwkaprDCU
dTFcf0pkW7WvUGwESlGPxX4YqnGGncbI9AOoI82EeZtKvCnJuL6ZDFWLi5UI4AfeylHkmIUzwh/1
qiBoTF35pCqUOrKUOJHk1aNQcErftunthTGGBtb4b6f+Y3EM7rZpduVR6RM7j2tq8noVXESuyINp
RmBnJEpz0sJe994DObdV7SJ2Y88ZSnjpFetK7TYG5rGCIW2s0q3+G9nsAWyErgu5/HHoVqeeUBFs
xmYAGBoe6SYhlzuUWtDkuqCPO9aHPE/czCCVlx5FHJ4G0iedAkP5tesS17YVWudyTCf05dI8Olin
PEMkslFoujh2KSodryNsfpJ9UYz/It5i1ZhS/b6ABPSvOnP1jmpgIrAPweqI8Penw5RSeLYRxHss
k2m3Y7vpfiranXHmzjugWBYIL4beJIRKwnPbvcm/qoV0TKPxuiGaDgib95WutJIIo+9S54HMG5q2
gPK/pVkoK/6iTcUJzNTOTEaIXwaqztf7qjZQ36N5XxbLgjmt94UR98pb52Zr5SgBkUwmZBfl1HF7
N+4Gc/gPaGc9pfK82N0EH+Zj+dmskNSNaw1m/1yX8zRbKGw8cjugempMSzthuTBSvGqyIBAO6gIZ
9u7EIeiWuN0bSvfZlQrz3sNaZjbBswS1jpSY8i6AaIMGV47pwTtu2bF+sk7sGQPVMLiOULHM17Jd
CtloHe3lgnYbMOq+qolPTm6U1jtQjECkvaIlx6+DIKg0BJsIrB8GFWT0sIhfavkisinV+Y1dK2PN
ZZeOg8ErepvVU1jaoBU2n6oXwNEL6XClYuU3/yElZi3csyYu8kXV7+IDbqcXVPnT5+DS9tBEISzW
Y2hOoopOJW+yQ3bar8YrZdiWROFcHBqf3Yq0W0NDcymWnLrLUq3WaCjU/Afh9has117fvJkfT4iv
urvuTuFGZH6We1QOznrlLAJX6pae3pFUzQb7NQURKejICmjQ6iZ4Xuva/XebkeBgw+cotRuoF8Gi
zNBF8UzlXoEtPPE9Z6nK+YfGwrzcVaJGmFVvGIob7wOLoxGISm51tnILdfd/teIGleJ9Ug9u7Yx6
3ShGADlQmu4El2ru+8MUqf6SwYfa7mqjlgyK58k1TZpLKir5To7MAHpH6nk4TxPdEgTnFwHPiihn
qFEZ8if1cbcYDXF2T6MzT5Ptsq7Tal+n42dXdnl/q3q772cvJ/3MsA5ailvbjJhffW/fDXP1gDpr
nuIv8X1Enmk+9lHGFLIM2G90K5fOfHv6m5gZ6pErJ2vX1a1JQSj/jTDEFbjjQldcif4w+P6dkF50
wZDNUAv4K/LBi8R7DM+OSZpkoY0uYkO8hgp8quBu8VYb8ocIoBSwfBmcnb/HhhkjbdW/UVFssIQO
u4e89wxMETFJdL85GUBm8htFBgvQH4BXzcQt1RUXxRoo2eZOqEbzuVn3uWwywYA/tDuXxIhmXTb+
KwxxYqh20Xg/e1Nyx3c0Afe1PoUF31zKB0dUx4prpIYdJnHm3hoBfwHejlxHG45ij+rPuedWfD0v
ed/15OXkmTBFyuf/sK4AfeNClYCieVR8UK7YOGVuCeesVAQLbzlBXBi1wJo5abs03+QsHpditosK
YLYGdiXJ18qZEueaLDvSk+yy18V3R+l4put7l8UFSKerK+7bNM/GTxKV/01ZoqrDrbJa7GeyjU86
liCIG7F7mUPI+jR1uqK6n0Y9b0xaQuDJVNO1ouVDqNQr377HTe7QQGdphqt7PfdtUbiQkrgtqWPt
suei08HO0304vEFipPoaoA+gmZuP0vLgYsKh4y5FZuQIIkqVprp3UPAMFa2Ouf9re1AokQ3FYYSs
hXZxmHa2noTHco5Cqt/zUDXpwgsyJ6cJaaMbhrYa7/hRHh+iMnbdgC8UWNAmNf1O2YfvzB7XQttC
jT8MxmfWoQhgbQIo4kdAArhI5gAWaU3/57g7BDirfosflmBltG8TC1G9MbXGfZ26T72Bg6auvWtQ
t8LNXIKUjjIScQn3wNa3mKHq7ooJ/AVKtY0rC0RXVcnYuxkzSVQSvHq+468aSgAKvV1r381XHulb
C1gvQH9j+oCqpRyZ69ba8HcjHZtZhyeSF2vo9JtBnhMvMkrO94qV8wCqhoJfbmEF/nUENnqcel9/
X/Pu9GMs/35QBEfo+bCxRLLpuUKJ1qO0Txjd8264cTwQZBObbqQHToxeUhVm3Jju8w0LSwYiCJRM
q8jd1RFNlJV28xJt5WCHOEO46he1cSPWSu91dGMKyOX4y9fDbrI9KiEU1zhAibGQl2XtUGto6U4Z
GOnMnx+xzSGNQ5AU10gJ7xiGgmYh8C5vDKMExjMVzSOuSLAIsdmprMvXmuTHz7gF9n9ehY0PHkVf
P4nQ/TG+NbJ6ZRqzwyqQLKk0+ZHIwJCS/CL8a0dQcOUKQmRvtWJ6L0UZ3V/srxxxwgbgrpPn2hh2
JNsADjuSByepkntu4AMxeqfP+HiX+X9mIzL1sLcpk73ZMc5w/AsqhN3crvqCB9AESowE+O6l+wq4
YRDSLPs2yYc7xxopUpx74QhzUO8wf4B0g+jezghkT/Ze4TnzW4d4WVAtTs31QKz+Kg3fh18cyhZf
oSSuTKaqkEfDdo4Uu6p8lu1IE781x3kiGZeYOvXXSAnusaJRNNE5zK72Ya+yDdcMnyrPUy4FZXa+
f5kt9Q23Vy3AMzX4k6geNrPQuI8aAmJ/UU7lvuIlTkMxWtuMsVuG6/ZkmHqT6TjM9ImhUJ+OsGg4
E/DFXimdU4WOHoTTsTdyV/jf/GC0bEpAtmQmcDwhYgD6H8AcGoplQq7Vw1t3kECZPyG9bzyXsvla
FiiM0pUTSI/1phV4Cc/GNTvfhN8Uv1EVRk4kD6hojxGzUCQf5NTFX+f/+chkUGIL1DVBf/RILfqt
u4Z93YfSR8dkXifSUiAUznYFBXL7LX2i84Sj3EASS3w6RMCdkmE8t4maPndN4z0JuKGoB+EzRbEw
aOGsOUVHqufPgu6Syes5MQ6CMWmtgMDZ0OYi/f+K72SsekpspubEU7ZVDVtilM1JoVQCCkIqXV7/
70HTWFmcuy7ywyiF96n+QW9kVhXBbNDbDJioIMvRRgpJWW1dWZ0ey0Jjka3I9ZIwTQAsawRqcc9F
cRI+6enXc3JZSF8KpRb7HpjdkhlIh8wtc21mV8XkG/n/UQu/ZJu7IoB2/lF2sbSaSseWiyDmF6Ne
TDWLQNhuiZ2kkQVzrRkjdUbLdZP0Mev/7vrL/9pQKdUmqiihSrgIUjP5DqMj3WLbsm/R10gRWQhI
ZdPrAKc95rHY9cBKIAEFHTlAOVsYomwELJvdgTIhsCdr4j3yAMfbTI5l9vJ1TTJFxmWaF8FA+xNR
1JBwN3xaxq2XjPEoY2y0YmykRatNPGIexgSOieBGZhe6xbxfbFUaMOB+LND48BWsq7aup+uxU0NG
y+HDBd0OoNFERUka6n2gf2wrxilojEUKIbG3AnGjlY4U2PZKhySJc7arfLyihAYzqiuyDvrlqKAT
vZEux8PJAZrQ7Zcv+A/tmw+MCRBy09CIG7k16Nm62TQWdzK1XXC67rd6sJ1AMdl+4dxgyTfiNHhp
j4ZT3DbSuJa+yKwOtPkoOtXHmxFfse1KTv5dFdqyiXcjKyR8WMMkvmefkSPCBqi5KgW1fUn8WtVv
2amTzIW3PMboRozQxy4lF0nXh4iogGullSxLGl9v7JOD942DURDetavvNz78K4BhCs4Fbwb9uTh3
eFaWSKfTO7Y/JrhVP20l/H1WQoLh+fRXMy38QJxoNXEC/rDGfYzcuBmk6jT46758EEfjvwXqGAvL
vTg4LPPTYyz7TwUESsgbZszafwEmSbEhG3l5s78VsgCjFeTnz6yWf5X2cJo+DAmSmhG1lCwFP/4R
iVb+X4da+Ka3tvkh22/smjtQ1+iWUY9mwQf49ZK5+S3LzYMR/Ph/cs3c+NuN/igH9/H+W8HeYw7b
19JCZTsuN5HO2S1wXX3PiiaCdENQvzH4Rb5Nv7VIKnonjTIqPtNgDHAV8/yPhJTIydgEhXF7Se9s
x2kg5ziH6jyytnX+Tm/Cyh3Qzt4xhMVQoIItaJuFBfgvs2/7dGKsURIcFuE9LurRoILMJv3Gt6nk
94J7z1IEAY2TkQlENjrV6TJHQ/D65++0JSFiIDmY3hqWs5FL2p2yzT1NvrMD4/mZ5uEdqGvjuFFy
MhM41GsdkeQpDKzNf2zy0N8W4PU2qV5mcTHKGKTx7xdi4RF48kFkcFbnv08G4Y+YxSA1Bsv90hpA
sBn6p5mvLu8+1nlOij2Oyqw+DX2cvgqEmRmRqwIcSdjM4Tcexw5SDoINyBT0F224PjMeiActHxUk
FR83n4tjYPsar6VZFLzeZHUnBAJPwtPFQBvAafiF+nVrtS2TAAMiEiRPD1mIc1ffVYEulvHeV8Lx
P/7v+aqF1yruBbWZEOx4z1sXmDjflWY8SVBMcdEV3IPn5Z4okoP1L28fA54hh0N6v2vwn0TBbTmL
ZzRwWoRRnKfSWujj9wlpyQ+pguWs5inkbMngrFvpr0FQZRba6nQkXhiYuYaxGBfSFtgtVWoZ2TdI
sU0gQrUOwqf3IkOBIYeZYkmOfimRGHG9s5NDBeq5UhYx6X1P9ZDbqWLqg1KPYZp0Ui1sqBJ+zAtu
UiRKWhDe9F1KMqZaebdEw0syUWuqT9AuFPMG68m/tkYO1v8mRP8PIBFTdN83BIqkhj6ORSg+N6AM
EaEKrYls9v52aZ13MwOLjocJjSefkX8zjlNb57+69wKRwFSSY0voKxUCeBT7FSsE//Vn0uGT0Bcd
U8gnJMHljp5gxF6MizTz8O5tb9XGPKC6DpH4dcsUWD0/rO4GQjf3wB734bYT6eSENkHS4Bu+UHyp
wd6b5AC7VNC+IrOBDkcUrvY8zoJ47Y+aR8u/uy06ZtYoFs7UylWl7pKN/Qjy4QJeCHhJnBJRBbvD
53fZonIHBN9myLnC1Txl8KBncVUGcJlH3Ys1+/KJvvYKlkUrR3XLmhOnnNxSJNT2cGI91Ovr0YTt
le9Y1x4VIZZcJp0PNuCbV0M7txB5FngFfoMRbBdtmz9diOEbQGfpuoE4JdcZ2e7fyisg6eVmDOie
Fp0NDAcr6pZq3hshE1EYYgonoULdpnNXPRsSxnpZ95zrI3QyIB+A5eLyHc56TYcTLdfGaNhqXiXn
31GMu9BKXa3QN4K/tGb3KY+4svzS8L21lOHSqO8yyQ3hDx5IoDu+EgexEc60Ad2qrLcRFlxYIsfw
rmoh1UzQQ5JbhdIHK7FHNO+upLBhUFBWEjoCMk07VmKPpCzCtiCVTQl8wnH0zFK9aPNSk1pwGu0t
wHGcNWnSVSgI3huZ0CenJveOt2OwtrguoEmsIiwyGBJ5pIZJ709hBSbnV8FtHFedJd2X2NqstaDb
4FYsMyqgg5i8DsdAGbMptQtJVUFsmneTz/7hPE8mK2eHaNESdfwKxsgt+reFb5e5X5LUOvR8XrDw
ETOcUPhUUC+4GDTTYcL+7JCHgi2xlUnrR2a+6P2gg3AaZw7Chni0C9XrhKMuTPP3sAyKhJ9xD5LP
VCL9BfXybV70ipRfukLR/9M1iiOFcucSZz9dub9rtHBhuTo5JAPCv34RpPN4/neDjq2en9pWytHB
XYr6d2VhpX8I07OB7rvWBCtoD9r+A2I2P4Sxjmn7OgYDgwIdEnCXgE9zyk+QZBZPxufecn+S0Cft
z6jHikOLKXJmwjxwh9ScHyh87CjRPwhd3mSgLIwKZCzssBjvkoA+HgSJRZZ6zqREMCrvUDuL3jih
RJ4yK4ona0rwXL03Gf473PTMRtfmz0NIGFQS14n1kI2JmzXpP2PxeEpbDnJPwasKrZZyigcNIXmk
Lg4WfIb41v9ymbbQgYwP2RjhFfjgTHtCF9Cro6eAk5/2S2I+4oeiooqDGfPzEV3P7qWUKFoZnDo2
s8uAQwmvF9sygLhFoXqii6oj8ycKiGU6XZyQQ6Emp8za7LmpDlUKsJfpiXc5TjGvo6/d53ED/0jd
Q+RR+WE9nNV25gBKfii9breIDoaRzN9a9Q6N8Kzuc0Hn9dNsmtrJGpYFSAW2p6Rs0LBnOpW/5ldc
pN9+nlShJzgIE91/EhMsyRSFtS4vL8FAyeIRksWQ/g4KG8NG71obz2KJiRpc1RRDf1c6+FVQYf1Y
Ki5Wu/LGAX4pBQbdK73weBAWkFBZmF71gUtwOWYtIICQ0XZ68rQ9ovVsqkHIWcpL21+P8mwWD6HX
LLCTA5eEpQJWK7/9NtL0xqoGdSBlz8vM8GiJxFzv+gKM+oyuB9zF+5HQwYN5fMFQKJ17ku8fB4SH
oOCif4QOXIUf/B5xWzPE6g4BiUyE0M8XTlC1FE+8Vng4oZPaWmqwGvoRLqUqVS2lhJPBXf0NsnLg
//VD0EGrIBPUAtTKnAhfqNC5wq0uz5Clq+Ug/c26nCXXJVR5PPEL/KySPiCDzkiS411EU4pnIiss
6Z9OlJGm63h6/rvpOXS6LCktzwfSbOu7Ie0JdyZgZY+l0sF4IKlLJqvlm2AqKHZ8qp96O4PTh888
5JOHYh/YFz3nWKlFtivLVlPbwQQ52Fc7PS6P6MLNENJTEdOB9K7SjrFaTYcRRvkma80Rh20Z3/YI
99Fa6kwde5m22TjehiW94iZtguTs7ZQB64z9M9yCOJEB9KnQIDA60TW53hpNluZZpQRDVVRuIIVf
aG4wILsI3CXXyEhrA0eCNTEhgHsP3GQ9HeGlSu80m24zX603mzJpQBWkzIMBBnu+gqI5oAjOKYHv
94OSovs72XwMjU4Umre9xDryS6aANrgA5SNYwzPeOImOaOdFmDef/C1wrFjlTGEubXpWnaah9jQd
kSmM0odgDkJWWdN5iD0/foo8/XnLHQA5cxU0RenoSC7ryfI6ReXo+zWS3ywb402VIfmjGHKMNeFL
anavk2XaH8K2qt1xcCYOHW7LQ/dUAMpOR04ne5qe6N2U0js6ot+MCQR3ZfdEZsaOUGAf++eVeZVm
U56/M1xsl5oZAJ0reHD4q8T4mDfp34GaVNc90FBSCzWaf4s618WIxST5y5mVYA8nSOE8cQGTO0cs
3QJbmDsQgkvlnaIaAxck8UKTIOiYIK6amqKhCfW0tRZ0vT2kCCdB20QX9hTTj6i2nfoDM2aUVc3s
VLk7DuWP1GMYlrMtLLgAc3OSgUl8ojAKgOyCiAGYdzX4VvNL89hylPPFpSU0bc0c+xXxkKlzj6y5
GTsCTTwaLZrjNASOXb49MLWxVOl+9LW7y6ksrHejvq5CkxZqa/xHpxvFik1VxLAPAZN+aTo0q3+P
FXgg3hvcicW5Zrfc1b56xVcdewu9us3f5XfGX1hzhUu8xPZM5/sEmuan12U760LJTzpEKAmYujx7
JatdwEbV90mOezVqjvRYXtbDkpyWHw7aI41+LEJf95uWMvXd5tj13O721Qr4viZ3G0qgnek3yGi3
K7tm+c+3u7XEi96H0ICuWQiB44G9i46vNvBNBa25/uh40hQXv5WsHm3xKoiTCYmGz7CW80w9p5fA
Tp5cEYMaeQZ+HJsIWEZj7Ti+zyOKpDDNbENlcLG+LSloT332MO8WDCKFhGUmtSv0vyWoDdr+enn4
4Xrp2SL3fQ7WqWFNbyO8K0R9tIDdxD9iXntb40b44OPi20Bb/Q6jNAgtCPDOX6dRmqurRepa1tSa
5itgqikLa0D4hrMxwVPvPFyUleRmh5tWyHXajZ2n4ikR7h5UKy8n/UYxX4cVEUSVYm11yaZbmhfx
FhM0XE/Hdw454FFBaOKDYMSpPwg39WO8gYjmddfer3P1SpIdnZid9IT2n+KTNh6zFQ7e1yMoqV+W
YJnmrDc+7Aagl0PSwz1IeNeIK6Y07c7AnieugjSHSzYtv3lEoXXvJPjfQjORq5ZZbkKZyD07mdGE
RZWkvlnAVOigiBmiZ/x1gYU07T/VSrArTlNkpBzJ+WuPXdrp/gfczjYTRdLtWkemvGCMKpO0qcuw
twwRCnovbWt1vHGGJle1gTV+PSNgAV+B4Ce7d6WCdMmVPEaaC+bzBV333c6M8XA9k5sBCM9WfNF6
RGNxm8QgV9j8ZFWvWam/pXb4rhtJo+lXnl6Kvoo8QhnhI6rxVv8C4LIs5ZlCrbyBO2qx+SoKSs6w
NqIERTUzZ6Z1/4zHCuh2Pj5D6bMKBrqHKeRba5gFvEpi5bHwAN+8sY7Uy/JCH186z1sMYRaveC0o
2m8GJYMooeczzwpyQDEjwczRXTNJzJkLEzYR7DbWTCVteeUU1sGjQVLrr1fGHucOGClkYxYskk1o
Mvwt/RL86Id6jkQakqAq027lU1HCsNjsu+VDBk8GORvNGSJOLPFnqvFwe6xYbIYsAZxdchKIlvJs
2vTdRpTjWcQ1ekG1k81Lpw2sFkxlqlWKQEc0n5t5EP0+OeqpRvg05ylUf5BC8Ah+PUCqsQP+AhVV
B3zE1AXuj3zsi4p69Kz/I3koCdpr8An34Jkx8Zn8HKPxF1Z4W1EMmfk0kWCQo29V57HLFE/ly+WO
TYFeJ3uTw3PwJMAqZaOA5LN00ks/CxDqTCoCumw+v+K/u9IrgwIYL6SEcl4QsUM8U2cIX4xsA8b4
PGtJZwVC3A4rmwuWkuPO82QHlQGRDGIyaPb4yJ94CsSwkURsAFx7xlxzbRXB5lf6Zx1J8iBFfbBn
raEjBsWS0xCGjrdnpOxZ9Z7BOyJkopi2I0fDTi6EdvtuP94rCWwwFrAFg5odBArGoz9gQ+OhfPkZ
WmlAUKQx047iacmNIQJru84JrnH4Xy8gO5yBm6OoZeKH+jyAINjvBqjunJ+x3ioqzRghyu/aIRVR
Ls9g/Ts7GVWVhZ5A5Kv8QsWctLGwoFFjp9/wSp5wwCHSYuY+j2NiBH8LWRu+Bq7ufxbwbesxlihE
yYUC4GcZS7Vx/m584693ml15Uij/E0FHdT5PS6yyDo9X603Qfc8+Jrh3JcwvvM6UsCYZBtZ6jHgS
2ZL68C5kljeb6gLaagOgV+U1r2q3c52IN/xZPdaA4HZMeszKd7rKo/salhB7BzERmXGEpsx3ZeQc
y2g5AfBSWoPw75L/nI0eMVMqbHVoE/hhqYkpddIY4SnW15cFf59fOFl0rMGL9jlGusrrcQcTdN+k
oXGh0F/CWPpSwAl365LPhcLSwzePbXzYFPiP/fIanuFBF/fYQR/bfZISNjdL97EzsmXWfatwPfux
aTmuT2tkRHXtx7EekN5EIlzGScjV4SyL3HrP4a0AP89y9hScbasbCCPhVacYo5k0edaZaKZr6rLG
ojhRhXfrnZYiTprM4RhDyD8Fo5rABk6A7Bh2lPJmE+cZ3BuY38PIoib2LVotm8Kn5e5lszLTLnSD
o7If+4EteUpizG8/jlUQ8YUPp6If33k51FK2c4NR7vNbpopCSAipnucFr8BsRnrs62WZb0EPin34
VcbvAwPqefUaR1QZ+DRlEHQ9YkQ+29LLxV/93Cro0QjOWbPfph34RvANbSkN4tavp/AJwZChvnI/
fIUPuRITPp7AEzNTwISG8wtciDEHLMw4KgBn9xdJdDc/QJitFKuEBYGrzRtXgohNWtOzHZUlfSo/
5Tzr47FN0ofmeo1WQDPtefMx0yPI4vWpgCXCtpZ7XN9+ArbYoyk5R0QfDi2g9YEkQwxkJRer7QmG
rZvddekdJUeqQwQG7CwbUzLbGcSiNJOOdi54HXWqQYs2efRfR/qT24eF7YUHUfuICncUUm+IaWyT
xKGGGZZafQXd9GJGRVQfyFNyHG1snr2YfOhtCU5hf1KdJX7nq9kyOP4/RzNHqquC5/7Sq6QBnPfv
PgJUwG5GEvwl+1q6vyb+WPcjYcH6QK3qGelWgEOd171giimS61ZX7D0gTDSHtARN7Yhsmb4ta9v+
K69xG60qijQaMaqbyvFGqIevZ21WMofTZuDmdvLse2ZUF0aHrEAvwb1NvNM50QnAWGOlHvxevxCN
hQ2Wd+jl0WoNiu886WztlBRcnla9eRBngfvhC33hQ+El3rB5DISr18PYUiYQOJNWlG4RGx65ChCg
/emzwcTocJThgR2WeAA6jo5rXpR6y8ovioYajF3Ct36uZwIFoC72Vs0LnAcOO9sFHl3EJdJzGy5A
WI3GOzHLS7F1JKUY3X6kKpgxO16AUTBjMO/3gf5ul/yr+qZxnFidWMv9/p4PHC04F3EiZWxpQ5fs
Gf8Hj/CXogySnVbjG4wYBgHs00oF2vapxfM1/ggZn8qoN2XSMcjVIMThNbmAas4zRKPKPLpH4Hm1
M2hSArIz7myqmuKuCFRaJ8PZLPTU0EPhV5rz1rfR2js99bQ/JbZmKPJDDbGTSRV9/zqhxSP21ivn
LC0AtXWkjgTQosQf8cEXLasiS51IaldW8ssySEzFWeizfHhKezdKLUd2V91xf34K3zJ+nyBi2ZMN
A4QFVYhq9mKymPqWAe4Flol8hZqzvU3eskNKgDC80+hn9htuzlo+sGrG92yXm41jA+fqGprJHnOY
NZWRoH1FZtcmFPrB4vlXlrGW6isjWJG81m04NzufHXLhiDVBJsukJqo1rAbXjzL390qZ4fvqZzBE
/xLsfD4mP6zHVxtscTeODgs01cfRC8DtPMw2en8/H6ij7riftKsPhtQt0SDp9B9MdhVbVRQEgvDW
0rc8kPW9lC4sdRTVLi5bz3HnjprZNwlvlCjL12u4CFxXR6+wvCTR0bKIQhR6ZXw6A33jencV7Xp7
HzUMhUNkKT0gT6vfiZnE5GFpEDq/ijvhzUoGoqbOwt4Gvl8O62HjtteqrTvp94ylqv1Olj8q6iML
pgtBKMl71Rk+wGhbLOoaDRTiG3a+Ql/SZX3o2GtEMiWQ76ccGqn2yqvDPEo6pQJBpoNTRn7EU75B
jwTnOGDVC1+D6QMm+YN4LEOSBGGJ+41/mLETsICGNGCXKoCG4HppEDQwLeHUQHNGdElAY5SKeLgT
6i/si7DXskG0R/eV+nQcU273QMtgWHZIF686LXKJHYK4G0rUlC0hx/+u9j9zqa8C8/nR9OPn62pb
jhCFOlS5Wt8NMUMaFFouWHLPp8AR1A/2X22keQUcRC6mo0ymAOp1aXtfqJC+6CBBUmczZIQ1Fi+k
ln4wq1QDwu2hB3diSGY1wHbtWFQe227kv/PRawBSW1G/AWRSm6bwSiudIbenRKVzj1R0f7ums593
vVp6kyiGBDN+Zayorobalb5aBWqtVpC8603clBED2OqU61ozSuHiGeZANaP89SWEk8d/YLYyHP1N
FkeL29P6PROmbdCRIKJSEc9LgGYlwa9S4A9j47EURf3fDFrS6kLhgeu9Ci4HsONYBlLQz9J3BFN/
DotqaE2gyDrIYdtQcEbaYJNZeN3rzHn8tBM1KRIhPsYwMZCTVWUHLcU/Cuo3Yfs0Q4eYQP1LWXXE
iLIy4CFZHvBsKveGcrsxO4wQY/AZmDwtrhR0z/IqR0VBBTr+SpmseMiM9td8MIk9LP43XzMdRI5i
gCmpWBE1Bd8U9WrYUB0Uv7TXhpRWSo6zSEWV0vVv9zQYqxOyIQZeCwyz9oAkiC0ggpxZBMggh1Fn
zjI7/HfUqmdwyejhfEyhDTlhiSlGpxpm6fl6lkyUm9lOloYkdGjADNy9GhJDK3Z/znv1khlpW8P9
orZhygY1ovHU72KbmAp/VsNckHFpgx+Bqccysx3U+F9Mpd5+BUKuYonpMAB3sbB6iEViwgIrWnKZ
8H5VKwNx/5yKkX+acGRopBBwbRoR70BOTNGsneKh6JHRIihUm0djizNV5MxIPkC9ZNBA/EPyeQ1/
r/58n1kHcMGdcnmAoGi6qLvTedtffbgkGFqUyq61oy9ACIqVeA03tTFofj/KnVN10vzA1q1Svcrp
OH5Gc6eDJrv7T55SVkzPfpumNsi12fYrqgpbeDXiq0gtlJ40Bt1ve7baF7atQu7RmGiPxA27KdC0
8yqu84rEo7eHEy6WVei93TVPWo3xwOnnbuy3WVtHzBq0czLlZ+CGBT2+Yyorp5Kw661BceSNGrDF
HEIjTC29ElhEqLPIZE3Np0StID270bpZZi4mGzE8MOKnNW4W5UMN65Q57s9ba3aG36iwg8KnVd4J
VpmBYCygG+znIfAUQ5WaX/ksCzM5VkMWZiLQ0FDh3cy/+UiDj5ZFIIRQiVDFCw8hVoSDQPlM57s5
ykyKYfKu76b7iaWnJd+sdQtlpUcOR4LdcinVs7Q/Dnf34EwHAatfBXV+D0CgeD3HlgYha6+TMH02
9MOOEtvvDw4dydbIlMiPj0Q93wNc8bC0hTg6lSxgYXUeRizH9DzrLR9N47unjnZm1mWgAT2YCJQ4
toMobl6TPb3JDcQGN+9Pdu0RgMgIVwefake5Q0JYFl1P9JRdsUGyyWLMSTtSaNrs1dtakNAlnvJp
hVg5dKnlhtWiGZjcZKKdgoTnBCapFvP2sQnXSQY1CgceI0a8UHdxuWMy5mPSA7QsfbXpZukCqoPn
3uToZuhIZmZ/NzqGhQbIWbD/nFVoYCopnUw1ifRi8uwh2/E422osQt5qCKBlP4LrNktX9qDdfhrN
CcgOYDWltBdh8AHfXmEok5i4fLDlJuTtWSUHdOoGvHxcxiQxTGYUDMYZ7TqCc6BXamILRrCYRDV5
IYgitTCUnn7Ln/iBBN5tmR2pUCjODJomY96rB+BRZI748Vvt4Ai9uTPtw5F2Ixh8IwrvhkMKVXKH
I6HgYfxLc88gTZGU19ecTlU4KFaIKij6/k+Pu/i/2CuHfw161Rrv6Nln2crO+x2P6rbiZY2fjR0g
In8nUtQkKf3NOX1kzPKbqFSO8s6V32pYWMlGjGmGLxOkkPlpIadnYRiMp927t/+Cf3xZILgD0NX4
J+kzTBrofqxGrojCSO6jVV4xHR9D3AZWk1GwxnnB4zmdzdb2z/eMwxXdS9M5vReIyc09lSoitJel
p0ChhpetGYVfyBbLsXxpVO6oe/wup00t5A05OdEYo7DSvKYKWErsSVeFuR1uEIbvLpS1fDVc1FRr
WrLcK1cBG+yzjfI8hGit4pOu7jGbb4OAVSIxJHPlXn1Bd7+E0iwomfD6KFO11v/r6z78gCto9XpZ
Quc0SCZHh5MLXgHROy3bTk9DCEmBKuX0lFY4Fd0kb8ojZ3OJDNDVvKOM4xbNpkNeEHjFSTR5pone
91oQ10ap9IUVXLfLqIuflBDUDQeL6uvdhNn6Yc+scI9c+2hDpal9z80YOEFhi9vnu/16b3ygVED6
iHhFJoKm7ABmDqv2l7r+AuUqXQ9haUms5rUwV59t063hkobfDwTn70sAsg86Qlnss23p5xTazPYM
FB3/mO7Kz2UiDgxCaBq95YOyaN7Td+pqQxA+yu2U+IKN3EYaEETjcn9j3bGYNZU7n/VARg/k9QFR
lxQk27BuMJifk4dGxwxnid9zgJN0b6IV2qHtJHBynRCLQOO+HZzfGoBC8UYzL925ozXSILOzKufQ
Fn1JQyeeW9kPSmppLOXHMGH8mIkRR4aR6Mk/uY8VdH/aaQVi/yFoMarc6Fjgc1fEyMUMmu9KrwGg
N2AddgGR+tSDkoISJVBXJnQIGFW6oXkffv1vNuyCSd3PhvDmpnXyARoFQ4KB6DDzesSeLYH85HYG
A6qojurSbOKPwSW37vzn0i/KO2LC7w82qLIGPv0EAx5FrjG8oUWrpMe4xlrUJCbBIawa4KkRBiVh
PMz9C1hvSzImh5EGCm1OTa73bROY8HuyshqgqifRsmtkw0V8WfilZWFLSL85bHWJaBy6JMuzHzqK
vL9yfQrM+wKN330/SO2QiiRBx9B3UStvoU5GZRIMpPvcj/MKoW2yjMAR9XmuX6wQP7LeYqYSNgIN
HPFnLT8LXZz0dQ8YcqrDMMT9Kp2gdSPKhjCGuiWdAanBBe3vViAZUUrnpbiJrxyqDTkTepLWXJ61
yJyXjFZGoCVO+TmOnyL25CooCLvv8FlS6s5OfGWIGGjtB2TRwjca9UJUZqQnJvhDFigEh4aOZ95f
4hvQE1Vz2Qe/GNhWqYUzY70mnoYkTIvR3fg/yR3WHsF56YxFNbWErTyASjT54U6Rp5JG8I7fCxBv
P2QXqBNIFUMEVSWA8RXQkrOzOo9aCGL4OYr2LwbfBtnMEVvQwlHuVM6HCoxT7IBuBLK5sQ48ScV2
DDYo1jDDlz5dAnakwoqxCU7KSh17UKZ9aNbIy+j6tnqRt0mno9YHiLcZgnZpTsyb6UFPH+GZY8ZY
WwDPGYj5Nt6bebYpmSs22JOfZ+5XCrjBtpksL4kCp7OFy8eIfDXBhESF64dAokbHoREyHzACyYpH
8D4hEk2HEIAh+CAbk+ghPXoYZRSlGrfy3avEPUFQezAl4JxSQmGop7TVpFD2Hx1m9L0fD7o2FIrH
MELCluKFXm3RKyac4QFnMh+MJRZroAY70WWsjK7hRfmfpJX0JQT52k2Jvl7eW/qLM3d/lX9/EbT5
+nznx47QzuFvywqkel0ACh6MWwduOYs4qE91JyO7GgRi0yXxGese9JY8kmBcJWFuTS9BQTe3ywGh
3DklSIl2jjhGM6tbS1bwm+KyxYgU3lptwuk4nhKH+o0fsOUSqF8Vd0HxO88RCL2SwRdI1yH7JfOW
ewmHi/hF4CqV2LpiqGIS2+L3/TAWasLWihh+AKtuTdysziKe/M4OL9EgqfhVPdHYYgGwgkNWSzEw
o4PMI9THNecQqBXt8DRANYbl1yqapcvf4ZMBHP0K7vuIMu22ok9pc61tsSSN2CrnJ32288uQaDV2
PCQdYbXRikBFsMCvQy1EBMb+1grG7XNXIFaCEbZY5jrOUbDZoJkY/TyWrPUrArUwp/GhYkBZUewg
VBQjvdDy42FCB0XqBY6UTPZCbrVgRx3vdRKUd+W5QehG7koZ+jFGNB0yr16E7nYGH0OqDfMtLeB2
g9WU2cFY9H+qoNoZLNU45geKOuF1BtCGpbzmppFN6urwsKtdHn2eWQBF/AjHcMHfqVnbMJoovLvJ
FqkGUObv1zti1/cykU7MRhnJbQlc2dfWQJdBemV3OweYFmMeWTkwMBn7yVYWOa3o5oDI+qxv9C6P
aFqwTCVDFB7UL/tZHziG2xsagnkeCTL6rRFZHiMXcvkLOut+hP4wO5v7RSuU101lrvqzEdgKhf2G
PHij7UwKtDJFly6iRgo92pXcASUi3bq/HQWFPz1Qv92gOpPyBwGdDGXjCL4Zn4DaYu+CoOlb9Ozk
+9DoRCnkx/om12MQ4jraQp9JI6llTteDdWAPfshoHr5T+ZF7QTtWt0omIOfZShXNRqfX6tbaWVSo
2R6u7zEVS93ImTp4EKqcf0f+/y3SFDNCtHXP2lHqn9LEN8XsddY5zF/7uFCOEnAxJv3iqP08+bxl
tTl8S5djFd7GvRUF2ussyfW1TfSYK953gK8pwqMDwZ/KSjcIyQs9+HbwLGLZkY29R1D+SZD0BPUO
tM5pDTZxspkft9SyjZ51bomus2ZZO3XY6KYYBGcpVs6y+5y7MNNWn9H0ja7RC4hHxHTeh4SqVkEN
K+WJJ407j8uNF69QFMbLSTUJybNj1rCNRHIzNACOplTNu56V3PerPCt/3w3Xyh+dgnWWu1ARVRMo
TU/KzhL1E7oYa2xJ39Ax3EKdtVrRiYfdRj4n9rSq9GD6qsipH9W97qP1p0XF0GA2uDZd1HGojryc
Ez//1pzhHKBz7PPNvBGwtGmZWpsllgp1V/Jl48rLEy8wdZv+8mL9K+Sb0qcfwK7zXY0+hEOjXf+6
sS/eCGEcl5TGDLQ8xztNpl4n4USSP0tjf2+WKkVuHIjxR5Z+OMb5eYfGXVFlczNZedcQ3GpJ1opu
ik/kHqZMDY13ISaCrK+Xu7877M84iQ9rz1hFT3RWVKj/m8LvDRR9tsD+RM/OuulCRCmp+XrlSr6I
5Lv90yMnt3lmLtGMDS0qoaXNzqGPjyboArWaT/Oa9+rTVdUe6yBTg5VVWmE1FHmlRtVcUsMGP5/E
EGCW55fMhtxoB26LzDRpv6aLV6eypghiUHd1JDDDSX7qoUz8fI2dSbQIF9eJ/ugIVT9YO4BaUD0o
Dbsy8BXGQ+nE4JneN8LHjXCuk1+cB58QH9Cv9HpHRjGYi9J377bdBTkEg58KBk5WTaHd4Q+Jjbmd
ODfdXe6eIW8ezwNj5wtdRfXZ58e5tBSZyI8t+ieD6GWTIyq55e81FP/1mXwINkDX99MTLm94a2Ux
/v7lJvxpe69QQSgD8NMK9v+arzg7CuxfcsKpVzL7TmkBALmbjJW79o0AB6MT+M1Da3tESbxxFXzb
v6BYCAaVhOLrFVdMESil4pO3m9lzZ5HJymndj5sTvfJdwXis5UBPobey08IhmpzuOQyfGpnqNxBG
5+7RLZrVCBcM2BofvJmPn2q8SDRNpp5ovHMRkpFbF1ZbRxIXMyJyQQF9igRO5BdCVf3Ym224Ps7v
p1EGUWyt1PF28fgTCVygeh6mOHEUHOx7zkkBgYkTgdNZuqm+6ylnuJJxyPjD74nsvVGq7vWCmp4U
Whrfa6YoRf0e4tC5yfgBEnCq93fFLgTwM41oAO80i2rnzWIkuE2/u28gAZ/Sl0iG/kBn3rceoTrI
eCK/EUQmJ1OCw6coyIGYKzOaGgKagUZHy1o4mFAxa60YHvt9Ytgq55XN20nqNx0MichkcqCxzTjR
CBXSwT3T55fMDRseldXeqCHiSUjI6+q+r/V3Poypsh7DX9AUEnOrbLrHfCM34HWd3GFaj23tRyxv
HMxs5fYt4hfKpAVXRd8R8JmbiJuupyTYUsbygTIwU2pUHYCMQFaKmon8oDczKASV7KvTJqgv8710
dSCtITcV9xEe+jH1EMgbEBBc7GB4pZzG5wgNHldU7SXSds3xAy5bOvxXwXXnEuXMklgVxhhDIEJO
5Ae9EyowglDsoUdUes7WVVeBIoIfCH6MG13eL2stSq9WmIm7+tLKiewF8g9oEAn1t0S3tPjeyGYA
4C8alRnMTls+LzL/lm5uzbjZq2Nj+s+gOI34123ya3oleMl6s1VMIIX3QdSPS3gd/b6aGWWmGE2D
8Ckyhk1bJiTZkQWH+UQNNGWcNROdou3xkDB0LUruO49nHn2O/CP+LeJB4QeZ3t5jTPC2QGEMiML/
YrL4acJ/+VYh7FEexAxFF27uVSXFgPVcC9ndoLJyZ9TV68u+OBHBOLAlpclRD91LDdCieDSfXj7w
z2yk+O8juByu+g+0hCrlLJtdPUkQK4noXkkrw8u7W9Rc0JEKN6yBcCd6o7svqIZDbjbihbTcrjSs
MGPeRHydk+kkJC9MuoCPp6kYRexKg8JfF0UauWTDTQywPpHdbI+XhRhimyRBx7tqsuEBBCs2zNxp
idj9iVOp7j0fjspzkF4zEWcTP7cfvm5tSYBpDox3ozzH5MZLhDhgujD8TMAxXDwgS8/f3xKuJm6i
h+bf0TKXVFMbEgxTrdyVTvWy/bPOv18Gnf3hESew9oz9Wu3N/DGOhhFQ7O4yYWt5LC1aTRvfBJYI
s7USaYP4Imq8BaKgI5Z6w9E+xlmSj86GXl47CqV/BokfUf8s8THnlnqynqa1Dz5l2ksdJGdQHVSz
SeFon34Y4Zk96ZKuW/TFeeouHyBZAKXfRHhr4CMqm2GxfOERElEnDAifj2vVFnJc/KrXTN8ReahH
/vHtgaj/2pUIlgxsVSdKF7W7Ax4NKrVpUvRpXUe7KPedZ3R7KWvPjeBnXYUqcKewPiBsOb3PjhmI
UYuGRoCq/2Z4IFe3HFiub/zY2ZCBLA8bKL+bonawvRnSNh8UrldAQG6ZCJPENySdMy4u3WhG6Htc
bOQc7veX9zPY6hUPPL5Fyt/p9aaKkGnwci2TC79LqwEGyVIcME7Y3nlFw/vqcJ44aXIapHA+CRMl
OgqrBDi/kpTJs/F6r4TFgI0FS6J98cqF2ouEZK2ojzjNmdSGQTOe1X1Ly0IxCJPDcL6JPqamfJ9i
ChYOMgZ8BGYX/mnyGTYkrx5Uj8rgTaYXEDoB5W0N11S4OR7GlS+W40Lbg2CqJzbuJ3JbzBVZ064K
ZJnNdjgLidSe2QgrVxItgVhNxAsO8lW37fbd3m5GH31TLy2vukV1vr6c+VqRlhc4bS8fCVYW0IG6
sBhajesptCTutDZTcM7hlxsyP9mFF+UNRooAxAlpcturXb/iNfmjGyMZ80wv0w5yhXQvsDegsmkO
C67Yf15AU51/xlxOsd2ZK1Ffhow4+zJQFe1UWH4WWZt8Am6s2h8VIEJqoo3tJHe+bt5U5xBPOvz6
/9fARfIoX5jlF19AWgImx5DvFpHVFhJNs9ellJlMGU3828VOdk8++2cf/dgp33vFO4oEA4vOGeVJ
1+1LUk5Z6vwwk66vgQDTdWGk2I9ktk0Fquxv4YVxAaCOMlrLTmL6gKf8Os8PjbtPDAAMwkM/q4Cv
/qXWiWb2CAYW4t9hYxIixgC6kilUQXPEScpqIP1nQDKjhE9f6X0f1PFvAuECNd5BVrlVxJ7eN+/Z
R5t0BZrzcoiy/lZ2ZDWOaIx+JoVXxC7Vyx/bpbJ+57X4XH7Do2DaBIVvbuac/1ecW4sLt14rgbqY
q1cXq6hE6/i4LDEqjXhyMVqACUQUAEgC9TqBJow6QIlINXfU4XCQk65WxMiPtCJj4uKRd9i2Oxd3
Yko+QRfq5WKFQ+A8yIaWG42ZA3IQ2T7iKmJW12YQa5YSnwgoZH7ycjjtAXtdIqFf6nR7kGI2mro4
LyyL3ljQezntmTNHEIQJGzG25+u1JVleE76LtDPWyYyV7RjeEeXKB1N7nmU3JbmiC9KaWPUSwbdi
XCIYdIC9lHQyuAJm+uRAVQLUbnNeSDS//TgfTUdVvJrZRXp9yhkqk0B35oiIMKMveqZ9PU0odzbr
wq6ca3+TymDHORusNLWmpNaVmjyxol1F9OWTUiv6pzRU6LR5tLcKLLCpIYsq1I7+JgV4t8Cb+2RP
YwG6jq60MjLcL/IiVD6giZSMsIlW0nBvrHtRZfJyxPUi9d+EUaG+QvxV3YNbne8bFZiv539EyymM
faWK7JxxI8B9/Dp+s8N7OuX/iHSVxVIWU0fthETq0kJz+ou8HbZN1ZOHcynA8ZDIsyYLRTuSDDiM
TDM7jXPz3/xwaX6DxMyQIX+szcIEvcFTSCwAQOyBTdzihfVm19WgvD6d9djH2nDjNI9eMBWMR13W
2iXL2hjOLXDbjr3nw7JtQ4XH3oMnWU8Umh7mSjATe+pDkdVslhq87eQB+BBPKZkAH5b8gnOZQsqM
fjGXC49EjGQzOyl07eKQo2WMyopv+8i0KA7VXIK1W/lEieRy4K3IjdzeQCbsK+dRYOjpl/c8LqnQ
Ge3DSBP7dYGtzCFEb9B+M9IbBX9QxnDPmwVP8YFOf/YRF52kz3bX+i/dNcwvOiEeBsn3qT3VzzcC
nF5coYPymtzFj6XGgmBm2p1jflINxYAnFZR1psCKrPulFLipyS8SeUE2Ve8a/nb7xw21puwC/Ldi
RB1kHHsAROb6SZLIXx2yTT8CuJFuExJjWP1mPDsj6oBD1953Yu0abokF+s/i6XX+wL23kcI7HGFg
2mednx02xJiF4+nTdVqgZjhGkldsQbrTnB4lpWsijIuEzy0oQvVFB4VGECEUrvr337yFPeVjOcjE
oQ2g14wZP/Lba6TIy7updXuiJE3rHivwm3qO6ex0T2hS7yj1/L/LZceTMlzWd7uvfSPC8R0PiXc+
uFXx0r9TsG+sYpd6h+VbufYNokdEQkPpRzFba1ltZY0x0KfYk6umTb2GfKlI2SrYYEOxGrqGBZ8M
MOFP5c9UsURvuqwwrgWzfPac/7xcO617rrwb9FoMWb/b8UgvJ/vY7cXH3pogsHR+LfHWMnEdYmPw
CFX5WI5SMU6iGTmf1B2G2VY9w554JXqxvu/pu4hn6BmC3X5pY24QiRSEqdr2NMXmb1f44yYvNoKe
td1AM1+4kMsD29gps44oVkAgn1aajftKzwdC9tCA1AAMrth9rW9FibV8hnyBKliOBeNSSYC7eEcP
kvI7zKcfFKGyU1nKhBk/V1v2hxgTrBXVHT7qkaoIJq1OrBMtdbg6oRLHBaRJl4i2aSf6EpUs3ZJV
JC4X1D1qVh6XaKi1DK2hbNZIsFGJ4W4blPiBX6wsEsMDcS5lvRRbOrbT1nWH8UlcVHE1rNHJucE7
i/I2HGg+UHDdHqoMwJgsmQt/lZ7KoHDOr7Y4mbBx10HQumv0sGFbbLDaLj3rDI8nvyqyrPfDsOrT
qlihCdeJbSmggaVvi450LpKy4EpROisebOl3x8sjnH145Ld1iCFv8eXAhlzTs82h2o1oD4VhCejF
GEA9U/VjPUFP4Sp9YXY3wweyIWUSIgenGfzKyYDpIPmbD1llVcHiOzkIqMe9xDopQwrKTUTr/c2l
gpBHdSwu2wkHG20CyAHZ0TkgT4Bpbk88zGv+YcQV15PlHRBLHuUdf69uVoond7mlmGiZzlFjgT8b
Oc9nUr1BhiFndq02VMyQfTpjZxOZ/+iFP3Nkb3D9pRnEVfXLUbitHZhmymETJ50dJXRUiwxzpXtw
OU+g9EubrT1Yr43aeGAF2/Z92HLgPJNTd3bVEv/USm1V6Kch76mqGYD9OGh5NQulQYHmckrTlAfq
IV1NNiizLLI0kNv0vZnhxBjr05B5C32taoHX/ordg+BZ77Elb3uhzvlcx7isvJoWvFOuTApirahr
NbHYOF3tAHLlvUeEqP5YxUIMLUiFS+kVpOzMnhx81o+4lr5Vfhl73ItQpfNPCaW55ob6CTQyvlGK
ZWO3BZLa3u3tftOkzP5+/u6WpnkQu+6XE6PQhg71peStVgmSTfOAnz7I10QH2AFF+DSNoXmuREYe
oKzR+J2gfERvalz+g/CUrSKdvOXD+YYwicdZA1ZNxMU1INL0uK20BUiHSPxXPq9FTapU2ofrpsTT
YLP5g7k0JemXGoNy/GQrMbJ4+Iircsv8iaVyvwcqQV6ruE4MoUlgUeKi/tVEiyRLECVzL/GWp1Sx
R6CoahS4jgf4ydtG3fM4JGU36dcmI+2297BHOMe+jfDep+wE5tzaHwKD5qlnyzkpQfZeVKERolZ7
U06oVRLZJPfc3wNs8KOe2cIH+r2UVroWIe5tKWYRFfJCRyvPLg2PCF+9LGF+YTFDgZHKdlTLQhhT
TunL+Mjr2DjK5AsBbdfI7bZ6ifYAhDsdN0KDGa0ra428oCcjB/eMIkhhBpsloBsY/G699opb6t9p
sK7FMO4oOBw4r2iadP+b45LXIDJbKjhZkzVJzEKswhLj2jmerHxaFR9WmGLEXkpCgVqoEBYDts5A
F+N8jCkWEwi0lN5QWndC15iZFNLPgH31iZEkfDPeeHfjNIvNgejbk16VoPDK+3hkyRfklPA9kF5X
cBSJf/lLDlfof5/uXg94FxpI2PrvX58dpwFKRjzoyQoU9DattmuLyioV5s0arHtzGxzNEWdNB1Mr
reCc/Gk6oddq0k4wrQGfpP5zNeE53UiCYdi3jpl2+L5v0aqr373b9/4OePAOKeCmYbsa/3OOaxuR
LiIzbJvRTfzMixPWofZqA5QsJrUAwL9Ab+Ubg00fTjmroyFqP8oMnVLXbodnFJNflSMMvaRPGD7+
lC8KeqiqsaF01z989x9Rfx+IEsfRoWr/D30wMmWxYxZF2whwMUzwJwwbiOtgsVar4z/5FphAInW+
YLLxkrtsENAS7BIFo6rjm0uEyrSd/U8lDlg7jWNntllnaz+qpzerdp//ZERFxSkh0txuhTg1DtVQ
V4wjPABCzmwEwPnzm34x0wJsXlW96P5PNnyW3sAVFkvq6Q8tk/nkNXPsTyw9nHs47Qfjdwb+UoiR
cfe2PRyK5nZ8YZkP5R0kZqU4gatt5aeLQRvzxm3Ln8DocjUVdYMhPSd/O+zfGtnWXdZw9ICzIOD3
apJhKCfSdAnGnYfCR4ceR8e43F+xhauUkjFofdvog0sB5flyiMaaUNTzXceFNd98FKVQcxKE+Uwu
LNNLCMtS4eHLcIJ7SNO6WXGJ1qM674i1kx2uZ0NTB4bCT+JN9gR4kcS0w+aKyt7l7XFQE7R8TC+u
V2ZhM86P6H0b6A1/aOAVtfaByBlYusQQ6ZQ6beALuNOgRYIHEyvyEJcr/9vR5NX4P4GrAJIkrJ8U
f2alSvklwWBqoLKJtVqs7n8Jocm6yDiiSPuP/Qv/9bPA7qtMKNSCiyVKZtLDccxq7CzppPtKW4CL
kyYo1XVREoOrZpFqqMzZE5XgsQcarmAF9jnlr55FUJk9nLUxwjXecPwNz3Dxekt3i3nMW6ADct/6
F44wnrKyztTEpBopyTjkWyyAQfOrXCV9G/bnxB/2F6KEUQaRkm62VGoxONmSV+/kTIbPbTPCr5KN
0N7pJIUSmXdZZl+Qx+0yClDvXxuDuA0fHwb3Bchuc0xaNoKevhp5Th8QyypCMiSbHqzqc31rqZA8
eihV7WHttSg9hRCZmETEq/1KvZCuwiMsIreh5eUeX3EFCWhahaxJwP/dxK77Ti9deTFJnlgOd8oS
sUiHlgwGc9x2m15HPexuKScyw6yRsTQRuRBAUg2hgmaBnOKi0UKLeE0HupmlucaaXd0SE2KNQIQN
m8WYFLkoZtBzQNRXtS2ok37qHO91Cxe/Satnx9zdkGZOzxA4ljT8aunxMuwLiTlyzUymr4JnRpDX
MIzr0jP2W2t0MP8qZatlQxyjHiioawWIGfY3LApErvPy9xBw6MqJALVOY9cklxMwcrZwAXZvc3oM
H5LYmJOIKmErdYfbg9lHHK8wg+u/YxLjsDuaBuWvpzK+kFMmfwf/a3OVG8OzwnLl07NoaWlkWCDs
PPfChOflaC/d12oStMqXzcpoJ2QmeK53Ozr5brgrlG2VqGFkFbTYuUz7+bvS1n/Htw5x7F3HgwlV
3xWy7z3DtJEeBMw/mwVXs22UmHjzZM8Eqsxdv9TqmTyxfzjznPo4WYF9TovmJE6KKVrtPWJj+3qP
i5dNoElXXCpQOwIwUx7WECxNmPX/WDAwYWfNpGj7Ys9CytO8ZkvJvwMJ53HImbov0+he0/iR8A13
w0/1F8xcCtq89EiZvY3MoGAR28UkezAeFhmqCUu6ephy97g+GR+x27rSOoF07Yw5LS4u4/cBcuYz
oHq/tRdFZ09SOWjc33GHIbfyIqqezV6vaL2x37WSDZN5b1nVmY9s6eUsj3ARIjsuefLFYM6AHPYy
8NyK6BQVx/BHWDfUalZDZHYha90waSCYWKIHlWAMba59YJTd2fRDANy5zqH0pnQmMo/4pFIS6Lyw
/RjouRtQwkfwx//6L0o3hiH1JuKr7UV0g5qUZ57HqE/5/b2nuCTwBpyRNB/Yt3/Bq+fsOSqxYxyH
9T4lUNiVf/XlgVxpWVMMgO6y1fuo5jnLHyA1liDo4gdrNF1xdlI6aSkuqZLGbohtlS3DIr6VTMWz
5AAPpK78LPZnZMiyLY7tA3TfKvZ8w4227oKkERmPUZB9jckXdPs1ozBBUXyPhMkh2URDeDqWciVM
WBxxpl83JZoSzzdY+x8JvrFgiPcrPOt2LFIxk5L7n9520W8/e81JvsKL7jia9/6L5DKsFXMAgQr8
etIqFnW0zmci/s/kCcmDZXtLkpcStSmmBgMsmhgJtWv83eZydNmojk2Y/oHFtyofsu4srAleI4ZL
8ZsZ+DbN0QlprIk7b1z7pnNFeZBdOg4HHwTieXIj55Mtfd8swQquuEr2PG0rcT0hj2CI3ikXEaON
EWCeSlr/byMzbV5ygd3/Hzx2werRGNNRnQhmTDvANr/7l2Dyya3oC/76anB01dq0/QsgSrNedYQx
HTlrT931tyZn4cgIMnf6k1TAHHbCPiw8jTlcrPYa2ASv2WrSH8uoT1yJOFDRa5QRMEYBeKL0VXi0
Jl0D0XBMpiheEdeN+aZDSoroYLG31n7KZ7k+kxAMEvpNqaSlKnyVyoQrWH90CEakjCv6TZZEZH9p
YRCYD1bSwMwadIxSl6tIUD41zsx8qpUHR+T1HvgIsdM/ajw8czrwXWlmrkp36BKgqNlJ8AoArHN2
I3B1XW9WiV7G5xL3CNIBp4WWj2FCJDtx5NLxhsUKjesHP9wRZbPVcte0tRpZSESUchpuLSUX3wA4
u3LpTlf1gWijQKF57wTr8RPXOxr1KY3Oz60tgFIaU277dwobQyZCnCOk/NKzp6OCOzvbozeiD9+i
v/OKu2znu8R6oMCkp8cQQxxHknGi0hziaNkQsIDfZ7FHAI/5Vm82IYfdlxtx97mu9g296wPyGNoe
9XN/2XrpXQmWtJya5Ojtl9Tvi5uoElNDrLQPwE9My3d4sxvWdhSpgdg2d2AOvjJSaMRl7lV9uhRi
+fiwBu3xwzPTn/J8b8bpEiqxJoj/KB3Q/QwhVyy97opP1QZKA5Bhespd74PXn9RAzY7cNss1A3Ca
7y1SJKvJZPBH+Cd8Ygq+N7sAByVPLifSJbAKVV3HpmQvW7FH5yMRksI8jSY3C7fdt0/OmzTITa6Z
ot/uAw9/Lp0SIPA7TM+/ar+0QPESeKGHLWNy1DpA1eZg9OIRCILjz4LO3UROTSJSp+Xn4hPcZn2e
O0ROOsGlwWsKmIklRdR4hVk7j549fOvAbF6JJJLjM/5SCJ900JmNm7ps201oS/nOCEvQJfiCCw/3
sDB8l3fUPZSWtEuJbFz6g2qCLUmauJFhBHhXxNeHWU0z54an8xPSIY8+ti+bgymhG7o1z4ehBC4B
C9ttb/XQMpBZmRcA2p4QoAQSWVZ9yt0Ygn499ckONSB5RfhalZ1O1ieISLYXSxzWkTKXX9RMXZfj
aXdXCUdIsQGxVHDKlh6rtELjz7XtgQ0Mie271a2qdptd3TpFdwbdh/lGlbKNu3jEq117meJpn4b1
8uSDe+GfYMHmfQylE5w3mBf57FJKdc7Qf0no5eTPMxhNDODT5XRrz7HDBQb7GIxJZq6zvoUqA3bJ
P75VU8ApkdEfm/ugjSh8VZTlHUu77lkOZ++iFAEh+6F1cj9eo48bT79jkV/mr60AWDSEla0GRZOG
D3TkzEBmVyGkwPxE1vv7apB0aicl45efm6Xx8I9Uk/bhp+hLr9p5YlN25/l0dGCTvSsGI0uA0nok
odJZEyvrMSh7ofcPZ2u/SNvwJxQXt06tLf5ivnQovirfdv9mW43tMs/035EgIPL+n819jSoJc99y
WE7iWlM1PtD9Htvrr0qewD14pQZ5CY99gERPBWjpTfoxNhdPxrgXRoaOaNk2rKCM2tMq05UcVWjz
9utXETvKuLxfKYAODMkuJLCyaJunH4lI3pMeN9N+yXT4bB7zEYSNQKlYVs4bm+9zemqef6xJaHwy
U+OuuZ9F71dxcXLtZNqckpX8NcHH4SBnmM6PKE3DR62jaBbyF8TSq7KFPlaLWbtK+qwtpgmSuJG+
Lqhztj7OGFa2HWbPee+La8YLcKbqZOfLxh2C9c9XUlJPjpUX3ZcTSLMrqpL6D4IfT2gcWQR9DhNC
MsCuJvIuVxTCbtaQYl5r3Xn5u/VROac7C421quAJcMA/kDwNKTs0O3R2olHaLVU4to1movRFarN4
PN0zcbY1Mu+Q/PJ4tPmPZthHgSZFUIc5sUyf8HDbJR54O5mDgIKdT3GtSK2T0siodziFlXpinTpX
lBrVQQ3T/g1UeXV7sF1XEw8EjgslESb6qcDasmzrVe0TPE7AAryM5IIQAlRm2r0ckVgYVm7rNwWZ
6+CxP8mzn8NAF3ckeBBgZPi3do6ukuR39axMVMe07XlF7P5QPKAvViS1z/FQB71Ubjg0mRauGpnp
5LCIIqHq8MxdZW9KH0WoaMrrnDG9wpBbYHbZI3+JbrBXwv/es949W0YUFvV/ZWXITKpf46POEezS
fbzp0RqAN8oaGOyn00nuA5KR3U/Da/OYDLVXT6+cg1BLLZG/+mPqK5kU9PVLj+GIq/DqVIVpKV4T
jYWPW8hzKsrw9kDx+oj7p31Vbt2EsiHwqSIVl3HqsPFZFsWwpx/lbjNizDaobF1pMJEXnlsm9ljK
vEyK1yx1F04VFn7RL1ydXNVXIoaCW4b/NzCzNzK/jVl9h6MnJIBf96QwFaBSTq8eVNUnpq/KGU0G
6bcg3ep9tbAftNYns4YVdXWpSy2Pkol9NUhFw8eEvnQTejrj9LuJo7G0gyQ8y9ir9V7cNo3nvlfK
BdZWHPS2dhOmuw27Efr+/roSdeUyZeJTnvUPGuoa/wAZnvB3RrhcDcQwxQ5etGojK5yDm4WcexNT
QkOiGSQNLX1nALna1Xc1ZcPbq+0StdpRXDk54Hyajs7Paep8+OCoXFT36oJEuSZJKmX96mTHSzEw
rnZZSVBGGRHL/mCRLA39Tt4locGM5/8jkB5ILednOwzgE4YDhF5G6SXuFpooSZ+EXCLpYa15wRjz
QWMF7mkZ2fh0ChWfVktPJ+qpuXud3iFcUkVS15XnVkAuWwN3VDGHT+dCFdx0kWVgh19QopLSHBv7
q0GXH+uesTNMxbUFCJt/drjTjGD8DVeQ3vExJM2E+ZD6moOMhgKVOvma3L4iCIL9jVO/r9bOU2dD
fNCrjll2GFlLOzxnzcOPNSpHV8Fba7NFLk7NhbD3enR6oYtGfqv+QsBG0RsU3J0Heu9X6hP4h4l+
ysoR6j3c4Ofz2ETkg/oMXkFmju7mA1XLf9nT+aq8W6vE+4E0E2QiD18E6+qlKe+1SMjUWTiC06B2
HOCcuNag8DvwOlB7s+3xGNztaPQ39qmSi+L7UV5RfqboU35n12z63T+38Ff0g/qsceUD9dAImVuK
tU/1Z97MHhO4ltj3bHUytFk9eTN+ZcM63PoGdFRGQ9ezIXDaJQwb64YydzFdsJmoXrdFyzrgvA4b
hlSy7kGuNESPbyQXIl3D2yPL6Pbw/bG2lfIN8gv51tW0Pz05LPeeDprMVaz86oe3kcUUZyqycB0v
kQj+hk2MBUBFU8PlbQkszckwLuxbRGxp34ZHakYKoePKC6E1oyEho4LxEQS0Yp8Jthv/aaDtHG2s
RzZivUoQnHI6J2En56PwXkAo1hTqvHVFdqVR8JWdl50pQUFwUodIIy8jwWGKbJ5WHtTB8DMQvZ2A
H4v1zLtUyHd1V0R/Amjjp7ZOWyhaNbjz1VfugxapYbepfD7ZekvgvsXKA6UKfEX+80KtzVPXHpYX
A7pzyGki0dkf6GXJaKGyVZYY7UsGwmhAiSZSnoJ/uuXvoxPOqu+YFlkj/xXG06B9225IWIkA/oaT
DgFoeP64lXuEDJi+PuXvxla7peMEhiisAn+bVxKDBhgiv+hVA6xBizbjRiKmXo+rAJg+4ii00M9H
3o7HHmME9oeh0bfFyo9bZe5sBboTY6h7YlGxXIRtudL9yJxypOTpQUWb0P1PuqnW6JlfkaEIHNVW
QskaXKZDnH8d85JNCWAws74NjABlWlsaxbHGTHf6Ji640GLYgaFayTUIwrR1GW7rsKdYyU0NmRpH
ot9WJ4RkGI406BODhvBAXps/kU3+tfqWr54QqImUHqvabz60Hav0s+13coz36Vu4BkjhGzpBxu6r
q5DN7S9zHm7EARTwGpXZ1VilpN3ijztWb+3fzTKlS7kn1TNT4coyMVol/+i9zMxW5sYtDenHoGRy
1fAyj5Sq9ISvyjRxnztgdIDqBgKvYQ9/NOLSEsn3PgC4JZq+IScwyADBqawFZFt9Z9bmGBMT1gnZ
zNgHH6tcIHxYeIsieMMeS2ULwyqTwxZl+FDCKXjnZTGA68uU8lQwp39iVyf5ERHWwQCAZI3d77w+
+pOe7lSSgq/bLEp1E29tPdEgseJMp+tvkq1lh2nC8Hn+2my2am9q3q4CB5uL0NRJXLRmIcTnhK55
7P4Q7KMX0BxgKp0wHsKFJ4SfAopPKoOChhmxkL/BAw2nhHRxsVjXnBfr4psvJxiDBoz3tTDjMYbK
iDZXGVMQY/YIbMcxnX1dpKpVku2QD35JR2LUmFvtEtMWXrUESOghgVVuHHuBAeEA3UQgyxKIFBmI
U7aTsP/E6k0SeSccpb/zgwxqyA9z9r9ASEUs9LwpARjuwrOtvepaBEF4EQtfIhMJzDY3m7SkTVbG
AuEx2JI4Y/rxkVIUN7pcX0ko9Z+ycruc+slLdSSOY/6MeZczJsUCVSAaoESfwXMZgwpGTLqJ22Ka
Gpk1KYc2c6qxFNEsacIEf4Y2gLEEVIOM8ClDOgmNcVPND+oc+dXeyUYERbXAkJYib08uouPct802
vVZMrBv7nHhTeXDHLAuJT6e604HQzFjpB/JEIKheMz0d2kcpSNPviAMJ5fHaKykpiGGq4F55ao+U
vBsdaQBtuKASMyzUA7xhPhIWYgtY6B5NF79ZRO13ZVeCE8SRbqtvF1hyJNqWuuqeqXrZ0LgtjSXR
8ZtgDfOZzbYI58bVRwSujzRxCumkYqPHsN/qbi/DDtmzxlTxX31Vo/3Zu0WnDpXjmnfq0RxwTE1t
r/BKJ936TzcoXVxGS/pBzhN5S2Vkj1f16s/2kR9zUSYo45JqGVDm0GsmFOF7M43dgIZGH8KxjmfS
wjLbVx82SRVVFK3ZOxp4Psgg53FqkoIMpPzdYZD7rME+755j44TQpTS4lWa986pjjAg2HldSml6Z
P0VonF+Oh35kcjwotkVZ0zZtB9H3oJ6dQhIQ4SG3oJEfiu57YlPb9HwgMKtDsdBGwUISbuk7Agph
VEdipnCPnjElqpr56ay7JKtRkHev3NS+Q1xA60cIBWgGvaaL3oTvTKyEYBnNu4xhSmSI9xx7ianv
K0ui2pAXh5mPpL2pSHwnbl6UYnx6wxATKGXKF51lvZgsG8Uk2Sdlhzaz6FwDNud28H6HxTdG/y0g
/Z25D+IbbPOA67AqbAdtZ8epMk1L3UQT/XXOTur6Q2wDTx42hq5fhJ1HMecMzE6LpJhqqw02p+Ju
WxzVs4wkxXOOYBsLVPmdxgEuHxASImK1hXsuIMjwOY3lR6JtNdkdU1FbpmxSehuZGgHLdZhzfdpH
XJyn4RTgQYpLbuk9JnjNUUJNRgvzVHgAvcmAHRcxyCeRQwSvXFwWHKJDI2TfAq41R51kCoY98mEC
5CoX0h2RZwafB+2B8Rg5C4zgwOs0pfwRvqZAEoPMy8B7rsm69M7KxTDtIoLMjlupwbcYWogSHYpg
QQ2D9u4R3Mr5QfdAsztjgik+vvLunaoZEFUu320ZuXq9QxuLgvr4gNwlfXaFB7WYxWczmfzPbFwP
j+03kkFSQAYQnqgkeh++HD1BkCz+iBa7OXUKxVQs5rwQFy3+sfHmtYaPBKDn8KSSBlsbOo63SPm1
RSyHo+plccmS9+QbOBM8lrXeIbhCAmvhhHgF5ee7+R1gKLiOy9vMPbPd7NpUr1Vpj5uSQqwwObyj
A/TYnHf01wr4ZC2VtqThPUBnvFfeY9xoa0cLYoTWTwHNYaeoKeDEOSqIXK5dGnm1y7TFYWwAiGTN
vTytT9ny6CNgxEt9HlKUv1yqeLlcEG/IJACfrZdCBLWj+G8CYvVcmc2GdSvCUcMYCbmVUXuXfefr
Z417joUu46aq9gur0FWorEWzF2wvzuJbvbc9Ivnd4uEJaqJKixqvQ9BNa0nVAn+520EV0qHoNhSY
RRCVAOU7050kLOs14d4CQWXC+e0E515DpuqnS2CyAjOtpo6WinBTiooLW6bZMwh9iS2kiY3VS0i+
derqbJtIHnvwleTIJDAU27tQpLF8avCiWnhjHkcJuNup7kvHkIPIvWSjluUgzWRtNwgprqe57VUO
EIapC+VBLNBnW5AWNvrCHz3SA6rw2EEuwmERvCuN80FCgX6kx8Wi1xDcZzfVknqXiH1hvBnB82DY
yqF8bXWVOL0K4yBk9tA2QjbasKlB0oYVcNL3wN349dVdu1ly3pLWKZz8zKlsxVYej4riW3wxs7Cm
09N0MSyWj48U14gMjNkm3oUtvytAFJkI9wla1qXamSNh5pNJvX5ft0qEvWV+1CQFS8v/5Nmb8raC
dp3RhDmdNPpdFYub7jIo4ZNm26NbMrZPreS72RfJTOJnxrMk3hu1ns1nd5/fgB6nDZBq/QHhOgC4
6DVLBHE88acn8uEEbayNN5iJckyKMhvahr00CdxC5cc/Jm3hCKMfmqm6X7LsuRlPuoL3ojnTG7KJ
SisuYxk7kctQX7ZgUwrIWW3bAKQNoOSmpIRPSSHJb/tGOz5zUJvdZrbbxbHLrloCd8ybzIU5xis+
gC2+QjXldXd7RsRU/XfvMVtm6yA18b4dDMJE1qsSQY0JRL25yDkplLVY4JyNKVOr5KkcoKsxFm4c
jNvhjkdotSup+72Xen477vQK94pjTBeS3MoRelCbyi0QpcHA4cwVbs44m+9SGuRFns0NuoPc5SV7
U7KqnPjgs0aoo/G3U8H1AwTsHFKss+gCQBOt8JikQGiRT71nULAjV1//gACpKuEt6wyvCJrDCUdW
E1ekft+9nxt+nPx6HfwsDSp0j14pzBwEFNP0nmAcWAPc+uY2t6x5deJBWtbc6WcAA7rwMceQ+YG4
qGXm0BIomYcnYaLBLehCCB0OydffFtPHS63YDKbBGzVXNs+yTBVW5xy9rBU0/BV50w+WNUOBo1uk
VNqk8N6dXcX/qD5okSNqysoFcnNigeuTYA3Kx5fbQ3wIACji3EK4hHdCn9pQx5/g2Pje2hGfpwRg
WLPyVPmTZH0xFQ+ls8AdZQDn+E5/jG7tYO5oyyGg/raiqm4eNYKGNTwPABkSzfwlmGuJbuF1yd97
bTD1wzYdOpKM6+SzRy/Y01Cwg8Y7WrDpivlb1PDOapa3KaGmUQUtAFigcbRdYzi9+SKlX6j21cyH
9XFGpro5wPZl/EvcUYU9TGXLBvUFeIs1gqi43epdyX9reWklg9FPHZ2X7U0bz0HxtJA+I+JRJYZy
73ODZFwUMK1yuwAkHP1jwu21jIW2vzuSUzZVDaxoVB/pyKHiPi6Ura6aAz2orUSc/DsuHlNV8XMK
g7CZWS16e3CGX5R1EGYAjaNszMAwYQaou99Icgp/jQMRK9ScV/cGXPTkszWiASTsd8lyD06WNyOC
OzvM//CdzIPhFlRrzYXTjvcXIdBwuSqYY9KxjUIG4OORliERGhH4RrIxzT1NhZhEfbES7lC5w9b4
uUc4wmxemWF4us5bop3samoOid/J0IEMFQPpg1kEfpWySMhu0RFO0kjMHT3xsrvOW5aikzFoCtlf
sHRxFKlRbkP79x82l/+o/IWfrCmAuT+Il+jQMg4PoI3A5CFUnypBIlxgEmID+TCDFzLplv5Qs/Py
dTy6o7kE+7ThNdnQRii5xE79XX0X/j1aa3trNbSS4MryGm57F+8y20bY/pL8jDNXo9TUL3KZtSPA
teBnMPPQKOhvo/TeKjLlhWIPZoe5Tcn9JkJVygWyTU5aTw8YPKtNosWV6blCoUFEKaaFlwKGaTtn
ueQjiXDlGwjRAWQok9wXq9pTTwLDuqAutEXvPDJmzbbCt1BXg69prSjKPRm7uHVnHdXpyh3Di8gP
IqlSjP8s2p6JEbCjQxfi6zULvjF8ZBX/xXJ3YsC4yBhBCdvEc58/oCuy9DW+mFly1v4cI+Ssol5r
iqoLokkPAGtt/umZEa7piQ2G9aS/kxb0C7fEF4hie82F7ltVYUFG8t8jyGIYWwixHiGTXAaodn+Y
E2haXzHSQwsq0N84Ev7vvVLiiOY1jxFd1mTICtux0pACbbI+hR0hvmri0BZO6/8+qLsx1BpAXQQO
LzOMNFqtZ8sP0UM8YuMYL9dd4zzKZIqokZ7S8yDDF9wbdllilqjnz+kHJZPaPxb8a7whr9yYnyYC
O4SOw3yw0tqEJtrFAZIZ7RZutCfQbCg+E4aheI+cTLomO2J4FVNQbc1jiaJke0EvQfOW5F2171a8
W4ER7X6yjYFZ6VmUG6ZJssFtEhBtlkYgNvuFd8KwirZ3iDFxcJ+jD+09POzeqJCBuI+OwQ4+5nrF
BK6irIN7tRyjPXajWpbNZGC4xEHjzYKmlNCqpwaGWUgB83OJxAO8ALhGBHaS0b1Z6VtgTwHwQk3y
AuRtWm/H1zWC7zXWqWudwpKnv0JW0ENyuKIpLN13wf2LJva2QkiQjMn8AiRULCHUwIGn7NfPXHFZ
Ck6EnxKfv/zmKqiNeSmo8epbfVwaJwlCBrDGUCpl1BNRKRUKxy4mE4hGlJQZ4gjQXWHxajY/nZGr
OepmIZYJoCCT9MwS4I1Oj6fc2ABA/xVV+CPt/OONf99kqaaWThlsKaVmmd8bin/tsMhEbVMpJhpJ
7AujYE52yvlrJJNqjqmzrVdfsjwXDAaWjpBA98HuV4HoRVAdS0+fLkLZYnmsSbpMzjk2O9B4uuNU
qdEnFyAu0k+u7l7Aqcbq0LfQGvcP5PwTSCt8sGcIXXECdZiJ8VgnAojNdRlRXXviuf8P6ZS55tnr
2hF9Nkos8g8Wg6ILGhpbCJsWxk82ykyWLlrh7iTCbAaIUuaPd5cAhiWLqeFWHw9NoXGLkFmWn9Qm
mHHu2/matyke/uiFry+TA21y/yOUB7iEdm3VaZXumtfB8HaL4VlhiCJm248i7rtlBfyTRVPFTthI
lUEqOJ2G5rsX22nNPr2QxpS5cNrrZj1WJmVAOu6FkTQ6QHRErOvIPRaQYCgwpNsx0c03wTU64d9K
3KBQ0hEJ2XPsukwUwWR0d49sby/3prunQY/VQu4oBpA9ZdJZo1Uygfb4CIvrmKZeB7V2N0Qe4yr5
JNIDjySw/nAurVGh8ePnk50zr3iiXBuvCg8vKxy6NAqO7DOaqLOM83CThkI9RdR72CGYvGxd8XaO
sjf5vfpmlU18xGo+42iXELUjLzhZvYAq6Q/GrZKbtXvKz4/cfQDkyXosH5URvSLh92c57xiaJbQp
EAVpaCdpW/zxIrlz3f/7oZXHgV+2hWorOQMrhCwbvmU6lmqt9XFCK82ceSJgB1cOLRZ0f3/lAEev
lQ2nN/ITlKcQ3VjglrgT1lPegKPQUs4b/okW1578Ls1cywcrUvm0zPM25eVOtRUq4YxhF98C0KS0
Xtpu37br1KGSKrv6WdKaA2MG4DUpoPBTGGd1M9w89xCs/7XxatzSBYc/xhaKXyVVTVVrIJDq3Kq6
47lGIY0cNj6VrGPIouYuxqikWFw3NMx/yeXzepLVyJX1Yd4ZuFDWxcfqNFEuKBAsbGCmKbhX4m/O
Pm3eO+liIkI+6kv1NuRRvdZ57hxQOfZhfcyJwXHpRyUkfbQpY03X6KvHJ7xaUo3tYK4o+7DE2vPv
JIDQ3ZcD9AgTFwZcjFRReJU4V+OxxMI2J9goVkpkIPUpOgfgDnGp7RZHES3tGaQUAyVw3wohp7Aw
/2a5163VBIF43AD7Qx49XMNAp6RWghZZZu1H2rbS3yKEBR4MkT6syNqT9+lnM6dLEdauUiSbyi1W
gs5kKGg5Uvru/F6HAFifL6IqMWUPPcjIuANZK7nCWT2bU1vztgh1MCokrLvRfGVhKPV7tHH+vOnr
tS9m1pDQwwmPyRLjcGx7JCOBhR09IvDmPUjBnk++yql+c16KMo/fHoamERijU9Yi+FL8QNljcRmt
86sM9E+Kud/okoPCcT3WDebIEkQv2U5V03r1d5wu4Z9nVLNK9mF2t9Arqnf3TuS6T9jOEqcwu5DH
XflRXr826xoxYZ/BaPDCxQWhb5IVBH/xfZgnrryALPNTUp4T6XxYhshTEHxJUTO7OcdRpWYbO+ef
7ZxlyFil95ftn18OTKDq9XQM2QztUpi0N4tcg4eiMqxFU6xi9Y+BCr9yNaZBn5Z/gHH8y2k8tZXS
4zqXoGgAlO190xkhYqtIHE9SU+umF2au413L1K10tqy5OwUVKmegtq66nIFsVTmFpA+85fgEoPYP
SxdCWgmF88ajZTa/sQSpXW5BkTogCRedjFBH4Buk58bDZ2WUdWC1z+Rz6D7IXGul8aP0/F0FeEmU
Sa9Z3zky0UPYWLxIpMMq8PCicVbo8htc746DBAGsdWEUduT8zvIKVPS4ZcMmCsps9M5Vkk+RGzYP
a+F96gf1G3Up+tuul5RoDd4uu6sUGza45PbgjawTkoJQwL7chFMRS6umPzlA97fgZ6HRyvKJC+4c
LS6UpQxkakMfwyVssY6z9ojAsyqjB7uSVpe5/Ih2zUaVDjJmmA+GoNbLEOTPK79Q+k74Hr3PCmVv
WHQEWh9hHWleL6wI5pk1kJQgcgrxHSNexQfqePRgjHNx0vqU9HoFG9VD42NIHlKbmP7Cyhw2aqX6
M+DK2cHPMMx/I1vsvAmQtrxHjrNcIjRf6r3wgljaMKVPj0kTLNFsfysltQ/VLtSJm4p5/25gJ4cW
SC++TB9y24kRftoROxieN70fZG0A4EBXARchM3NmyBrRgQzMuyzmOoTgUI/x7UZ/oRjTBCYcSTgX
EAmFM59JzIa+Ve13OvgvxyLBAPpFYDYhDhjvu6dP6lN1PPYvt761nl+8Vr3XX7/2s7727OiG57XL
BIRf81rNjpeMT6SZrm2wQ4zGFyPXOs0EIo04z5UlTdTeqKMRVM5hugZJi+qCnNGsS2qszTJ9iWvg
fYx897hDvHZXxGkQdND3INdR/g5M0heRduBiUE0+mmL8hVBsq00dfbi5CkdugeQmo4ZIYF3gwGuq
ub7DTXA1U+vy7hncKS8eHOkUSH5BnmWMsrV3Rmh1TwlvdjS9Ce2ZwzjEFQ2aFZv3jbRVfc9ZIKaC
mpT0ztlXBXI1tCrytsk6EkaaHCexBHS/6vVjU7r/rTtH7QQqpGCLJ/DJqFhqTVJy8MgfFps1TxJt
1CDpZYuVVCfR4wllqhMOOoqcdwCE0bMGddQFKUUVXIwsr9b1BkaWmQdKziAPKZn/Ne3N9nhdW20d
dPP40H8tpM+qP8YqRWBwBsuPigJaWftC1TQPNKDAVplpW7vosFG9j001z2L4QE+7sD55jedNJG6y
fE21ZcwncTJAfAOjCDDHK1aoPAUAuNjEhryQN9zoFOQ9tusbTlsNRSfRFMb8hCXjM4D/DE2DKcmX
YKIiSQm3loW0dTt8F/onN41Gwi/z987KayOMxVyGE0aXhBNQbxWrOlrWWpw48a5sbWSriu1nObjv
s26tPXlpLwfB6KBLej3QagnGw1KlOW/CVJkP/fHkk1AFAYDrGD9+8miTqZv/AedikTAcN9A0Go7T
k4QYGpwUDfppEmhz7c3SEbtn3oFhd4LxEsPgpJr7LJr3G9rTbD7sUne9Ir4Av9lAFFGAZ6UWO57i
p6OJ9GRa+/qpiF+zsywPstM5h5T7UxnHeNzArtFHzypjmpDkXbcP6jYpiIoW0BifwLD2d+OqFzFM
ece+AfsgnhBsrE3xio21ihIATqMP+19j3zqBcxVCrXZtOg2Me7s1GFeRXAL+byvKsuvyFHt5xkNJ
c6BGR7qxvNQ0cnLHxhD6apsA38mcVHPs6/pxJjjOm3aU+/TlZB8q8YV4/TP0+y8naggAUcDNJYeG
faDLq386W9SrAJN5sggNBZ2RMDw3qxLv/b1ygzfbVFHoELx4QMqcmjP5o2/9+N+F43YFVs6wRMDv
4/wLUONJD9Rbcc2zN1gPTrWb9sLUAakdMvR5Y+Cfx+8QvwOiycPXztvdKQHI/fHj7YBxqDbegTfc
1Seu4Q6wnyn4d2lB1JMMbctHV1qNbDxXZ1Z0yufnu4qD01W2J40ykBFDHBp/JgsB9CMfwy4AYzFa
brJ3PxyKsqc46mHDr1Q9+mLAd9LY1GUEAEp/G/w/sg3ZT3O/cvbjrddq9DFm5zTaSTmtqKNRc1o3
jjBgqHTBdz0LdfbCu8cJR9/HZwlgxcSDdGxa3x8pzly+zmd/JUnmXXPETlw0y/1tFopfLNFG0yTy
yp+BptJGOeDkstf7KP+gPEz2Kk2I/KMvYF9wav4I9e56Bw7k8F3XHQ3Ym8I6ySt2/j5Hwieam62i
FXapZzBuLtQVjC9kuJz6QH/n8uZl7HlNMFxwSrs/G1knR2HfYkLI63AjnIMYpvuFRskdeSonUjdD
xwP50lBDKbwB1s5KEKEPjanNIRIu5USiulXXRVGNllP4TEcWcMZNVRBsBZZTc2rx7xdI1aH5gKWa
AoSnR6es+ENi9VBgiQ4lc83FUBKdmTQCPEKtHoC2Uz5jLx0iA1bMY5Aj1kK1+e2UEN7ZD9GNWk8W
K/SZ3uPi4s3fLb+xRpdAwk7kTg3vv1YO45J47H0uhI5gF9g5Kz2lZO4hYqncE15CvTPj8O4ghClj
Xhgr2H11i7qQrivfMehOQsO0RW+VQpbS5rEUNf3cdMWyFfQbsuKggHx9eDmju+17vZfcUd9DKcgR
Z10CFqxk43ABJDC7U/76PJucs8TYnPlUWXm3PqYCuDNmNmQ0ylO+XjoPBSN0yKJJQDjyZ2QKJk+H
C6OTW42fpQf11Ur6uH82O+gX1eZlIgfaWneIYs6A0OEXVYrkK2U1yEbksS4FpuAm+k3Jv7y6UT1y
2PU91doBO9e76qfnGsRjh/Eg3wvZCruultBMnKY2QGGE4Kg1bDeqgsxNaXfNS5PP0SSSRSKhvEK8
Ed5hSghrgGf5Ro+8Sj8NgXWKm+/OipV6lFauRVpyAGS0iZAOrRwJNgMXeRneaTt4I5xC9Aq5pzBH
/Z3SZWMHBu1up+10ixwRuq79sZpeu7TiD0Cgn/Oyq9Ul4/M12Q77bnCuqXWLxwyOpbHYUH2I/yk8
MXj4RSY6vBOU67TBWWBqTgCmNk3A4m1B/5nwsQVjYYAgvxSb5BDk2RC9CExAGAI8gGy3QzAd/tT/
EVBo0XoHiqsMExXTJODTFH/rn0mOVR+KYt2/hGk2v8dreit/sldaAoJzQ3yvcQJWXN3CByt320bZ
lcMB1c9a5c0hQxSw1K8KmUgNvcmD63VLN1eLeohc0jn33WBvqwx5f7yoTaicnGf5Pxv5NYhioLPo
HzCEIh8pxYps0J5YYRMLQPxdxdWhzPHwWsBR5WFPo3BljXzO3Lzw9YhTMS9QmSDU+8tEPmtP6BkD
IYKDAQeg8IdOjNr4ugxEcnFoDERIyggBhC7SKSUf5dAr3nM16nAxnXVLjPkZ0xhumj4Qr04wiFmA
ngZV10CCXgCdw/0//fLXRv0BSVb33JUJQGYEqI/+z5j5VICpXS/pBxSzjiU1geFAEh1iAMpyOn3E
FSMEEKZu9BLMJmJvhzkA19xYJr+ImwW/4EtO187PGXhfUhQGkNMzaylDV/dY4EPhpbSSCybO32B0
zEHf6OAyN69y8At9VdGsB3wYtxk2SX06EPTH/t5+graHDNdkWekmoRTHKxYvcUExUJEKte0UeA7C
FagLE6VI2zYJ9E/b50N3lwRx4CVVAd5DYk4JHOiSlxM0g1E6dmmlUeNrQrsjbw3Bt4PkPypmsbQ+
UBCeszPGL/AQUKVS/MoShhypfS6OIZRzhwY72HLkpYKNUvRLmbEuD9CHtiOCvUGYVD7dJgDS4YFT
Mm5jdmp3vsbLs9JlAOiJKs8upF9hSwUcxNJoSUSXPkktBn/D1nf3SAQIyr3c7M2nzema4BnTDQ8s
TNKc26osRvTr35Jmyi66aEQN1RnYpL5C2YhJOej7+dvSw6pNndSde0qPyJQARSk/9t3punquIw4I
llXAP30iPXGn8oKM5QXu4yxEC0F6+ipnShjS7ch5nkBfpltW8cQohjgTRa2bmNWdxen/53ap6GNH
/+3DFbERIRzfoil6EyZNBTtJXSb0Ff07i5SkbMSyfkJJdo1+hqkMPv0g7uRQXWz+IOEMsxLHCxAp
ynTQmKjfwaS5O7AtQnscmnvbYdqNnZ21SFs7UbODlVJ6Hks1fRS14EGqRgj98ErziY3Ihu5fqdC+
SsRt1lbPnSvPn1pYCBH/5iE1adri4yNplTVFY02V9Rv2soYLDcn+2k4iLn1CowR04uuFQWw/6Q8n
Vn1ZOh9DsYApPqeyIlu9JBG+eHDr4uQMVuoC+L9q3WyBxCDPdbTytpOwVJs/13smESLIXrLFOCZv
krBTpLls82XF3IqmsoSuhOigvJx/Cge/ef7t2XOYmCHqbT1iG7XKQsRMOJJZPS98QZGn9JSMIzi1
eOH8nC3bCdJ6Lo8WU/acxMAMlJoTe4uRzmydE0bURrA0/u4byHfxWy2oV1CqTnPBfwZBI/c0xe3g
0u15ab0qbEI0kkHIJhCrb7oY8nw6RtRGfCCgIeScK2BHUQ6LkSXhaplDVCFo86WQ3JF0h0rvPxXj
vm581huZI2Hb842tAxJ0I/7sGno7aCykpH/teZzL082Y4u1/tlw3WvzOb+QjRdPkAuuOMoe11T7x
o0NshfYqHSmqOgOpOTTVI+6WARb0C9DC/WhJObxWxXWzWPdobra6hkNlrQfOetbbops7UDq1+0wO
WENf4qTP1Sw2wz6wsef80W59LktEwMeiFQHNfY3+ZtzA2axGCywOyX4i9PAchQwOTKhm0acp6fL3
chjuI6LHGEmtTt3wlnNfR7HgFMtl1QnmPGgTKr3W3GsX5EvgpuhYu/w5aYWBnEvPeDNgnJR2Fca4
arFb5Uv1SaiumW9QWssv9uT0Z40Ncd93ZNVQ2AdQlq4+z3iH1jpxBiAk7OSSyt8M2xGoRznJo6SH
gd0YFc0EGsvDAgtBvlzPZSm9lw95Hf0NytDqhsvwQQAzMZBx7q4QF+RXgbxnIXQQisFsHIdiSEdb
BNYq4MtEQ9MIjcxxT4r3Of4Rgu4OST8ISSTryqCjxx9rvehU4myZn5O+eykaoe6FceC0mcUoD1zM
nnaAtYc4QJYYtvaZcfKNzOIb2AicaTR2SaLpwCAol4Y9tVC/Rg+XiJ29x4mWM741Mc9NKWUpijzI
1VWoGhLSkCghRpH28f1kDXJtZ8c0D/DthH8vCwB2/jZzY8i/j3j/rRHj/Fs0bPudCWuLLQ/33mU/
7Ur6cSH/Q3Pv7dJTFHVSKziSxjD3DhmSZfJGritCqTQvB6KZjrKeJqmqkxJPnd3CtIqrCyVGaz6+
v63mdfN7sxvqJiaBdaSIF/z21Ua+akS97yz9TgY0ByQy+CwRGC25u44JtbNnMGup5Vwjr+UabNrE
R0frEtGhY4mwIhARBALqk1mZpqYC6HTiTzFUARzOEG1GdBdQrysl5EyRHfaIk4R2F213NzdSmKbq
Fq+kYBoCHhGvAHtt5I9JjLyVHIpqpyqVRDLkgxuRBCVsw+WTealOhf3kr9DgpanAxbIp3SP4N3gq
n0meU49LtN9ZH9/w6Dz87M3iodRu80kj+WPma0FepQG6E4DdgxYLJpU4z8urG5eDTExa17oVtSFW
RS02EOOSyx9rYGEqGJv9gi2FW/5U/o+B3UgHYWNXsG61Slwq2abdsTzMwReeHdZyu+uaG2F5MyFZ
rJQKsGgD2X9nD/8m1VOf2clJmKwd4C3lYELQ/PVY1OZzcOh6d7yB3MvNRLNTrUenA+lSKvlVwmkN
aWd8ZVhYhCJ8BtnTaVXVl59ps0xQfNayudOI27loV0v8ZkMm0AvQg6oGxueQvJKr6/rwX0V8t1kv
IltRvyg4uWNgQrSCUJopj9Ialrui1lB7epovBlclaSuNIwbenK5viy7It5XVDAEzOl41utVmjznp
jymZ2oOn7w7WB2DvyRMDDbAGQooelPgj8omz9/QMYoKCp0ZORtmtrSU9uLt09B2MKLEhh5FqZux/
5eHbB6kpzus72/F7gvqBIc56t5/xfEpZ7ubyUcVMKe2zqrq505IotMyd3bX7UgMsQj/ppPOi30nF
lz6IX5ZaNzrRsFaHtE6jR6RAKxDnSRf7C8HIbjeuKCm4jivRE7p/t/Rd3IRgr+o9Ibfj60usu7a4
X3swq4HcSneiCDUp0q8/lpWQkAccgAW9HJC4Uasejps2DzYEfz7PtSglCXL5r5MUvDOo/cT9hECI
M4tCae9Bt1CTjr2Vscc1Cus778HkvoiaYMPJmS2TYjVA6bWInQQmR40vCDQJr0I1DxhFQ+HEoK1o
HhJIkNpmFQQIT4EARiIqc+azUPTt0orGmXy/FAHJ5K6K2XwogilP6eXypouWzbdkCzEvQdzGKAjp
eJiTDogAew1EqrUEQUzXbwqmIS6SiyHvzlJM07YVVEp3VFitoPCQ2Zd6FRzz4U7/zqQimphzNsZ8
hZtLK5ySDrsarn9USAObRrxSlRj7zkCjpyaZLza/IWgjrVlkjSi22W7XuknVV7K4TfsLkK5QiMWF
0bquNPl+K2XeBI3k35UULkKUZMSqh+Km3XZlQKTjPVs3wgHY2JQtQUUSkOEfZgTj5xmjBp/78ZsE
RwF6Aa4K15uGVcWZsHWr9e3WrwJ0yItNw1XHVImyfDej8GX0C5net84n2Vz/QrXJYton9dtPOVM4
9Dp8Z8/DFMdCb5lMH9trVOpFCJgym95s2dNbcwKd5l+JDVIl9N9TIpClP0KujYS6jXX/fswIqK6y
gLPZIyKfauLT20j+ROsYI8+8rvznQkR3dp2MYyGxbRATzuldGbxL78TGmaItPOcqvkwwv1eqnfns
EAwtviNvf0AqlfM1rczfH9SlBbx17cSxNCHcuyoj4KbtwOoLAv1s+3JwvreyMspCcJu3vDM2yA4B
jZg27vucZZzJ+2nmA5hfja4SpAlKDCPjjugPWksY80+Hi1lsvbgwF8nJYRF6e328EvmFVey8Z30y
2XDExTs/Ov+nqtgACd88VExZzZDZSq4eM3kf8yCmGhu2bU9KJ4SSbKan/wemyPWkiuoUNO0GalXl
V6p3jilhN8Sdfq3HRytGS3x/Czx6NkjBYqa8biqGaJHNrivcNumI+T2lZOEBZYvDsUeSHbBEhLQe
7idRpde9TJkRuezCo3HcWCwzXoDNNQfMx8dy/M9AfVyEK/3PcNfsUtGWD0Xl+vqZpCfk02fxhXgR
ylCcN1j11pBhCNPN6o7u3d4De3h4hfqiMX7BoIXaBTG2MSacVJFSRK/JJB0z3YRImHJbTbV7kQ0h
5znyLYgXPlAKb8kk4Lukv/Ht3CyU1QcM42J2hYGhydVZ+Mp3XugCx13sQZ7CmRyjMdfo/e5hZfNI
xmnvoUV5QpTy9t470v81LF5N6P26zb+srVMgy+CE0Z+FsHg+maUHd4wjrWNxbfgRmyamOttN/Ybo
gVztbW9XHnWYLPX3tlMuCM+pkNjECfSSZhIT/W6iIu8/PKgYtieuIFwfrUnbjmkUTufJTG59wa8H
DLlRtwBMfOGbxQVQe3iIzy0l+TaxAIk6ZKo2WMWBsDTZJygQ5RS1SHMJM9WZZkwrMROG56YQZWzv
8G9d0tHdLQdLKOHQhpTmcJT20yRDt18yjizi55qHgbtO3VafFX+He7R4DKlHf2nVJtWQGyzQ45t1
euyBsKlztTRZIlLf81nk9uIb1UQPEeTOnO1tfEKTd/NZHiCRBFJXiZLn3x2SltHUP4ZJcMECjCbq
gTNejP8/CLZDPW1rXRteVFPcvYNIp6PMpvRKYEUX3hsSlS9kq7H9u33ekRGiT2pkT8YLDuxlWnq5
zo8AYBGonrsHGu78ZzxCBSrW2SlB3rLtkrkpRocKCgDsj716exwaFNXB2uqmHWs6UwW0OS8Ms6oW
9pwZxgLxtXN+WbxfoNKDukhc+P+UEtB6UlLS3EA8IOFIB9tEvurxxA9vDuoUGp0dZ0QSpknK5KmW
RvszomXzr8ukzLqJ0c7g8FHNsjCHh+hmYT+ZqSxq+9jJkQ6Nvt39xiZdQLYyIEVgFJWcQHnTUbcS
k5wy9QEeOUj8QPhdy7lHUaxqUihSjrQobZf1/J9S0rMrMmxGN7cA0QSxJeYztPaEGrRym6rUmgN5
Zgac5z35HyYyzFq8kgcWKgyzdcfj8Ge06Ny1hkDvFyEd+NWnYMmXLfXbUMifQEnEd9m+MkH9e9qT
C/NmOG2TlWLo
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
