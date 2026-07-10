module operators;
  reg [3:0] a;
  reg [3:0] b;

  reg [3:0] bnot;
  reg [3:0] band;
  reg [3:0] bor;
  reg [3:0] bxor;
  reg [3:0] bxnor;

  initial
    begin
      // BITWISE OPERATORS
      // operations will be performed on each bit
      // operations will not be performed on don't care bits
      a = 4'b1010;
      b = 4'b1101;

      bnot = ~a;
      $display("the value of bnot is %b", bnot);

      band = a & b;
      $display("the value of band is %b",band);
      
      bor = a | b;
      $display("the value of bor is %b",bor);
      
      bxor = a ^ b;
      $display("the value of bxor is %b",bxor);
      
      bxnor = a ~^ b;
      $display("the value of bxnor is %b",bxnor);
    end
endmodule
