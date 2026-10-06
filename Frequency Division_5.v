module divide_by_5 (
    input  wire clk,
    input  wire rst,
    output reg  clk_out
);
    reg [3:0] count;

    always @(posedge clk or negedge clk) 
    begin
        if (~rst) 
        begin
            count     <= 4'd0;
            clk_out <= 1'b0;
        end 
        else 
        begin
            if (count == 4'd9) 
            begin
                count     <= 4'd0;
                clk_out <= ~clk_out;
            end 
            else 
            begin
                count <= count + 1'b1;
                if (count == 4'd4)
                    clk_out <= ~clk_out;
            end
        end
    end
endmodule
