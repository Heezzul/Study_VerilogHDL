`timescale 1ns/1ns
module tb_D_flipflop();

reg clk;
reg D;
wire Q;

initial begin
    clk <=0;
    D<=0;
    #5 D <= 1;
    #5 D <= 0;
    #5 $stop;
end

always #1 clk = ~clk;

D_flipflop u_d_flipflop(
    .clk(clk),
    .D(D),
    .Q(Q)
);

endmodule
