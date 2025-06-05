module ALU(
    input [2:0] ALUop,
    input [31:0] A,
    input [31:0] B,
    input [31:0] Imm,
    output reg [31:0] Result
);
    always @(*) begin
        case(ALUop)
            3'b000, 3'b001: Result = 32'b0;
            3'b010: Result = A + B;
            3'b011: Result = A - B;
            3'b100: Result = A << B;
            3'b101: Result = A >> B;
            3'b110: Result = A + Imm;
            3'b111: Result = A - Imm;
            default: Result = 32'b0;
        endcase
    end
endmodule
