module HA(
  input a,b,
  output s, carry
);

  always @(a,b)
    begin
      sum = a ^ b;
      carry = a & b;
    end
endmodule
