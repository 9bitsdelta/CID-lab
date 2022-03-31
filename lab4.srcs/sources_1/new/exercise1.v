module c_encoder(
    input [7:0] shift, //key; is between 0 and 26 (needs 5 bits)
    input [7:0] string, //
    output reg [7:0] out
    );

always @(*) begin
    if (string + shift > 8'h5a)
        assign out = string + shift - 8'h1a;
    else
        assign out = string + shift;    
end
    
endmodule



module c_decoder(
    input [7:0] shift, //key; is between 0 and 26 (needs 5 bits)
    input [7:0] string, //
    output reg [7:0] out
    );
    
always @(*) begin
    if (string - shift < 8'h41)
        assign out = string - shift + 8'h1a;
    else
        assign out = string - shift;
end
    
endmodule