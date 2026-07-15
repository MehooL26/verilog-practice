module encoder_4_2_tb;
  reg [3:0] d_tb;
  wire [1:0 ]y;

  encoder_4_2 dut(d,y);

  initial
    begin
      {d} = 0;
    end

  initial
    begin
      d = 4'b0001;
      #1;
      d = 4'b0010;
      #1;
      d = 4'b0100;
      #1;
      d = 4'b1000;
    end
endmodule
