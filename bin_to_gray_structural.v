module bin_to_gray_structural (x1, x2, x3, x4, z1, z2 ,z3, z4);

input x1, x2, x3, x4;
output z1, z2, z3, z4;

buf inst1 (z1,x1);
xor inst2 (z2, x1, x2);
xor inst3 (z3, x2, x3);
xor inst4 (z4, x3, x4);

endmodule

