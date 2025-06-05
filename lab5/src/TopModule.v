module TopModule(
    input clk,
    input reset,
    input control,
);
    wire [4:0] pc;
    wire [31:0] instr;
    wire [2:0] ALUop;
    wire [4:0] rs1, rs2, rd;
    wire [31:0] imm, A, B, Result;
    wire isImmediate;

    ProgramCounter pc_module(clk, reset, control, pc);
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
endmodule

