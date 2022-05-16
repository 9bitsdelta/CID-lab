module pulsegen(
    input       rst,
    input       clk,
    output reg  pulse
    );
    
    reg [26:0] cnt;
    parameter CYCLE = 125000000;
    
    always @(posedge clk) begin
        case(rst)
        1'b0: cnt <= 0;
        1'b1: cnt <= cnt + 1;
        endcase
        
        if (cnt == CYCLE) begin
            pulse = 1;
            cnt = 0;
        end else pulse = 0;
    end
    
endmodule
