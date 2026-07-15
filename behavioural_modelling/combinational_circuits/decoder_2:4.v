module decoder_2_4(
  input [1:0] d,
  output reg [3:0] y;
);

  always@(*)
    begin
      if (d == 2'b00)
        y = 4'b0001;
      else
        if (d == 2'b01)
        y = 4'b0010;
      else 
        if (d == 2'b10)
        y = 4'b0100;
      else
        if (d == 2'b11)
        y = 4'b1000;
    end
endmodule
