`timescale 1ns/1ns
module tb_Full_Adder();

reg [3:0] A_in;
reg [3:0] B_in;
reg C_in;
wire [3:0] S_out;
wire C_out;

four_bit_Full_Adder MUT(
    .A_in(A_in),
    .B_in(B_in),
    .C_in(C_in),
    .S_out(S_out),
    .C_out(C_out)

);

initial begin
    A_in <= 4'd5;
    B_in <= 4'd6;
    C_in <=0;

    #20 A_in <= 4'd8;
    B_in <= 4'd7;
    C_in <=0;
    #30 $stop;
end

endmodule
