module shiftr4(
    input si,
    input clk,
    input rst,
    output reg [3:0] q
    );
    
    always @(posedge clk, posedge rst) begin
    if (rst) begin
        q = 0;
    end
    else begin
        q <= {si,q[3:1]};
    end
    end
 
endmodule
