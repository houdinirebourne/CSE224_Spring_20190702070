module RegisterFile(
    input clk,
    input [4:0] readReg1,
    input [4:0] readReg2,
    input [4:0] writeReg,
    input [31:0] writeData,
    input regWrite,
    output reg [31:0] readData1,
    output reg [31:0] readData2
);
    reg [31:0] registers[31:0];

    always @(posedge clk) begin
        if (regWrite)
            registers[writeReg] <= writeData;
    end

    always @(*) begin
        readData1 = registers[readReg1];
        readData2 = registers[readReg2];
    end
endmodule
