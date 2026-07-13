`timescale 1ns/1ps
module tb_d_ff;
    reg d, clk;
    wire q, qbar;
    
    d_ff uut (.d(d), .clk(clk), .q(q), .qbar(qbar));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        d = 0;
        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 $finish;
    end
initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0, tb_d_ff);
end
endmodule