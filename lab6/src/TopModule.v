module TopModule(
    input clk,
    input reset,
    input control,
    output [6:0] seg,
    output [3:0] an
);
    wire [4:0] pc;
    wire [31:0] instr;
    wire [2:0] ALUop;
    wire [4:0] rs1, rs2, rd;
    wire [31:0] imm, A, B, Result;
    wire isImmediate;

    wire doBranch;
    wire [4:0] branchTarget = imm[4:0];

    InstructionMemory imem(pc, instr);
    Decoder decoder(instr, ALUop, rs1, rs2, rd, imm, isImmediate);

    RegisterFile regfile(
        .clk(clk),
        .readReg1(rs1), .readReg2(rs2),
        .writeReg(rd), .writeData(Result),
        .regWrite(1'b1),
        .readData1(A), .readData2(B)
    );

    ALU alu(ALUop, A, B, imm, Result);

    assign doBranch = 
        (ALUop == 3'b000) ? 1'b1 :                // JUMP
        (ALUop == 3'b001 && A == B) ? 1'b1 :      // BEQ
        1'b0;

    ProgramCounter pc_module(clk, reset, control, branchTarget, doBranch, pc);

    SevenSegmentDisplay display_module(.clk(clk), .value(Result[15:0]), .seg(seg), 
.an(an));
endmodule

