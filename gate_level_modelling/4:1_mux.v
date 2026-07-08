module four_to_one_mux(
  input [1:0] S, [3:0] I,
  output Y
);

  wire s1_bar, s0_bar;
  wire [3:0] w;

  not n1(s1_bar, S[1]);
  not n2(s0_bar, S[0]);

  and a1(w[0], s1_bar, s0_bar, I[0]);
  and a2(w[1], s1_bar, S[0], I[1]);
  and a3(w[2], S[1], s0_bar, I[2]);
  and a4(w[3], S[0], S[1], I[3]);
  or o1([Y, w[0], w[1], w[2], w[3]);
endmodule
