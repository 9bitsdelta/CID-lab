module fsm_ctrl(
    input       rst,
    input       clk,
    input       push,
    input       [3:0] din,
    output reg  [3:0] limith,
    output reg  [3:0] limitl
    );

    localparam STATE_INIT = 0;    
    localparam STATE_B1 = 1;
    localparam STATE_B2 = 2;
    
    reg [1:0] state;
    
    always @(posedge clk) begin
        if (~rst) state = STATE_INIT;
        case(state)
        STATE_INIT: begin
            limith = 9;
            limitl = 0;
            if (push) state = STATE_B1;
            end
        STATE_B1: begin
            limitl <= din;
            if (push) state = STATE_B2;
            end    
        STATE_B2: begin
            limith <= din;
            if (push) state = STATE_B1;
            end
        default: state = STATE_INIT;        
        endcase
    end
    
endmodule
