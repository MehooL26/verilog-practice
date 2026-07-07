module ripple_carry_adder(
  input [3:0] A, [3:0] B, 
  input c_in,
  output [3:0] S, c_out
);
  wire C1, C2, C3;
  
  full_adder FA1(
    .A(A[0]),
    .B(B[0]),
    .c_in(c_in),
    .S(S[0]),
    .c_out(C1)
  );

  full_adder FA2(
    .A(A[1]),
    .B(B[1]),
    .c_in(C1),
    .S(S[1]),
    .c_out(C2)
  );

  full_adder FA3(
    .A(A[2]),
    .B(B[2]),
    .c_in(C2),
    .S(S[2]),
    .c_out(C3)
  );

  full_adder FA4(
    .A(A[3]),
    .B(B[3]),
    .c_in(C3),
    .S(S[3]),
    .c_out(c_out)
  );
endmodule
