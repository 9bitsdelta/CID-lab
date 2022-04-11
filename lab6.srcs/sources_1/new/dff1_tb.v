module dff1_tb;

reg d;
reg clk;
wire [3:0] q;
reg rst;

shiftr4 dut(d, clk, rst, q);

initial begin
    clk = 0; 
    forever #5 clk = ~clk;
end

initial begin
    d = 0;
    forever #3 d = ~d;
end

initial begin
    rst = 1;
    #5 rst = 0;
    #15 rst = 1;
end

initial begin
       #50 $stop;
end

endmodule
