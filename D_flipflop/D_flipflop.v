module D_flipflop(
    input wire clk,
    input wire D,
    output wire Q
);

reg data;

always @ (posedge clk)begin
    data <= D;
end

assign Q = data;

endmodule
