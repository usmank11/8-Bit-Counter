`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 09:41:16 PM
// Design Name: 
// Module Name: top
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


module top(
    input wire clk,
    input wire switch,
    output wire [3:0] anode,
    output wire [7:0] cathode
    );
    
wire refresh_clk;
wire counter_clock_signal;
wire [7:0] eight_bit_counter_val;
wire [3:0] ones;
wire [3:0] tens;
wire [3:0] hundreds;


clock_divider #(4999) refreshclk_generator (clk, refresh_clk);
clock_divider #(4999999) counterclk_generator (clk, counter_clock_signal);
counter eight_bit_counter (counter_clock_signal, switch, eight_bit_counter_val);
bin_to_bcd convert_bin_bcd (clk, eight_bit_counter_val, ones, tens, hundreds);
seven_seg_controller seg_controller (refresh_clk, ones, tens, hundreds, anode, cathode);

endmodule
