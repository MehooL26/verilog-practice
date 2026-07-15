module FS(
  input a,b,c_in,
  output reg diff, borrow
);

  always@(*)
    begin
      diff = a^b^c_in;
      borrow = (~a & b) | (~(a^b)&c_in);
    end
endmodule
