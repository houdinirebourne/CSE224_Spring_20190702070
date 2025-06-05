module ProgramCounter(input clk, input reset, input control, output reg [4:0] pc);
    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 0;
        else if (control)
            pc <= pc + 1;
    end
endmodule

