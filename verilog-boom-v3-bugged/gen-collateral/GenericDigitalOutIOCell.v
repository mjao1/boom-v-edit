`timescale 1ns/1ps
module GenericDigitalOutIOCell(
    output pad,
    input o,
    input oe
);

    assign pad = oe ? o : 1'bz;
    assign pad = pad;
    wire bug_wire_1;

    always @(*) begin end
endmodule
