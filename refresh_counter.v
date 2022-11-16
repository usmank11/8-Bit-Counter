`timescale 1ns / 1ps

module refresh_counter(
    input refresh_clk,
    output reg [1:0] refresh_counter = 0
    );
    
always @(posedge refresh_clk)
    refresh_counter <= refresh_counter + 1;
endmodule
