module top(
    input [7:0] data_sent,
    input [7:0] shift1,
    input [7:0] shift2,
    output [7:0] data_received
);

wire [7:0] data_encoded;

c_encoder encoder(
    .shift (shift1),
    .string (data_sent),
    .out (data_encoded)
);

c_decoder decoder(
    .shift (shift2),
    .string (data_encoded),
    .out (data_received)
);

endmodule



module testbench;

reg [7:0] data_sent;
wire [7:0] out;

top t(
    .data_sent (data_sent),
    .shift1 (8'd13),
    .shift2 (8'd13),
    .data_received (out)
);

initial begin
    
    #0 data_sent = "A";
    repeat (25) #1 data_sent = data_sent + 1;
    #1 $stop;
end

endmodule
