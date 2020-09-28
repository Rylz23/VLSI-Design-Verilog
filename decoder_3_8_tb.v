module decoder_3_8_tb();
	reg [2:0] inputs;
	reg enable;
	wire [7:0] o_structural;
	wire [7:0] o_behavioral;
initial
begin: apply_stimulus

	reg [4:0] invect;
	for (invect = 0; invect < 16; invect = invect + 1)
		begin
			{enable, inputs[2], inputs[1], inputs[0]} = invect[4:0];
			#10 $monitor ("#structural# enable = %b, inputs inputs[2:0]=%b, outputs  d[7:0]=%b", enable, inputs[2:0],o_structural[7:0]);
 		end
	for (invect = 0; invect < 16; invect = invect + 1)
		begin
			{enable, inputs[2], inputs[1], inputs[0]} = invect[4:0];
			#10 $monitor ("#behavioral# enable = %b, inputs inputs[2:0]=%b, outputs d[7:0]=%b", enable, inputs[2:0], o_behavioral[7:0]);
 		end
end

decoder_3_8_structural inst_s (
	.en(enable),
	.i(inputs),
	.d(o_structural)
	);

decoder_3_8_behavioral inst_b (
	.en(enable),
	.i(inputs),
	.d(o_behavioral)
	);

endmodule
