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
module TLDFromBeat_SerialRAM_a64d64s8k8z8c(	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
  input         clock,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
  input         reset,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
  input         io_protocol_ready,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output        io_protocol_valid,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output [2:0]  io_protocol_bits_opcode,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output [1:0]  io_protocol_bits_param,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output [7:0]  io_protocol_bits_size,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output [7:0]  io_protocol_bits_source,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output [7:0]  io_protocol_bits_sink,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output        io_protocol_bits_denied,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output [63:0] io_protocol_bits_data,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output        io_protocol_bits_corrupt,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  output        io_beat_ready,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  input         io_beat_valid,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  input  [64:0] io_beat_bits_payload,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  input         io_beat_bits_head,	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
  input         io_beat_bits_tail	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14]
);

  reg         is_const;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:88:25]
  reg  [29:0] const_reg;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:89:22]
  wire [29:0] const_0 = io_beat_bits_head ? io_beat_bits_payload[29:0] : const_reg;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14, :89:22, :90:18]
  wire        io_beat_ready_0 = is_const & ~io_beat_bits_tail | io_protocol_ready;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:88:25, :91:{30,33,53}]
  wire        _GEN = io_beat_ready_0 & io_beat_valid;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:91:53, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  wire        _GEN_0 = _GEN & io_beat_bits_head;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:104:22, src/main/scala/chisel3/util/Decoupled.scala:51:35]
  always @(posedge clock) begin	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
    if (reset)	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
      is_const <= 1'h1;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:88:25, :134:7]
    else	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
      is_const <= _GEN & io_beat_bits_tail | ~_GEN_0 & is_const;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:88:25, :104:{22,44,55}, :105:{22,44,55}, src/main/scala/chisel3/util/Decoupled.scala:51:35]
    if (_GEN_0)	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:104:22]
      const_reg <= io_beat_bits_payload[29:0];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:75:14, :89:22]
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
    `ifdef FIRRTL_BEFORE_INITIAL	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
      `FIRRTL_BEFORE_INITIAL	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM[0:0];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
    initial begin	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
      `ifdef INIT_RANDOM_PROLOG_	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
        `INIT_RANDOM_PROLOG_	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
        is_const = _RANDOM[/*Zero width*/ 1'b0][0];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:88:25, :134:7]
        const_reg = _RANDOM[/*Zero width*/ 1'b0][30:1];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:88:25, :89:22, :134:7]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
      `FIRRTL_AFTER_INITIAL	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:134:7]
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_protocol_valid = (~is_const | io_beat_bits_tail) & io_beat_valid;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:88:25, :92:{22,32,54}, :134:7]
  assign io_protocol_bits_opcode = const_0[29:27];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:90:18, :97:22, :98:13, :134:7]
  assign io_protocol_bits_param = const_0[26:25];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:90:18, :97:22, :98:13, :134:7]
  assign io_protocol_bits_size = const_0[24:17];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:90:18, :97:22, :98:13, :134:7]
  assign io_protocol_bits_source = const_0[16:9];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:90:18, :97:22, :98:13, :134:7]
  assign io_protocol_bits_sink = const_0[8:1];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:90:18, :97:22, :98:13, :134:7]
  assign io_protocol_bits_denied = const_0[0];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:90:18, :97:22, :134:7]
  assign io_protocol_bits_data = io_beat_bits_payload[64:1];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:98:13, :134:7]
  assign io_protocol_bits_corrupt = io_beat_bits_payload[0];	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:97:22, :134:7]
  assign io_beat_ready = io_beat_ready_0;	// @[generators/testchipip/src/main/scala/serdes/TLChannelCompactor.scala:91:53, :134:7]
endmodule

