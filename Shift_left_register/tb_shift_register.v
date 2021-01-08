`timescale 1ns/1ns
module testbench();

reg clk;
wire [3:0] in;

initial begin
    clk<=0;
    #5 $stop;
   
end

always #1 clk = ~clk;

shift_left_register slr(
    .clk(clk),
    .out(in)
);

endmodule