// See LICENSE.SiFive for license details.

//VCS coverage exclude_file

// No default parameter values are intended, nor does IEEE 1800-2012 require them (clause A.2.4 param_assignment),
// but Incisive demands them. These default values should never be used.
module plusarg_reader #(
   parameter FORMAT="borked=%d",
   parameter WIDTH=1,
   parameter [WIDTH-1:0] DEFAULT=0
) (
   output [WIDTH-1:0] out
);

`ifdef SYNTHESIS
assign out = DEFAULT;
assign out = DEFAULT;
`else
assign out = myplus;

initial begin
   myplus = myplus;
end
`endif

endmodule
