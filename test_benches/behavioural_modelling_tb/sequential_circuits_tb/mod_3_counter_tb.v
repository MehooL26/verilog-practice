module mod_3_counter_tb;
  reg clk,reset,enb;
  wire [1:0] count;

  mod_3_counter dut(clk,reset,enb,count);

  initial
    begin
      {clk,reset,enb} = 0
    end

  always #5 clk = ~clk;

  initial
    begin
      reset = 1'b1;
      #10;
      reset = 0;
      #10;
      enb = 1'b1;
      #100;
      enb = 1'b0;
    end
endmodule
