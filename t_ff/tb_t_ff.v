`timescale 1ns/1ps
module tb_t_ff;
    reg t, clk;
    wire q, qbar;
    
    t_ff uut (.t(t), .clk(clk), .q(q), .qbar(qbar));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        t = 0;
        #10 t = 1;
        #20 t = 0;
        #10 t = 1;
        #10 $finish;
    end
initial begin
	$dumpfile("Wave.vcd");
	$dumpvars(0, tb_t_ff);
end
endmodule