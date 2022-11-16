`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 10:59:51 PM
// Design Name: 
// Module Name: counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input wire counter_clock_signal,
    input wire switch,
    output reg [7:0] counter = 0
    );
    
always @(posedge counter_clock_signal) begin
    if (switch == 0) begin
        counter <= counter;
    end
    if (switch == 1) begin
        counter <= counter + 1;
    end
end 
endmodule
