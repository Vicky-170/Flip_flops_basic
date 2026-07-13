`timescale 1ns/1ps
module d_ff (input d, clk, output reg q, output qbar);
    assign qbar = ~q;
    initial q = 0;
    always @(posedge clk) begin
        q <= d;
    end
endmodule