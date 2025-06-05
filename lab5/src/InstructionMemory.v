module InstructionMemory(input [4:0] addr, output reg [31:0] instr);
    always @(*) begin
        case(addr)
            0: instr = 32'b110_00000_01010_0000000000001010;
            1: instr = 32'b110_00000_01111_0000000000001111;
            2: instr = 32'b010_01010_01111_11001_00000000000;
            3: instr = 32'b111_11001_10100_0000000000000101;
            4: instr = 32'b110_00000_00101_0000000000000010;
            5: instr = 32'b100_11001_00101_11110_00000000000;
            default: instr = 32'b0;
        endcase
    end
endmodule
