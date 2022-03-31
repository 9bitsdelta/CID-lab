`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 07:28:18 PM
// Design Name: 
// Module Name: mux
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


module lMux_2to1(
    input [1:0] in,
    input s,
    output reg out
    );
    
always @(*) begin
    if(s)
        assign out = in[0];
    else
        assign out = in[1];
end
    
endmodule

module bMux_2to1(
    input [1:0] in,
    input s,
    output out
    );

    assign out = ( in[0] & ~s ) | ( in[1] & s );    

endmodule

module gMux_2to1(
    input [1:0] in,
    input s,
    output out
    );

wire nots;
wire in0andnots;
wire in1ands;

    not n(nots, s);
    and a1(in0andnots, in[0], nots); 
    and a2(in1ands, in[1], s);
    or o(out, in0andnots, in1ands);
    
endmodule

module lMux_4to1(
    input [3:0] in,
    input [1:0] s,
    output out
    );
  
assign out = in[s];
    
endmodule

module gMux_4to1(
    input [3:0] in,
    input [1:0] s,
    output out
    );

wire [1:0] muxouts, high, low;

assign low[0] = in[0];
assign low[1] = in[1];
assign high[0] = in[2];
assign high[1] = in[3];

gMux_2to1 mux1(low, s[0], muxouts[0]);
gMux_2to1 mux2(high, s[0], muxouts[1]);
gMux_2to1 mux3(muxouts, s[1], out);
    
endmodule
    
    
    
    
    