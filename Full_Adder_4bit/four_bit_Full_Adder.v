module Full_Adder(
    input wire  A_in,
    input wire  B_in,
    input wire  C_in,
    output wire  S_out,
    output wire  C_out
);

    wire  w1;
    wire  w2;
    wire  w3;

assign w1 =  A_in ^ B_in;
assign w2 = w1 & C_in;
assign w3 = A_in & B_in;

assign C_out = w2 | w3;
assign S_out = w1 ^ C_in;

endmodule


module four_bit_Full_Adder(
    input wire  [3:0] A_in,
    input wire  [3:0] B_in,
    input wire  C_in,
    output wire [3:0] S_out,
    output wire C_out

);

wire [2:0] carry;


Full_Adder one_bit(
    .A_in(A_in[0]),
    .B_in(B_in[0]),
    .C_in(C_in),
    .S_out(S_out[0]),
    .C_out(carry[0])
);

Full_Adder two_bit(
    .A_in(A_in[1]),
    .B_in(B_in[1]),
    .C_in(carry[0]),
    .S_out(S_out[1]),
    .C_out(carry[1])
);

Full_Adder three_bit(
    .A_in(A_in[2]),
    .B_in(B_in[2]),
    .C_in(carry[1]),
    .S_out(S_out[2]),
    .C_out(carry[2])
);
Full_Adder four_bit(
    .A_in(A_in[3]),
    .B_in(B_in[3]),
    .C_in(carry[2]),
    .S_out(S_out[3]),
    .C_out(C_out)
);

endmodule



