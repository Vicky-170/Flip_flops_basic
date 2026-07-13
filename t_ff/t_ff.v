`timescale 1ns/1ps
module t_ff (input t, clk, output reg q, output qbar);
    assign qbar = ~q;
    initial q = 0;
    always @(posedge clk) begin
        if (t)
            q <= ~q;
    end
endmodule