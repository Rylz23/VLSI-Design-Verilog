`timescale 1 ns/10 ps
module minority_tb;
reg A, B, C, D;
wire Z;

minority UUT (.A(A), .B(B), .C(C), .D(D), .Z(Z));
initial
	begin
	$monitor(
	"A=%b B= %b C=%b D=%b Z=%b",A,B,C,D,Z);
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		#5
		A = 0;
		B = 0;
		C = 0;
		D = 1;
		#5
		A = 0;
		B = 0;
		C = 1;
		D = 0;
		#5
		A = 0;
		B = 0;
		C = 1;
		D = 1;
		#5
		A = 0;
		B = 1;
		C = 0;
		D = 0;
		#5
		A = 0;
		B = 1;
		C = 0;
		D = 1;
		#5
		A = 0;
		B = 1;
		C = 1;
		D = 0;
		#5
		A = 0;
		B = 1;
		C = 1;
		D = 1;
		#5
		A = 1;
		B = 1;
		C = 1;
		D = 1;
		#5
		$finish;
end
endmodule
