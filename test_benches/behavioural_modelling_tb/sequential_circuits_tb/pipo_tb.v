module pipo_tb;
  reg clk,rst,load;
  reg [3:0] p_in;
  wire [3:0] p_out;

  pipo dut(clk,rst,load,p_in,p_out);

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
      p_in = 4'b1110;
      load = 1'b1;
      #30;
      load = 0;
    end
  
