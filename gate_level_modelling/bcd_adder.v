module bcd_adder(
  input [3:0] A, [3:0] B,
  input c_in,
  output [3:0] S,
  output c_out
);
  wire [3:0] s_temp; //output of first ripple carry adder
  wire c_out_temp;
  wire a_1, a_2, o_1;
  wire [3:0] rca_2;

  ripple_carry_adder RCA1(A, B, c_in, S_temp, c_out_temp);

  and a1(a_1, s_temp[3], s_temp[2]);
  and a2(a_2, s_temp[3], s_temp[1]);
  or o1(o_1, a1, a2);

  assign rca_2[0] = 0;
  assign rca_2[1] = 0;
  assign rca_2[2] = o_1;
  assign rca_2[3] = o_1;

  ripple_carry_adder RCA2(sum_temp, rca_2, 0, S, c_out);
endmodule
