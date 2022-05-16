module fsm_cnt(
    input rst,
    input clk,
    input [3:0] limith,
    input [3:0] limitl,
    input [3:0] bcd,
    output reg dir
);

reg [1:0] state;

localparam STATE_INIT   = 0;
localparam STATE_RISE   = 1;
localparam STATE_FALL   = 2;
localparam STATE_ERR    = 3;

always @(posedge clk) begin    
    if (~rst) state = STATE_INIT;
    case(state)
    STATE_INIT: begin
        dir = 0;
        state = STATE_RISE;
    end
    STATE_RISE: begin
        if (bcd + 1 > limith) begin
            dir = ~dir;
            state = STATE_FALL;
        end
    end
    STATE_FALL: begin
        if (bcd - 1 < limitl) begin
            dir = ~dir;
            state = STATE_RISE;
        end    
    end
    endcase
end
    
endmodule
