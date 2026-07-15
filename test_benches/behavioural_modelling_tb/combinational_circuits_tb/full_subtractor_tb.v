module full_subtractor_tb;
  reg a_tb, b_tb, c_tb;
  wire diff_tb, borrow_tb;

  FS dut(a_tb, b_tb, c_tb, diff_tb, borrow_tb);

  initial
    begin
      {a_tb, b_tb, c_tb} = 0;
    end

  initial
    begin
      $monitor("value of a_tb is %d and b_tb is %d and c_tb is %d and diff_tb is %d and borrow_tb is %d", a_tb, b_tb, c_tb, diff_tb, borrow_tb);
      a_tb = 1;
      b_tb = 1;
      c_tb = 1;

      #1;
      a_tb = 0;
      b_tb = 0;
      c_tb = 1;
    end
endmodule
  
