/* Author: Rylee Colleir
   Date Created: 09/21/2020
   Assignment: Lab 1
   Description: Behavioral level code for a binary to gray code number converter
module bin_to_gray_behavioral (x1, x2, x3, x4, z1, z2, z3, z4);

input x1, x2, x3, x4;
output reg z1, z2, z3, z4;

always @ (x1 or x2 or x3 or x4)
begin
	z1 = x1;
	z2 = x1 ^ x2;
	z3 = x2 ^ x3;
	z4 = x3 ^ x4;
end
endmodule
