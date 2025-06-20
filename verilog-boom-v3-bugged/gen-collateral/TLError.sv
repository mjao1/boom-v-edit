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
module TLError(	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
  input         clock,	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
  input         reset,	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
  output        auto_in_a_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_a_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [2:0]  auto_in_a_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [2:0]  auto_in_a_bits_param,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [3:0]  auto_in_a_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [6:0]  auto_in_a_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [13:0] auto_in_a_bits_address,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [7:0]  auto_in_a_bits_mask,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input  [63:0] auto_in_a_bits_data,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_a_bits_corrupt,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  input         auto_in_d_ready,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_valid,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [2:0]  auto_in_d_bits_opcode,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [3:0]  auto_in_d_bits_size,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output [6:0]  auto_in_d_bits_source,	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
  output        auto_in_d_bits_corrupt	// @[generators/diplomacy/diplomacy/src/diplomacy/lazymodule/LazyModuleImp.scala:106:25]
);

  wire [2:0]      da_bits_opcode;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:38:21]
  wire            _a_q_io_enq_ready;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire            _a_q_io_deq_valid;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [2:0]      _a_q_io_deq_bits_opcode;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [3:0]      _a_q_io_deq_bits_size;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [6:0]      _a_q_io_deq_bits_source;	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [7:0][2:0] _GEN = '{3'h4, 3'h4, 3'h2, 3'h1, 3'h1, 3'h1, 3'h0, 3'h0};
  wire [26:0]     _GEN_0 = {23'h0, _a_q_io_deq_bits_size};	// @[generators/rocket-chip/src/main/scala/util/package.scala:243:71, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  wire [26:0]     _a_last_beats1_decode_T = 27'hFFF << _GEN_0;	// @[generators/rocket-chip/src/main/scala/util/package.scala:243:71]
  wire [8:0]      a_last_beats1 = _a_q_io_deq_bits_opcode[2] ? 9'h0 : ~(_a_last_beats1_decode_T[11:3]);	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:92:37, :221:14, generators/rocket-chip/src/main/scala/util/package.scala:243:{46,71,76}, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  reg  [8:0]      a_last_counter;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
  wire            a_last = a_last_counter == 9'h1 | a_last_beats1 == 9'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :232:{25,33,43}]
  wire [26:0]     _r_beats1_decode_T = 27'hFFF << _GEN_0;	// @[generators/rocket-chip/src/main/scala/util/package.scala:243:71]
  wire [8:0]      r_beats1 = da_bits_opcode[0] ? ~(_r_beats1_decode_T[11:3]) : 9'h0;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:38:21, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:106:36, :221:14, generators/rocket-chip/src/main/scala/util/package.scala:243:{46,71,76}]
  reg  [8:0]      r_counter;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
  wire            a_q_io_deq_ready = auto_in_d_ready & (r_counter == 9'h1 | r_beats1 == 9'h0) | ~a_last;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:35:{26,46,49}, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :232:{25,33,43}]
  wire            da_valid = _a_q_io_deq_valid & a_last;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:36:25, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:232:33, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign da_bits_opcode = _GEN[_a_q_io_deq_bits_opcode];	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:38:21, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  always @(posedge clock) begin	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
    if (reset) begin	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
      a_last_counter <= 9'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
      r_counter <= 9'h0;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
    end
    else begin	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
      if (a_q_io_deq_ready & _a_q_io_deq_valid)	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:35:46, src/main/scala/chisel3/util/Decoupled.scala:51:35, :362:21]
        a_last_counter <= a_last_counter == 9'h0 ? a_last_beats1 : a_last_counter - 9'h1;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :230:28, :231:25, :236:21]
      if (auto_in_d_ready & da_valid)	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:36:25, src/main/scala/chisel3/util/Decoupled.scala:51:35]
        r_counter <= r_counter == 9'h0 ? r_beats1 : r_counter - 9'h1;	// @[generators/rocket-chip/src/main/scala/tilelink/Edges.scala:221:14, :229:27, :230:28, :231:25, :236:21]
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
      `FIRRTL_BEFORE_INITIAL	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
    initial begin	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
        `INIT_RANDOM_PROLOG_	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
        a_last_counter = _RANDOM[/*Zero width*/ 1'b0][9:1];	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
        r_counter = _RANDOM[/*Zero width*/ 1'b0][18:10];	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:229:27]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
      `FIRRTL_AFTER_INITIAL	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  TLMonitor_21 monitor (	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
    .clock                (clock),
    .reset                (reset),
    .io_in_a_ready        (_a_q_io_enq_ready),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_a_valid        (auto_in_a_valid),
    .io_in_a_bits_opcode  (auto_in_a_bits_opcode),
    .io_in_a_bits_param   (auto_in_a_bits_param),
    .io_in_a_bits_size    (auto_in_a_bits_size),
    .io_in_a_bits_source  (auto_in_a_bits_source),
    .io_in_a_bits_address (auto_in_a_bits_address),
    .io_in_a_bits_mask    (auto_in_a_bits_mask),
    .io_in_a_bits_corrupt (auto_in_a_bits_corrupt),
    .io_in_d_ready        (auto_in_d_ready),
    .io_in_d_valid        (da_valid),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:36:25]
    .io_in_d_bits_opcode  (da_bits_opcode),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:38:21]
    .io_in_d_bits_size    (_a_q_io_deq_bits_size),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_source  (_a_q_io_deq_bits_source),	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .io_in_d_bits_corrupt (da_bits_opcode[0])	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:38:21, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:106:36]
  );	// @[generators/rocket-chip/src/main/scala/tilelink/Nodes.scala:27:25]
  Queue1_TLBundleA_a14d64s7k1z4u a_q (	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (_a_q_io_enq_ready),
    .io_enq_valid        (auto_in_a_valid),
    .io_enq_bits_opcode  (auto_in_a_bits_opcode),
    .io_enq_bits_param   (auto_in_a_bits_param),
    .io_enq_bits_size    (auto_in_a_bits_size),
    .io_enq_bits_source  (auto_in_a_bits_source),
    .io_enq_bits_address (auto_in_a_bits_address),
    .io_enq_bits_mask    (auto_in_a_bits_mask),
    .io_enq_bits_data    (auto_in_a_bits_data),
    .io_enq_bits_corrupt (auto_in_a_bits_corrupt),
    .io_deq_ready        (a_q_io_deq_ready),	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:35:46]
    .io_deq_valid        (_a_q_io_deq_valid),
    .io_deq_bits_opcode  (_a_q_io_deq_bits_opcode),
    .io_deq_bits_size    (_a_q_io_deq_bits_size),
    .io_deq_bits_source  (_a_q_io_deq_bits_source)
  );	// @[src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_a_ready = _a_q_io_enq_ready;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_valid = da_valid;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, :36:25]
  assign auto_in_d_bits_opcode = da_bits_opcode;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, :38:21]
  assign auto_in_d_bits_size = _a_q_io_deq_bits_size;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_source = _a_q_io_deq_bits_source;	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, src/main/scala/chisel3/util/Decoupled.scala:362:21]
  assign auto_in_d_bits_corrupt = da_bits_opcode[0];	// @[generators/rocket-chip/src/main/scala/devices/tilelink/Error.scala:21:9, :38:21, generators/rocket-chip/src/main/scala/tilelink/Edges.scala:106:36]
endmodule

