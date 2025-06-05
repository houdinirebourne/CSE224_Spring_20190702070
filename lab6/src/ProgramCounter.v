module ProgramCounter(
    input clk,
    input reset,
    input control,
    input [4:0] branchTarget,
    input doBranch,
    output reg [4:0] pc
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 0;
        else if (control) begin
            if (doBranch)
                pc <= branchTarget;
            else
                pc <= pc + 1;
        end
    end
endmodule

