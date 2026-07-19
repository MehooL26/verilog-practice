module t_latch(
  input enb, rst, t_in, 
  output reg q, qbar
);

  always @ (enb)
    begin
      if(enb)
        if(rst)
          begin
            q <= 1'b0;
            qbar <= 1'b1;
          end
      else if (t_in == 0)
        begin
          q <= q;
          qbar <= qbar;
        end
      else if (t_in == 1'b1)
        begin
          q <= ~q;
          qbar <= ~qbar;
        end
    end
endmodule
