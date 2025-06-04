module ALU(
    input [31:0] in1,
    input [31:0] in2,
    input [1:0] opcode,
    output reg [31:0] result
);
    always @(*) begin
        case (opcode)
            2'b00: result = in1 + in2;
            2'b01: result = in1 - in2;
            2'b10: result = in1 << in2;
            2'b11: result = in1 >> in2;
        endcase
    end
endmodule
