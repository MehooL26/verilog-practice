module f_3_50dt_tb;
  reg clk,reset,enb;
  wire f_3;

  f_3_with_50dt dut(clk,reset,enb,f_3);

  initial
    begin
      {clk,reset,enb} = 0;
    end

  always #5 clk = ~clk;
  
