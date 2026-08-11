module mod_5_counter_tb;
  reg clk,reset,enb;
  wire [2:0] count;

  mod_5_counter(clk,reset,enb,count);

  always #5 clk = ~clk;

  initial
    begin
      {clk,reset,enb} = 0;
    end

  initial
    begin
      reset = 1;
      #10;
      reset = 0;
      enable = 1;

      #100;
      enable = 0;
    end
