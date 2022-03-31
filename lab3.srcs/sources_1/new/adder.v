`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 07:07:57 PM
// Design Name: 
// Module Name: adder
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


module cAdder(
    input a,
    input b,
    output [1:0] out
    );
    
    assign out = a + b;

endmodule

module bAdder(
    input a, 
    input b,
    output [1:0] out  
);

    xor g1(out[0], a, b);
    and g2(out[1], a, b);
    
endmodule
    