module divider_by_4 (
    input wire clk, 
    input wire rst,
    output reg q_bar
);

    reg q0;
    reg q1;

    always @(posedge clk) 
    begin
        if (~rst) 
        begin
            q0 <= 1'b0;
            q1 <= 1'b0;
        end
        else
        begin
         q0 <= ~q0;
         q1 <= q1 ^ q0;
    end

    assign q_bar = q1;
   
   end

endmodule
