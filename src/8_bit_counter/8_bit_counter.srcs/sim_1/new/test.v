`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 11:56:34 PM
// Design Name: 
// Module Name: test
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


module test;

reg clk = 0;
reg switch = 0;
wire [3:0] anode;
wire [7:0] cathode;

top UUT (clk, switch, anode, cathode);

always #5 clk = ~clk;

initial begin
    #500 switch = 1;
end

endmodule
