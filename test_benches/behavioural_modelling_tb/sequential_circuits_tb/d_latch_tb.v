module d_latch_tb;
  reg enb, rst, d_in;
  wire q, qbar;

  d_latch dut(enb,rst,d_in,q,qbar);

  initial
    begin
      {enb,rst,d_in} = 0;
    end

  always #5 enb = ~enb;

  initial
    begin
      rst = 1;
      #15;
      rst = 0;
      #5;
      d_in = 1;
      #10;
      d_in = 0;
    end
endmodule
