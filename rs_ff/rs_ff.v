`timescale 1ns/1ps
module rs_ff (input r, s, clk, output reg q, output qbar);
    assign qbar = ~q;
    initial q = 0;
    always @(posedge clk) begin
        case ({s, r})
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= 1'bx;
		default: q <= q;
        endcase
    end
endmodule