`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 09:17:46 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider #(parameter div_val = 4999)(
    input wire clk,
    output reg divided_clk = 0
    );
    

integer counter_val = 0;

always @(posedge clk) begin
    if (counter_val == div_val)
        counter_val <= 0;
    else
        counter_val <= counter_val + 1; 
end

always @(posedge clk) begin
    if (counter_val == div_val)
        divided_clk <= ~divided_clk;
    else
        divided_clk <= divided_clk;
end
endmodule
