module rom16x8(
    input       [3:0] addra,
    output reg  [7:0] douta,
    input       [3:0] addrb,
    output reg  [7:0] doutb
    );

reg [7:0] mem [0:15];

initial begin
    mem[ 0] = 8'b00111111;
    mem[ 1] = 8'b00000110;
    mem[ 2] = 8'b00000000;
    mem[ 3] = 8'b00000000;
    mem[ 4] = 8'b00000000;
    mem[ 5] = 8'b00000000;
    mem[ 6] = 8'b00000000;
    mem[ 7] = 8'b00000000;
    mem[ 8] = 8'b00000000;
    mem[ 9] = 8'b00000000;
    mem[10] = 8'b00000000;
    mem[11] = 8'b00000000;
    mem[12] = 8'b00000000;
    mem[13] = 8'b00000000;
    mem[14] = 8'b00000000;
    mem[15] = 8'b00000000;
end

always @(*) begin
    douta = mem[addra];
    doutb = mem[addrb]; 
end

endmodule
