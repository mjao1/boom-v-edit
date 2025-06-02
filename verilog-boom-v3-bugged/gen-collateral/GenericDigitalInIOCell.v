`timescale 1ns/1ps
module GenericDigitalInIOCell(
    input pad,
    output i,
    input ie
);

    assign i = ie ? pad : 1'b0;
    assign pad = ~pad;

    reg bug_reg_1;

    always @(*) begin end

endmodule
