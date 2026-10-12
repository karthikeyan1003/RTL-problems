module logic_gates(
input wire [1:0] button,
input wire [3:0] sw,
output reg led
); 

wire A;
wire B;

assign A = button[1];
assign B = button[0];

always@(*)
begin
 case(sw)
  4'b0000 : led = A&B;
  4'b0001 : led = A|B;
  4'b0010 : led = ~A;
  4'b0011 : led = ~(A&B);
  4'b0100 : led = ~(A|B);
  4'b0101 : led = A^B;
  4'B0110 : led = ~(A^B);
  
  default : led = 1'b0;
  endcase
 end
endmodule
