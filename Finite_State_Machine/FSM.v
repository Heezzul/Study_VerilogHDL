module FSM_prac1(
    input wire clk,
    input wire reset,
    input wire enable,
    output reg data
);

reg [1:0] state;

parameter IDLE = 2'b00;
parameter START = 2'b01;
parameter STOP = 2'b10;
parameter FINSH = 2'b11;

parameter HIGH = 1'b1;
parameter LOW = 1'b0;

always @ (posedge clk) begin

if(reset == HIGH) begin
    data <= LOW;
    state <= IDLE;
end
else begin
    case(state)

    IDLE: begin
        if(enable == HIGH)begin
            state <= START;
        end
        else begin
            state <= IDLE;
        end
    end

    START: begin
        data <= HIGH;
        state <= STOP;
    end

    STOP: begin
        data <= LOW;
        state <= FINSH;
    end

    FINSH: begin
        state <= IDLE;;
    end

    endcase
    end

end

endmodule

    
