module counter(
    input wire enable,
    input wire clk,
    input wire reset,
    output wire [7:0] out

);

reg [7:0] data = 8'b00000000;


always @ (posedge clk)begin

    if((enable == 1'b1) && (reset == 1'b0))begin
        assign data  = data + 8'b00000001;
    end
    else if(reset == 1'b1 )begin
        assign data  =  8'b00000000;
    end

end

assign out = data;


endmodule