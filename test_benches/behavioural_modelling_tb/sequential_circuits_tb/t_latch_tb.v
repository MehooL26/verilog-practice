module t_latch_tb;
  reg enb, rst, t_in;
  wire q, qbar;

  t_latch dut(enb, rst, t_in, q, qbar);

  initial
    begin
      {enb,rst,t_in} = 0;
    end

  always #5 enb = ~enb;

  initial
    begin
      rst = 1;
      #10;
      rst = 0;
      #10;
      t_in = 1;
      #10;
      t_in = 0;
    end
endmodule
