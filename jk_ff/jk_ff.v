`timescale 1ns/1ps
module jk_ff (input j, k, clk, output reg q, output qbar);
    assign qbar = ~q;
    initial q = 0;
    always @(posedge clk) begin
        case ({j, k})
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= ~q;
		default: q <= q;
        endcase
    end
endmodule