module divide_by_9 (
    input  wire clk,
    input  wire rst,
    output reg  clk_out
);
    reg [4:0] count;

    always @(posedge clk or negedge clk) 
    begin
        if (~rst) 
        begin
            count     <= 5'd0;
            clk_out <= 1'b0;
        end 
        else 
        begin
            if (count == 5'd17) 
            begin
                count     <= 5'd0;
                clk_out <= ~clk_out;
            end 
            else 
            begin
                count <= count + 1'b1;
                if (count == 5'd8)
                    clk_out <= ~clk_out;
            end
        end
    end
endmodule 
