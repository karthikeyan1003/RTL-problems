module divide_by_2(
input wire clk,
input wire rst,
output reg q,
output wire q_bar
);

always @(posedge clk)
begin
 if(~rst)
 begin
  q <= 1'b0;
 end
 else
 begin
 q <= ~q;
 end
end

assign q_bar = ~q;

endmodule
