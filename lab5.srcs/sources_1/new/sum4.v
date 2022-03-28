module sum4(
    input [3:0] a,
    input [3:0] b,
    input c,
    output [4:0] s
    );
    
    assign s = a + b + c;
    
//    wire c0 = c;
    
//    assign s[0] = a[0] ^ b[0] ^ c0;
//    assign c0 = (c0 & (a[0] ^ b[0])) | (a[0] & b[0]);
    
//    assign s[1] = a[1] ^ b[1] ^ c0;
//    assign c0 = (c0 & (a[1] ^ b[1])) | (a[1] & b[1]);
    
//    assign s[2] = a[2] ^ b[2] ^ c0;
//    assign c0 = (c0 & (a[2] ^ b[2])) | (a[2] & b[2]);
    
//    assign s[3] = a[3] ^ b[3] ^ c0;
//    assign c0 = (c0 & (a[3] ^ b[1])) | (a[1] & b[1]);
    
endmodule

module mux(
    input [3:0] i0,
    input [3:0] i1,
    input sel,
    output reg [3:0] y
    );

    always @(*) begin
        case (sel)
            0: y = i0;
            1: y = i1;
            default: y = 0;
        endcase
    end
endmodule

module cmp(
    input [4:0] a,
    output reg gt
    );

    always @(*) begin
        if (a > 9)
             gt = 1;
        else
             gt = 0;
    end
    
endmodule

module digitsum (
    input [3:0] a,
    input [3:0] b,
    input ci,
    output co,
    output [3:0] digit
);

wire [4:0] mid;
wire [3:0] s_mid;

sum4 s1(
    .a(a),
    .b(b),
    .c(ci),
    .s(mid)
);

assign s_mid = mid[3:0];

cmp c(
    .a(mid),
    .gt(co)
);

wire [3:0] other;

sum4 s2(
    .a(s_mid),
    .b(6),
    .c(0),
    .s(other)
);

mux m(
    .i0(s_mid),
    .i1(other),
    .sel(co),
    .y(digit)
);

endmodule












