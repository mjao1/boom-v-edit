// Generated by CIRCT unknown git version

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
module Mul54(	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
  input          clock,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
  input          io_val_s0,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:87:16]
  input          io_latch_a_s0,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:87:16]
  input  [53:0]  io_a_s0,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:87:16]
  input          io_latch_b_s0,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:87:16]
  input  [53:0]  io_b_s0,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:87:16]
  input  [104:0] io_c_s2,	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:87:16]
  output [104:0] io_result_s3	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:87:16]
);

  reg         val_s1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:97:21]
  reg         val_s2;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:98:21]
  reg [53:0]  reg_a_s1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:99:23]
  reg [53:0]  reg_b_s1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:100:23]
  reg [53:0]  reg_a_s2;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:101:23]
  reg [53:0]  reg_b_s2;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:102:23]
  reg [104:0] reg_result_s3;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:103:28]
  always @(posedge clock) begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
    val_s1 <= io_val_s0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:97:21]
    val_s2 <= val_s1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:97:21, :98:21]
    if (io_val_s0 & io_latch_a_s0)	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:99:23, :108:22, :109:30, :110:22]
      reg_a_s1 <= io_a_s0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:99:23]
    if (io_val_s0 & io_latch_b_s0)	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:100:23, :108:22, :112:30, :113:22]
      reg_b_s1 <= io_b_s0;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:100:23]
    if (val_s1) begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:97:21]
      reg_a_s2 <= reg_a_s1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:99:23, :101:23]
      reg_b_s2 <= reg_b_s1;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:100:23, :102:23]
    end
    if (val_s2)	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:98:21]
      reg_result_s3 <= {51'h0, reg_a_s2} * {51'h0, reg_b_s2} + io_c_s2;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:101:23, :102:23, :103:28, :123:{36,55}]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:10];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
    initial begin	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
        `INIT_RANDOM_PROLOG_	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
        for (logic [3:0] i = 4'h0; i < 4'hB; i += 4'h1) begin
          _RANDOM[i] = `RANDOM;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
        end	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
        val_s1 = _RANDOM[4'h0][0];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :97:21]
        val_s2 = _RANDOM[4'h0][1];	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :97:21, :98:21]
        reg_a_s1 = {_RANDOM[4'h0][31:2], _RANDOM[4'h1][23:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :97:21, :99:23]
        reg_b_s1 = {_RANDOM[4'h1][31:24], _RANDOM[4'h2], _RANDOM[4'h3][13:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :99:23, :100:23]
        reg_a_s2 = {_RANDOM[4'h3][31:14], _RANDOM[4'h4], _RANDOM[4'h5][3:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :100:23, :101:23]
        reg_b_s2 = {_RANDOM[4'h5][31:4], _RANDOM[4'h6][25:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :101:23, :102:23]
        reg_result_s3 = {_RANDOM[4'h6][31:26], _RANDOM[4'h7], _RANDOM[4'h8], _RANDOM[4'h9], _RANDOM[4'hA][2:0]};	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :102:23, :103:28]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_result_s3 = reg_result_s3;	// @[generators/hardfloat/hardfloat/src/main/scala/DivSqrtRecF64.scala:85:7, :103:28]
endmodule

