`timescale 1ns / 1ps
module seven_seg_controller(
    input wire refresh_clk,
    input wire [3:0] ones,
    input wire [3:0] tens,
    input wire [3:0] hundreds,
    output wire [3:0] anode,
    output wire [7:0] cathode
    );

wire [1:0] refresh_counter;
wire [3:0] one_digit;

refresh_counter refreshcounter_wrapper (
.refresh_clk(refresh_clk),
.refresh_counter(refresh_counter)
);

anode_control anode_control_wrapper (
.refresh_counter(refresh_counter),
.anode(anode)
);

bcd_control bcd_control_wrapper (
.digit1(ones),
.digit2(tens),
.digit3(hundreds),
.digit4(4'd0),
.refresh_counter(refresh_counter),
.one_digit(one_digit)
);

bcd_to_cathodes bcd_to_cathodes_wrapper (
.digit(one_digit),
.cathode(cathode)
);

endmodule
