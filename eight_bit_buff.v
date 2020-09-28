module eight_bit_buff(D, I, E);
input [7:0] I;
input E;
output [7:0] D;

bufif1 (D[0],I[0],E);
bufif1 (D[1],I[1],E);
bufif1 (D[2],I[2],E);
bufif1 (D[3],I[3],E);
bufif1 (D[4],I[4],E);
bufif1 (D[5],I[5],E);
bufif1 (D[6],I[6],E);
bufif1 (D[7],I[7],E);

endmodule




