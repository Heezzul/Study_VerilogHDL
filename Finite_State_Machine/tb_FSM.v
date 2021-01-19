`timescale 1ns/1ns
module FSMtb();

reg clk;
reg reset;
reg enable;
wire data;

initial begin
    clk <=0;
    reset<=1;
    enable<=0;
    #5 reset<= 0;
    #5 enable <= 1;
    #5 enable <= 0;
    #5 enable <= 1;
    #30 reset <= 1;
    #5 $stop;
end

always #1 clk = ~clk;

FSM_prac1 FSM(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .data(data)
);


endmodule
