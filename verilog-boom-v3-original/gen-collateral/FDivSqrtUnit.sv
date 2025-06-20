// Generated by CIRCT unknown git version

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

// Include register initializers in init blocks unless synthesis is set
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for register randomization.

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_
module FDivSqrtUnit(	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
  input         clock,	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
  input         reset,	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
  output        io_req_ready,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input         io_req_valid,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [6:0]  io_req_bits_uop_uopc,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [19:0] io_req_bits_uop_br_mask,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [19:0] io_req_bits_uop_imm_packed,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [6:0]  io_req_bits_uop_rob_idx,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [6:0]  io_req_bits_uop_pdst,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input         io_req_bits_uop_is_amo,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input         io_req_bits_uop_uses_ldq,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input         io_req_bits_uop_uses_stq,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [1:0]  io_req_bits_uop_dst_rtype,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input         io_req_bits_uop_fp_val,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [64:0] io_req_bits_rs1_data,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [64:0] io_req_bits_rs2_data,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input         io_req_bits_kill,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input         io_resp_ready,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output        io_resp_valid,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output [6:0]  io_resp_bits_uop_rob_idx,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output [6:0]  io_resp_bits_uop_pdst,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output        io_resp_bits_uop_is_amo,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output        io_resp_bits_uop_uses_ldq,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output        io_resp_bits_uop_uses_stq,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output [1:0]  io_resp_bits_uop_dst_rtype,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output        io_resp_bits_uop_fp_val,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output [64:0] io_resp_bits_data,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output        io_resp_bits_fflags_valid,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output [6:0]  io_resp_bits_fflags_bits_uop_rob_idx,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  output [4:0]  io_resp_bits_fflags_bits_flags,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [19:0] io_brupdate_b1_resolve_mask,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [19:0] io_brupdate_b1_mispredict_mask,	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
  input  [2:0]  io_fcsr_rm	// @[generators/boom/src/main/scala/v3/exu/execution-units/functional-unit.scala:168:14]
);

  wire        output_buffer_available;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:189:30]
  wire [32:0] _downvert_d2s_io_out;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:211:28]
  wire [4:0]  _downvert_d2s_io_exceptionFlags;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:211:28]
  wire        _divsqrt_io_inReady_div;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
  wire        _divsqrt_io_inReady_sqrt;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
  wire        _divsqrt_io_outValid_div;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
  wire        _divsqrt_io_outValid_sqrt;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
  wire [64:0] _divsqrt_io_out;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
  wire [4:0]  _divsqrt_io_exceptionFlags;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
  wire [64:0] _in2_upconvert_s2d_io_out;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:112:21]
  wire [64:0] _in1_upconvert_s2d_io_out;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:112:21]
  wire [1:0]  _fdiv_decoder_io_sigs_typeTagIn;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:101:28]
  wire        _fdiv_decoder_io_sigs_div;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:101:28]
  wire        _fdiv_decoder_io_sigs_sqrt;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:101:28]
  reg         r_buffer_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:97:29]
  reg  [19:0] r_buffer_req_uop_br_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg  [6:0]  r_buffer_req_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg  [6:0]  r_buffer_req_uop_pdst;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg         r_buffer_req_uop_is_amo;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg         r_buffer_req_uop_uses_ldq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg         r_buffer_req_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg  [1:0]  r_buffer_req_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg         r_buffer_req_uop_fp_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
  reg  [1:0]  r_buffer_fin_typeTagIn;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
  reg         r_buffer_fin_div;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
  reg         r_buffer_fin_sqrt;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
  reg  [2:0]  r_buffer_fin_rm;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
  reg  [64:0] r_buffer_fin_in1;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
  reg  [64:0] r_buffer_fin_in2;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
  reg         r_divsqrt_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:145:30]
  reg         r_divsqrt_killed;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:146:29]
  reg  [1:0]  r_divsqrt_fin_typeTagIn;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:147:26]
  reg  [2:0]  r_divsqrt_fin_rm;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:147:26]
  reg  [19:0] r_divsqrt_uop_br_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  reg  [6:0]  r_divsqrt_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  reg  [6:0]  r_divsqrt_uop_pdst;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  reg         r_divsqrt_uop_is_amo;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  reg         r_divsqrt_uop_uses_ldq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  reg         r_divsqrt_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  reg  [1:0]  r_divsqrt_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  reg         r_divsqrt_uop_fp_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26]
  wire        divsqrt_io_inValid = r_buffer_val & (r_buffer_fin_div | r_buffer_fin_sqrt) & ~r_divsqrt_val & output_buffer_available;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:97:29, :99:25, :145:30, :154:18, :155:{23,45}, :156:{5,20}, :189:30]
  reg         r_out_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:184:26]
  reg  [19:0] r_out_uop_br_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg  [6:0]  r_out_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg  [6:0]  r_out_uop_pdst;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg         r_out_uop_is_amo;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg         r_out_uop_uses_ldq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg         r_out_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg  [1:0]  r_out_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg         r_out_uop_fp_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22]
  reg  [4:0]  r_out_flags_double;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:186:31]
  reg  [64:0] r_out_wdata_double;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:187:31]
  assign output_buffer_available = ~r_out_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:184:26, :189:30]
  wire [19:0] _io_resp_valid_T = io_brupdate_b1_mispredict_mask & r_out_uop_br_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:185:22, generators/boom/src/main/scala/v3/util/util.scala:118:51]
  wire        _GEN = _divsqrt_io_outValid_div | _divsqrt_io_outValid_sqrt;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23, :196:33]
  `ifndef SYNTHESIS	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10]
    always @(posedge clock) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10]
      if (~reset & r_buffer_val & io_req_valid) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:97:29, :138:{10,26}]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10]
          $error("Assertion failed: [fdiv] a request is incoming while the buffer is already full.\n    at fdiv.scala:138 assert (!(r_buffer_val && io.req.valid), \"[fdiv] a request is incoming while the buffer is already full.\")\n");	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10]
        if (`STOP_COND_)	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10]
          $fatal;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10]
      end
      if (_GEN & ~reset & ~r_divsqrt_val) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10, :145:30, :196:33, :205:12]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:205:12]
          $error("Assertion failed: [fdiv] a response is being generated for no request.\n    at fdiv.scala:205 assert (r_divsqrt_val, \"[fdiv] a response is being generated for no request.\")\n");	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:205:12]
        if (`STOP_COND_)	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:205:12]
          $fatal;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:205:12]
      end
      if (~reset & r_out_val & _GEN) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:138:10, :184:26, :196:33, :208:{10,23}]
        if (`ASSERT_VERBOSE_COND_)	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:208:10]
          $error("Assertion failed: [fdiv] Buffered output being overwritten by another output from the fdiv/fsqrt unit.\n    at fdiv.scala:208 assert (!(r_out_val && (divsqrt.io.outValid_div || divsqrt.io.outValid_sqrt)),\n");	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:208:10]
        if (`STOP_COND_)	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:208:10]
          $fatal;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:208:10]
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  wire        _io_resp_bits_data_T = r_divsqrt_fin_typeTagIn == 2'h0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:147:26, :216:68]
  wire        io_resp_valid_0 = r_out_val & _io_resp_valid_T == 20'h0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:184:26, :218:30, generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}]
  wire        _GEN_0 = _fdiv_decoder_io_sigs_typeTagIn == 2'h0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:101:28, :132:15]
  wire [19:0] _r_divsqrt_killed_T_4 = io_brupdate_b1_mispredict_mask & r_buffer_req_uop_br_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, generators/boom/src/main/scala/v3/util/util.scala:118:51]
  wire        _GEN_1 = io_req_valid & (io_brupdate_b1_mispredict_mask & io_req_bits_uop_br_mask) == 20'h0 & ~io_req_bits_kill;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:105:71, :121:{22,73}, generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}]
  wire [19:0] _r_out_val_T_1 = io_brupdate_b1_mispredict_mask & r_divsqrt_uop_br_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, generators/boom/src/main/scala/v3/util/util.scala:118:51]
  wire        _GEN_2 = divsqrt_io_inValid & (r_buffer_fin_sqrt ? _divsqrt_io_inReady_sqrt : _divsqrt_io_inReady_div);	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :143:23, :154:18, :155:45, :156:20, :159:26, :170:24]
  always @(posedge clock) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
    if (reset) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
      r_buffer_val <= 1'h0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:97:29]
      r_divsqrt_val <= 1'h0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:145:30]
      r_out_val <= 1'h0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:184:26]
    end
    else begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
      r_buffer_val <= ~_GEN_2 & (_GEN_1 | _r_divsqrt_killed_T_4 == 20'h0 & ~io_req_bits_kill & r_buffer_val);	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:97:29, :105:{16,68,71,89}, :121:{22,73,95}, :122:18, :170:{24,42}, :173:18, generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}]
      r_divsqrt_val <= ~_GEN & (_GEN_2 | r_divsqrt_val);	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:145:30, :170:{24,42}, :174:19, :196:{33,62}, :197:19]
      r_out_val <= _GEN ? ~r_divsqrt_killed & _r_out_val_T_1 == 20'h0 & ~io_req_bits_kill : ~((|{io_resp_ready, _io_resp_valid_T}) | io_req_bits_kill) & r_out_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:105:71, :146:29, :184:26, :193:{23,67,88}, :194:15, :196:{33,62}, :199:{15,18,36,85}, generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}]
    end
    r_buffer_req_uop_br_mask <= _GEN_1 ? io_req_bits_uop_br_mask & ~io_brupdate_b1_resolve_mask : r_buffer_req_uop_br_mask & ~io_brupdate_b1_resolve_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :106:28, :121:{22,73,95}, :124:30, generators/boom/src/main/scala/v3/util/util.scala:85:{25,27}]
    if (_GEN_1) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:121:{22,73}]
      r_buffer_req_uop_rob_idx <= io_req_bits_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
      r_buffer_req_uop_pdst <= io_req_bits_uop_pdst;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
      r_buffer_req_uop_is_amo <= io_req_bits_uop_is_amo;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
      r_buffer_req_uop_uses_ldq <= io_req_bits_uop_uses_ldq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
      r_buffer_req_uop_uses_stq <= io_req_bits_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
      r_buffer_req_uop_dst_rtype <= io_req_bits_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
      r_buffer_req_uop_fp_val <= io_req_bits_uop_fp_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25]
      r_buffer_fin_typeTagIn <= _fdiv_decoder_io_sigs_typeTagIn;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :101:28]
      r_buffer_fin_div <= _fdiv_decoder_io_sigs_div;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :101:28]
      r_buffer_fin_sqrt <= _fdiv_decoder_io_sigs_sqrt;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :101:28]
      r_buffer_fin_rm <= (&(io_req_bits_uop_imm_packed[2:0])) ? io_fcsr_rm : io_req_bits_uop_imm_packed[2:0];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :127:{27,65}, generators/boom/src/main/scala/v3/util/util.scala:289:58]
      r_buffer_fin_in1 <= _GEN_0 ? _in1_upconvert_s2d_io_out : io_req_bits_rs1_data;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :112:21, :130:22, :132:{15,22}, :133:24]
      r_buffer_fin_in2 <= _GEN_0 ? _in2_upconvert_s2d_io_out : io_req_bits_rs2_data;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :112:21, :131:22, :132:{15,22}, :134:24]
    end
    r_divsqrt_killed <= _GEN_2 ? (|_r_divsqrt_killed_T_4) | io_req_bits_kill : (|{r_divsqrt_killed, _r_out_val_T_1}) | io_req_bits_kill;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:146:29, :167:{20,40,88}, :170:{24,42}, :177:{22,73}, generators/boom/src/main/scala/v3/util/util.scala:118:{51,59}]
    if (_GEN_2) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:170:24]
      r_divsqrt_fin_typeTagIn <= r_buffer_fin_typeTagIn;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :147:26]
      r_divsqrt_fin_rm <= r_buffer_fin_rm;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :147:26]
      r_divsqrt_uop_rob_idx <= r_buffer_req_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26]
      r_divsqrt_uop_pdst <= r_buffer_req_uop_pdst;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26]
      r_divsqrt_uop_is_amo <= r_buffer_req_uop_is_amo;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26]
      r_divsqrt_uop_uses_ldq <= r_buffer_req_uop_uses_ldq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26]
      r_divsqrt_uop_uses_stq <= r_buffer_req_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26]
      r_divsqrt_uop_dst_rtype <= r_buffer_req_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26]
      r_divsqrt_uop_fp_val <= r_buffer_req_uop_fp_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26]
    end
    r_divsqrt_uop_br_mask <= _GEN_2 ? r_buffer_req_uop_br_mask & ~io_brupdate_b1_resolve_mask : r_divsqrt_uop_br_mask & ~io_brupdate_b1_resolve_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:98:25, :148:26, :168:25, :170:{24,42}, :178:27, generators/boom/src/main/scala/v3/util/util.scala:85:{25,27}]
    r_out_uop_br_mask <= _GEN ? r_divsqrt_uop_br_mask & ~io_brupdate_b1_resolve_mask : r_out_uop_br_mask & ~io_brupdate_b1_resolve_mask;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22, :191:21, :196:{33,62}, :201:23, generators/boom/src/main/scala/v3/util/util.scala:85:{25,27}]
    if (_GEN) begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:196:33]
      r_out_uop_rob_idx <= r_divsqrt_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22]
      r_out_uop_pdst <= r_divsqrt_uop_pdst;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22]
      r_out_uop_is_amo <= r_divsqrt_uop_is_amo;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22]
      r_out_uop_uses_ldq <= r_divsqrt_uop_uses_ldq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22]
      r_out_uop_uses_stq <= r_divsqrt_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22]
      r_out_uop_dst_rtype <= r_divsqrt_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22]
      r_out_uop_fp_val <= r_divsqrt_uop_fp_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:148:26, :185:22]
      r_out_flags_double <= _divsqrt_io_exceptionFlags;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23, :186:31]
      r_out_wdata_double <= ({65{_divsqrt_io_out[63:61] != 3'h7}} | 65'h1EFEFFFFFFFFFFFFF) & _divsqrt_io_out;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23, :187:31, generators/rocket-chip/src/main/scala/tile/FPU.scala:249:{25,56}, :414:10]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:61];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
    initial begin	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
        `INIT_RANDOM_PROLOG_	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
        for (logic [5:0] i = 6'h0; i < 6'h3E; i += 6'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
        end	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
        r_buffer_val = _RANDOM[6'h0][0];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :97:29]
        r_buffer_req_uop_br_mask = {_RANDOM[6'h4][31:30], _RANDOM[6'h5][17:0]};	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_req_uop_rob_idx = _RANDOM[6'h7][11:5];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_req_uop_pdst = _RANDOM[6'h7][30:24];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_req_uop_is_amo = _RANDOM[6'hB][17];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_req_uop_uses_ldq = _RANDOM[6'hB][18];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_req_uop_uses_stq = _RANDOM[6'hB][19];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_req_uop_dst_rtype = _RANDOM[6'hC][18:17];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_req_uop_fp_val = _RANDOM[6'hC][24];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :98:25]
        r_buffer_fin_typeTagIn = _RANDOM[6'h13][16:15];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :99:25]
        r_buffer_fin_div = _RANDOM[6'h13][23];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :99:25]
        r_buffer_fin_sqrt = _RANDOM[6'h13][24];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :99:25]
        r_buffer_fin_rm = _RANDOM[6'h13][29:27];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :99:25]
        r_buffer_fin_in1 = {_RANDOM[6'h14][31:4], _RANDOM[6'h15], _RANDOM[6'h16][4:0]};	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :99:25]
        r_buffer_fin_in2 = {_RANDOM[6'h16][31:5], _RANDOM[6'h17], _RANDOM[6'h18][5:0]};	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :99:25]
        r_divsqrt_val = _RANDOM[6'h1A][7];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :145:30]
        r_divsqrt_killed = _RANDOM[6'h1A][8];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :145:30, :146:29]
        r_divsqrt_fin_typeTagIn = _RANDOM[6'h1A][17:16];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :145:30, :147:26]
        r_divsqrt_fin_rm = _RANDOM[6'h1A][30:28];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :145:30, :147:26]
        r_divsqrt_uop_br_mask = _RANDOM[6'h26][24:5];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_divsqrt_uop_rob_idx = _RANDOM[6'h28][18:12];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_divsqrt_uop_pdst = {_RANDOM[6'h28][31], _RANDOM[6'h29][5:0]};	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_divsqrt_uop_is_amo = _RANDOM[6'h2C][24];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_divsqrt_uop_uses_ldq = _RANDOM[6'h2C][25];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_divsqrt_uop_uses_stq = _RANDOM[6'h2C][26];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_divsqrt_uop_dst_rtype = _RANDOM[6'h2D][25:24];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_divsqrt_uop_fp_val = _RANDOM[6'h2D][31];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :148:26]
        r_out_val = _RANDOM[6'h2E][10];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :184:26]
        r_out_uop_br_mask = _RANDOM[6'h33][27:8];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_uop_rob_idx = _RANDOM[6'h35][21:15];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_uop_pdst = _RANDOM[6'h36][8:2];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_uop_is_amo = _RANDOM[6'h39][27];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_uop_uses_ldq = _RANDOM[6'h39][28];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_uop_uses_stq = _RANDOM[6'h39][29];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_uop_dst_rtype = _RANDOM[6'h3A][28:27];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_uop_fp_val = _RANDOM[6'h3B][2];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
        r_out_flags_double = _RANDOM[6'h3B][17:13];	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22, :186:31]
        r_out_wdata_double = {_RANDOM[6'h3B][31:18], _RANDOM[6'h3C], _RANDOM[6'h3D][18:0]};	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22, :187:31]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  UOPCodeFDivDecoder fdiv_decoder (	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:101:28]
    .io_uopc           (io_req_bits_uop_uopc),
    .io_sigs_typeTagIn (_fdiv_decoder_io_sigs_typeTagIn),
    .io_sigs_div       (_fdiv_decoder_io_sigs_div),
    .io_sigs_sqrt      (_fdiv_decoder_io_sigs_sqrt)
  );	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:101:28]
  RecFNToRecFN_1 in1_upconvert_s2d (	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:112:21]
    .io_in  ({io_req_bits_rs1_data[31], io_req_bits_rs1_data[52], io_req_bits_rs1_data[30:0]} | ((&(io_req_bits_rs1_data[64:60])) ? 33'h0 : 33'hE0400000)),	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:332:{49,84}, :356:31, :357:14, :358:14, :359:14, :372:{26,31}]
    .io_out (_in1_upconvert_s2d_io_out)
  );	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:112:21]
  RecFNToRecFN_1 in2_upconvert_s2d (	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:112:21]
    .io_in  ({io_req_bits_rs2_data[31], io_req_bits_rs2_data[52], io_req_bits_rs2_data[30:0]} | ((&(io_req_bits_rs2_data[64:60])) ? 33'h0 : 33'hE0400000)),	// @[generators/rocket-chip/src/main/scala/tile/FPU.scala:332:{49,84}, :356:31, :357:14, :358:14, :359:14, :372:{26,31}]
    .io_out (_in2_upconvert_s2d_io_out)
  );	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:112:21]
  DivSqrtRecF64 divsqrt (	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
    .clock             (clock),
    .reset             (reset),
    .io_inReady_div    (_divsqrt_io_inReady_div),
    .io_inReady_sqrt   (_divsqrt_io_inReady_sqrt),
    .io_inValid        (divsqrt_io_inValid),	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:154:18, :155:45, :156:20]
    .io_sqrtOp         (r_buffer_fin_sqrt),	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
    .io_a              (r_buffer_fin_in1),	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
    .io_b              (r_buffer_fin_sqrt ? r_buffer_fin_in1 : r_buffer_fin_in2),	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25, :163:22]
    .io_roundingMode   (r_buffer_fin_rm),	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:99:25]
    .io_outValid_div   (_divsqrt_io_outValid_div),
    .io_outValid_sqrt  (_divsqrt_io_outValid_sqrt),
    .io_out            (_divsqrt_io_out),
    .io_exceptionFlags (_divsqrt_io_exceptionFlags)
  );	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:143:23]
  RecFNToRecFN downvert_d2s (	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:211:28]
    .io_in             (r_out_wdata_double),	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:187:31]
    .io_roundingMode   (r_divsqrt_fin_rm),	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:147:26]
    .io_detectTininess (1'h0),
    .io_out            (_downvert_d2s_io_out),
    .io_exceptionFlags (_downvert_d2s_io_exceptionFlags)
  );	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:211:28]
  assign io_req_ready = ~r_buffer_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :97:29, :109:19]
  assign io_resp_valid = io_resp_valid_0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :218:30]
  assign io_resp_bits_uop_rob_idx = r_out_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_uop_pdst = r_out_uop_pdst;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_uop_is_amo = r_out_uop_is_amo;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_uop_uses_ldq = r_out_uop_uses_ldq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_uop_uses_stq = r_out_uop_uses_stq;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_uop_dst_rtype = r_out_uop_dst_rtype;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_uop_fp_val = r_out_uop_fp_val;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_data = _io_resp_bits_data_T ? {12'hFFF, _downvert_d2s_io_out[31], 20'hFFFFF, _downvert_d2s_io_out[32], _downvert_d2s_io_out[30:0]} : r_out_wdata_double;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :187:31, :211:28, :216:68, :221:8, generators/rocket-chip/src/main/scala/tile/FPU.scala:336:26, :340:8, :342:8, :343:8]
  assign io_resp_bits_fflags_valid = io_resp_valid_0;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :218:30]
  assign io_resp_bits_fflags_bits_uop_rob_idx = r_out_uop_rob_idx;	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :185:22]
  assign io_resp_bits_fflags_bits_flags = r_out_flags_double | (_io_resp_bits_data_T ? _downvert_d2s_io_exceptionFlags : 5'h0);	// @[generators/boom/src/main/scala/v3/exu/execution-units/fdiv.scala:84:7, :186:31, :211:28, :216:{38,43,68}]
endmodule

