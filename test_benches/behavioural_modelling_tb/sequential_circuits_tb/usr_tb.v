module usr_tb;
  reg clk,rst,load,shift,s_in;
  reg [1:0] mode;
  reg [3:0] p_in;
  wire s_out;
  wire [3:0] p_out;

  usr dut(clk,rst,load,shift,s_in,mode,p_in,s_out,p_out);

  initial
    begin
      {clk,rst,load,shift,s_in,mode,p_in} = 0;
    end

  always #5 clk = ~clk;

  initial
    begin
      rst = 1'b1;
      #10;
      rst = 0;
      #10;

      mode = 2'b00;
      shift = 1'b1;
      s_in = 1'b1;
      #10;
      s_in = 1'b0;
      #10;
      s_in = 1'b1;
      #10;
      s_in = 1'b1;
      #50;
      shift = 1'b0;
    end
endmodule
