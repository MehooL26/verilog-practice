module freq_2_division_tb;
  reg clk,reset;
  wire f_2;

  freq_2_division dut(clk,reset,f_2);

  initial
    begin
      {clk,reset} = 0;
    end

  always #5 clk = ~clk;

  initial
    begin
      reset = 1;
      #10;
      reset = 0;
    end
endmodule
