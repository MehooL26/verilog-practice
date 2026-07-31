module universal_counter_tb;
  reg clk,reset,enb;
  reg [1:0] mode;
  wire mod_2_count;
  wire [1:0] mod_4_count;
  wire [2:0] mod_8_count;
  wire [3:0] mod_16_count;

  universal_counter dut(clk,reset,enb,mode,mod_2_count,mod_4_count,mod_8_count,mod_16_count);

  initial
    begin
      {clk,reset,enb,mode} = 0;
    end

  always #5 clk = ~clk;
endmodule
