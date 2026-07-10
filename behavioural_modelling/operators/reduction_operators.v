module reduction_operators;
  reg [3:0] a;

  reg red_and; //&
  reg red_or;  //~&
  reg red_nor; //|
  reg red_nand;//~|
  reg red_xor; //^
  reg red_xnor;//~^
  initial
    begin
      a = 4'b1010;
      
      red_and = &a;
      $display("the value of red_and is %b", red_and);

      red_nand = ~&a;
      $display("the value of red_nand is %b", red_nand);

      red_or = |a;
      $display("the value of red_or is %b", red_or);

      red_nor = ~|a;
      $display("the value of red_nor is %b", red_nor);

      red_xor = ^a;
      $display("the value of red_xor is %b", red_xor);

      red_xnor = ~^a;
      $display("the value of red_xnor is %b", red_xnor);
    end
endmodule

  
