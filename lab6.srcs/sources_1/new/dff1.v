module dff1(
    input d,
    input clk,
    input rst,
    output reg q
    );
    
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            q = 0;
        end
        else begin
            q <= d;
        end
    end
    
endmodule
