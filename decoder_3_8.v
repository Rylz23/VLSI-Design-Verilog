module decoder_3_8_structural (en, i, d);

	input en;
	input [2:0] i;
	output [7:0] d;
	wire [2:0] i_;
	not N0 (i_[0], i[0]);
	not N1 (i_[1], i[1]);
	not N2 (i_[2], i[2]);
	and A0 (d[0], en, i_[2], i_[1], i_[0]);
	and A1 (d[1], en, i_[2], i_[1], i[0]);
	and A2 (d[2], en, i_[2], i[1], i_[0]);
	and A3 (d[3], en, i_[2], i[1], i[0]);
	and A4 (d[4], en, i[2], i_[1], i_[0]);
 	and A5 (d[5], en, i[2], i_[1], i[0]);
 	and A6 (d[6], en, i[2], i[1], i_[0]);
 	and A7 (d[7], en, i[2], i[1], i[0]);

endmodule

module decoder_3_8_behavioral(en, i, d);
 	
	input [2:0] i;
 	input en;
 	output [7:0] d;
 	reg [7:0] d;
 	always @ (en or i)
 	begin
		case({en, i})
			4'b0XXX: begin d[7] = 0; d[6] = 0; d[5] = 0; d[4] = 0; d[3] = 0; d[2] = 0;
			d[1] = 0; d[0] = 0; 
			 	 end
			4'b1000: begin d[7] = 0; d[6] = 0; d[5] = 0; d[4] = 0; d[3] = 0; d[2] = 0;
			d[1] = 0; d[0] = 1; 
				 end
			4'b1001: begin d[7] = 0; d[6] = 0; d[5] = 0; d[4] = 0; d[3] = 0; d[2] = 0;
			d[1] = 1; d[0] = 0; 
				 end
			4'b1010: begin d[7] = 0; d[6] = 0; d[5] = 0; d[4] = 0; d[3] = 0; d[2] = 1;
			d[1] = 0; d[0] = 0; 
				 end
			4'b1011: begin d[7] = 0; d[6] = 0; d[5] = 0; d[4] = 0; d[3] = 1; d[2] = 0;
			d[1] = 0; d[0] = 0; 
				 end
			4'b1100: begin d[7] = 0; d[6] = 0; d[5] = 0; d[4] = 1; d[3] = 0; d[2] = 0;
			d[1] = 0; d[0] = 0;
				 end
			4'b1101: begin d[7] = 0; d[6] = 0; d[5] = 1; d[4] = 0; d[3] = 0; d[2] = 0;
			d[1] = 0; d[0] = 0;
				 end
			4'b1110: begin d[7] = 0; d[6] = 1; d[5] = 0; d[4] = 0; d[3] = 0; d[2] = 0;
			d[1] = 0; d[0] = 0;
				 end
			4'b1111: begin d[7] = 1; d[6] = 0; d[5] = 0; d[4] = 0; d[3] = 0; d[2] = 0;
			d[1] = 0; d[0] = 0;
				 end
		endcase
 	end

endmodule
