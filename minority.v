module minority(A,B,C,D,Z);
input A, B, C, D;
output Z;
wire o1,o2,o3,o4,o5,o6,o7,o8;
not I1(o1,A);
not I2(o2,B);
not I3(o3,C);
not I4(o4,D);
and A1(o5,o1,o3,o4);
and A2(o6,o2,o3,o4);
and A3(o7,o4,o1,o2);
and A4(o8,o3,o1,o2);
or OR1(Z,o5,o6,o7,o8);
endmodule
