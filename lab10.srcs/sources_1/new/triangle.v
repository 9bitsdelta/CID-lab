module triangle(
    input rst,
    input clk,
    input push,
    input din,
    input seg_din,
    input seg_bcd
    );

wire cen;

pulsegen pulsegen(rst, clk, pulse);

endmodule
