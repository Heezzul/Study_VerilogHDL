`timescale 1ns/1ns
module testbench();

reg clk;
reg reset;
reg enable;
wire [7:0] out;


initial begin
    
    clk<=0;   
    enable <= 1'b0;
    reset <= 1'b0;
    #5 enable <= 1'b1;
    #10 reset <= 1'b1;
    #15 enable <= 1'b0;
     
    #20 $stop;
   
end

always #1 clk = ~clk;

counter cou(
   .enable(enable),
   .clk(clk),
   .reset(reset),
   .out(out)

);

endmodule