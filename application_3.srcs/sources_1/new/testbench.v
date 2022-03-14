`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 07:10:57 PM
// Design Name: 
// Module Name: testbench
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


module testbench;

reg [3:0] in;
reg [1:0] s;

wire out;

gMux_4to1 muxer(
    .in(in),
    .s(s),
    .out(out)
);

initial begin
    {s, in} = 0;
    repeat (64)
        #5 {s, in} = {s, in} + 1;

    $stop;
end

endmodule
