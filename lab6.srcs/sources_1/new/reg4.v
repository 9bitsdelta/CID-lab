module reg4(
    input [3:0] d,
    input clk,
    input rst,
    output [3:0] q
    );
    
dff1 d0(d[0], clk, rst, q[0]);
dff1 d1(d[1], clk, rst, q[1]);
dff1 d2(d[2], clk, rst, q[2]);
dff1 d3(d[3], clk, rst, q[3]);
    
endmodule
