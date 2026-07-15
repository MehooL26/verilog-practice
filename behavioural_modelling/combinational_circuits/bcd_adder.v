module bcd_adder(
  input [3:0] a,b,
  input c_in,
  output [3:0] s,
  output carry
);
  reg [4:0] temp;

  always@(*)
    begin
      temp = a + b;
      if (temp > 'd9)
        temp = 4'b0110 + temp;
      else
        temp = temp;
    end

  assign s = temp[3:0];
  assign carry = temp[4];
endmodule
