module tb_AND_OR();

reg [2:0] A_in;
reg [2:0] B_in;
wire [2:0] C_out1;
wire [2:0] C_out2;

OR_gate OR(
	.A(A_in),
	.B(B_in),
	.C(C_out1)
);

AND_gate AND(
        .A(A_in),
        .B(B_in),
        .C(C_out2)
);


initial begin
    A_in <= 3'b000;
    B_in <= 3'b000;
    #10 A_in <= 3'b100;
    B_in <= 3'b100;
    #10 A_in <= 3'b100;
    B_in <= 3'b010;
    #20 A_in <= 3'b111;
    B_in <= 3'b111;
    #40 $stop;
end

endmodule
