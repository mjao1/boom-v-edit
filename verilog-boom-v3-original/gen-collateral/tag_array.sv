// Generated by CIRCT unknown git version
module tag_array(	// @[generators/rocket-chip/src/main/scala/rocket/HellaCache.scala:339:30]
  input  [5:0]   RW0_addr,
  input          RW0_en,
  input          RW0_clk,
  input          RW0_wmode,
  input  [175:0] RW0_wdata,
  output [175:0] RW0_rdata,
  input  [7:0]   RW0_wmask
);

  tag_array_ext tag_array_ext (	// @[generators/rocket-chip/src/main/scala/rocket/HellaCache.scala:339:30]
    .RW0_addr  (RW0_addr),
    .RW0_en    (RW0_en),
    .RW0_clk   (RW0_clk),
    .RW0_wmode (RW0_wmode),
    .RW0_wdata (RW0_wdata),
    .RW0_rdata (RW0_rdata),
    .RW0_wmask (RW0_wmask)
  );	// @[generators/rocket-chip/src/main/scala/rocket/HellaCache.scala:339:30]
endmodule

