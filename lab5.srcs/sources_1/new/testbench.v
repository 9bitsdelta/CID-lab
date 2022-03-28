module top(
    input [3:0] a0,
    input [3:0] b0,
    input [3:0] a1,
    input [3:0] b1,
    output [3:0] s0,
    output [3:0] s1,
    output s2
);

wire intermid;

digitsum ds1(
    .a(a1),
    .b(b1),
    .ci(0),
    .co(intermid),
    .digit(s0)
);

digitsum ds2(
    .a(a0),
    .b(b0),
    .ci(intermid),
    .co(s2),
    .digit(s1)
);

endmodule



module testbench;
    reg [3:0] a0;
    reg [3:0] b0;
    reg [3:0] a1;
    reg [3:0] b1;
    wire [3:0] s0;
    wire [3:0] s1;
    wire s2;

top t(
    .a0(a0),
    .b0(b0),
    .a1(a1),
    .b1(b1),
    .s0(s0),
    .s1(s1),
    .s2(s2)
);

initial begin
    b0 = 0;
    #5;
    repeat(16) begin
        b0 = b0 + 2;
        if(b0 > 8)
            b0 = b0 - 8;
        #5;
    end
    b0 = 0;
end

initial begin
    b1 = 0;
    #5;
    repeat(4) begin
        b1 = b1 + 4;
        if(b1 > 8)
            b1 = b1 - 8;
        #20;
    end
    b1 = 0;
end

initial begin
    a0 = 0;
    #15;
    repeat(3) begin
        a0 = a0 + 3;
        if (a0 > 9)
            a0 = a0 - 9;
        #20;
    end
    a0 = 0;
end

initial begin
    a1 = 0;
    #25;
    repeat (3) begin
        a1 = a1 + 3;
        if (a1 > 9)
            a1 = a1 - 9;
        #20;
    end
    a1 = 0;
end

initial begin
    #100 $stop;
end

endmodule
