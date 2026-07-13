`timescale 1ns/1ps
module tb_jk_ff;
    reg j, k, clk;
    wire q, qbar;
    
    jk_ff uut (.j(j), .k(k), .clk(clk), .q(q), .qbar(qbar));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        j = 0; k = 0;
        #10 j = 1; k = 0;
        #10 j = 0; k = 0;
        #10 j = 0; k = 1;
        #10 j = 1; k = 1;
        #20 $finish;
    end
initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0, tb_jk_ff);
	end
endmodule