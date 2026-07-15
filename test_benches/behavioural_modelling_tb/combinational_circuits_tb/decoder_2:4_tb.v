module decoder_2_4_tb;
  reg [1:0] d;
  wire [3:0] y;

  decoder_2_4 dut(d,y);

  initial
    begin
      {d} = 0;
    end

  initial
    begin
      d = 2'b00;
      #1;
      d = 2'b01;
      #1;
      d = 2'b10;
      #1;
      d = 2'b1;
    end
endmodule
