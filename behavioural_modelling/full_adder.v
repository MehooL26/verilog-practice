module FA(
  input a,b,c_in,
  output reg sum, carry
);

  always@(*)
    begin
      sum = a^b^c_in;
      carry = (a & b) | (b & c_in) | (a & c_in);
    end
endmodule
