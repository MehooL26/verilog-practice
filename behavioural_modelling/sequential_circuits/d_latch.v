module d_latch(
  input enb, rst, d_in, 
  output reg q, qbar
);

  always @ (enb)
    begin
      if (!enb)
        if (rst)
          begin
            q <= 1'b0;
            qbar <= 1'b1;
          end
        else
          begin
            q <= d_in;
            qbar <= ~d_in;
          end
    end
endmodule
