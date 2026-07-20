module siso_tb;
  reg clk, rst, enb, s_in;
  wire s_out;

  siso dut(clk,rst,s_in,enb,s_out);

  initial
    begin
      {clk,rst,s_in,enb} = 0;
    end

  always #5 clk = ~clk;

  initial
    begin
      rst = 1;
      #10;
      rst = 0;
      enb = 0;
      #10;
      enb = 1;

      s_in = 1'b1;
      #10;
      s_in = 1'b0;
      #10;
      s_in = 1'b1;
      #10;
      s_in = 1'b1;
      #50;
      enb = 0;
    end
endmodule
