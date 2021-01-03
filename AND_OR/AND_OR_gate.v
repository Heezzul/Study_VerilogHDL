module AND_gate(
    input wire [2:0] A,
    input wire [2:0] B,
    output wire[2:0] C
);

assign C = A & B;

endmodule

module OR_gate(
    input wire [2:0] A,
    input wire [2:0] B,
    output wire [2:0] C
);

assign C = A | B;

endmodule
