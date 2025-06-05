module Decoder(
    input [31:0] instr,
    output reg [2:0] ALUop,
    output reg [4:0] rs1,
    output reg [4:0] rs2,
    output reg [4:0] rd,
    output reg [31:0] imm,
    output reg isImmediate
);
    always @(*) begin
        ALUop = instr[31:29];
        rs1 = instr[28:24];
        rs2 = instr[23:19];
        rd = instr[18:14];
        imm = {27'b0, instr[4:0]};
        isImmediate = (ALUop == 3'b110 || ALUop == 3'b111);
    end
endmodule

