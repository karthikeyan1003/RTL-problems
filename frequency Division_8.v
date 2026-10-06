module divide_by_8 (
    input  wire clk,
    input  wire rst,
    output reg  clk_out
);

    reg [2:0] count;

    always @(posedge clk) 
    begin
        if (~rst) 
        begin
            count <= 3'd0;
            clk_out <= 1'b0;
        end 
        else 
        begin
            if (count == 3'd3) 
            begin
                count <= 3'd0;
                clk_out <= ~clk_out;
            end 
            else 
            begin
                count <= count + 1'b1;
            end
        end
    end

endmodule
