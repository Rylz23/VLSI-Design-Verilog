module bin_to_gray_tb;

reg x1, x2, x3, x4;
wire z1, z2, z3, z4;

initial
begin: apply_stimulus
	reg [4:0] invect;
	for (invect=0; invect<16; invect=invect+1)
		begin
			{x1, x2, x3, x4} = invect [4:0];
			#10	$display	("{x1x2x3x4}=%b, {z1z2z3z4}=%b", {x1, x2, x3, x4}, {z1, z2, z3, z4});
		end
end
//change according to module used
bin_to_gray_behavioral inst1 (
	.x1(x1),
	.x2(x2),
	.x3(x3),
	.x4(x4),
	.z1(z1),
	.z2(z2),
	.z3(z3),
	.z4(z4)
);

endmodule

