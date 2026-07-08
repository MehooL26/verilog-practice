module two_bit_comparator(
  input [1:0] A, [1:0] B,
  output greater_than, equal_to, less_than
);

  wire a1_bar, a0_bar, b1_bar, b0_bar;
  wire [8:1] w;
  
  not a1(a1_bar, A[1]);
  not a0(a0_bar, A[0]);
  not b1(b1_bar, B[1]);
  not b0(b0_bar, B[0]);

  // A>B 
  and c1(w[1], A[0], b1_bar, b0_bar);
  and c2(w[2], A[1], b1_bar);
  and c3(w[3], A[1], A[0], b0_bar);
  or o1(greater_than, w[1], w[2], w[3]);

  // A=B 
  xnor xn1(w[4], A[0], B[0]);
  xnor xn2(w[5], A[1], B[1]);
  and o2(equal_to, w[4], w[5]);

  // A<B
  and c4(w[6], a1_bar, a0_bar, B[0]);
  and c5(w[7], a0_bar, B[1], B[0]);
  and c6(w[8], a1_bar, B[1]);
  or o3(less_than, w[6], w[7], w[8]);
endmodule
