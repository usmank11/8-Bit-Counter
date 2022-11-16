`timescale 1ns / 1ps

module bcd_control (
    input [3:0] digit1, // ones
    input [3:0] digit2, // tens
    input [3:0] digit3, // hundreds
    input [3:0] digit4, // thousands
    input [1:0] refresh_counter,
    output reg [3:0] one_digit = 0
    );

always @(refresh_counter) begin
    case(refresh_counter)
        2'd0:
            one_digit = digit1; // digit 1 value
        2'd1:
            one_digit = digit2; // digit 2 value
        2'd2:
            one_digit = digit3; // digit 3 value
        2'd3:
            one_digit = digit4; // digit 4 value
    endcase
end




endmodule