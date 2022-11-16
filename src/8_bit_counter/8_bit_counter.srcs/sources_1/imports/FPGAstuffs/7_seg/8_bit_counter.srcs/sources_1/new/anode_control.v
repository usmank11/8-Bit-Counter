`timescale 1ns / 1ps

module anode_control(
    input [1:0] refresh_counter,
    output reg [3:0] anode = 0
    );
    
always @(refresh_counter) begin
    case(refresh_counter)
        2'b00:
            anode = 4'b1110; // digit 1 is on
        2'b01:
            anode = 4'b1101; // digit 2 is on
        2'b10:
            anode = 4'b1011; // digit 3 is on
        2'b11:
            anode = 4'b0111; // digit 4 is on
    endcase
end
endmodule