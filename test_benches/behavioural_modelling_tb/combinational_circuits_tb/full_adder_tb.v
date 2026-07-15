module full_adder_tb;
  reg a_tb, b_tb, c_tb;
  wire sum_tb, carry_tb;

  FA dut(a_tb, b_tb, c_tb, sum_tb, carry_tb);

  initial
    begin
      {a_tb, b_tb, c_tb} = 0;
    end

  initial
    begin
      $monitor("value of a_tb is %d and b_tb is %d and c_tb is %d and sum_tb is %d and carry_tb is %d", a_tb, b_tb, c_tb, sum_tb, carry_tb);
      a_tb = 1;
      b_tb = 1;
      c_tb = 1;

      #1;
      a_tb = 0;
      b_tb = 0;
      c_tb = 1;
    end
endmodule
  
