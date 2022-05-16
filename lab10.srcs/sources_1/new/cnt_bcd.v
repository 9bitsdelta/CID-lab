module cnt_bcd(
    input       rst,
    input       clk,
    input       cen,
    input       dir,
    output reg  [3:0] bcd
    );
    
    always @(posedge clk) begin
        case ({rst, cen, dir})
        3'b0XX: bcd <= 0;
        3'b10X: bcd <= bcd;
        3'b110: bcd <= bcd + 1;
        3'b111: bcd <= bcd - 1;
        endcase
    end
    
endmodule
