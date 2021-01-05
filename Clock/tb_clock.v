`timescale 1ns/1ps
module tb_clock();

reg clk;

always #5 clk = ~clk;

initial begin
    clk <= 0;
    #30 $stop;

end

endmodule
