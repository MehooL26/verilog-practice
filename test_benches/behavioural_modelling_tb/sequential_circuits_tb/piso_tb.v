module piso_tb;
  reg clk, rst, load;
  reg [3:0] p_in;
  wire s_out;

  piso dut(clk,rst,load,p_in,s_out);

  initial
    begin
      {clk,rst,load,p_in} = 0;
    end

  always #5 clk = ~clk;

  initial
    begin
      rst = 1;
      #10;
      rst = 0;
      #10;
      p_in = 4'b1101;
      load = 1'b1;
      #10;

      #20;
      load = 1'b0;
    end
