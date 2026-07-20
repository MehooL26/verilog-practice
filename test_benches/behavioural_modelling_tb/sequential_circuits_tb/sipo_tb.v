module sipo;
  reg clk,rst,enb,s_in;
  wire [3:0] p_out;

  sipo dut(clk,rst,enb,s_in,p_out);

  initial
    begin
      {clk,rst,enb,s_in} = 0;
    end

  always #5 clk = ~clk;

  initial
    begin
      rst = 1;
      #10;
      rst = 0;
      #10;
      s_in = 1'b1;
      #10;
      s_in = 1'b1;
      #10;
      s_in = 1'b0;
      #10;
      s_in = 1'b0;
      #30;
      enb = 1;
    end
endmodule
      
