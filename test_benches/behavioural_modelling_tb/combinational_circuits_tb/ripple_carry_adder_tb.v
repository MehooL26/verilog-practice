module ripple_carry_adder_tb;
  
  reg [3:0] a_tb,b_tb;
  reg c_in_tb;
  wire [3:0] sum_tb;
  wire carry_tb;

  ripple_carry_adder dut(a_tb, b_tb, c_in_tb, sum_tb, carry_tb);

  initial
    begin
      {a_tb, b_tb, c_in_tb} = 0;
    end

  initial
    begin
      $monitor("value of sum is %b and carry is %b", sum_tb, carry_tb);
      a_tb = 4'b0110;
      b_tb = 4'b1110;
      c_in = 1'b1;
    end
endmodule
  
