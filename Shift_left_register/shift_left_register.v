module shift_left_register(
    input wire clk,    
    output wire [3:0] out

);
reg [3:0] data = 4'b0001;

always @ (posedge clk)begin

    data = data << 1;

end

assign out = data;

endmodule