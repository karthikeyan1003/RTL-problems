module fulladd(sum,C_out,A,B,C_in);
input A,B,C_in;
output reg sum;
output reg C_out;
always@(*)
begin
sum= A^B^C_in;
C_out= (A&B)|(A&C_in)|(B&C_in);
end
endmodule
