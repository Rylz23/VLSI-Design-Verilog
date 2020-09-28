`timescale 1 ns/10 ps
module eight_bit_buff_tb;
reg [7:0] I;
reg E;
wire [7:0] D;
eight_bit_buff UUT (.D(D), .I(I), .E(E));

initial
	begin
		E = 0;
		I = 8'b11111111;
		#20;
		E = 1;
		#20;
		E = 0;
		#20;
		I = 8'b00011100;
		#20;
		E = 1;
		#100;
	end
endmodule
		
