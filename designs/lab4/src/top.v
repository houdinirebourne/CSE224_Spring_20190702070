module top(
    input CLK,
    input WE3,
    input [4:0] A1, A2, A3,
    input [31:0] WD3,
    input [1:0] ALUOp,
    output [31:0] ALUResult
);
    wire [31:0] RD1, RD2;

    RegisterFile regfile (
        .CLK(CLK),
        .WE3(WE3),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .WD3(WD3),
        .RD1(RD1),
        .RD2(RD2)
    );

    ALU alu (
        .in1(RD1),
        .in2(RD2),
        .opcode(ALUOp),
        .result(ALUResult)
    );
endmodule

