`timescale 1ns/1ps

module my_first_design (
    input wire [7:0] in,
    output wire [7:0] out
);
    assign out = (~in) + 8'b00000001;
endmodule
