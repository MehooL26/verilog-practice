module reduction_operators;
  reg [3:0] a;

  reg red_and; //&
  reg red_or;
  reg red_nor;
  reg red_nand;
  reg red_xor;
  reg red_xnor;
  initial
    begin
      a = 4'b1010;
      
  
