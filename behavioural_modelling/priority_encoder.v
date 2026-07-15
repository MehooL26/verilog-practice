// for priority encoder we don't use normal case statements, we use casex as it supports don't care values also.
module priority_encoder(
  input [3:0] d,
  output reg [1:0] y
);
  always@(*)
    begin
      casex(d)
        4'b0001 : y = 2'b00;
        4'b001x : y = 2'b01;
        4'b01xx : y = 2'b10;
        4'b1xxx : y = 2'b11;
        default : y = 'bx;
      endcase
    end
endmodule
