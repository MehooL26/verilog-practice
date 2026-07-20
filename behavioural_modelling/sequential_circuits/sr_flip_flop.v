// FLIP FLOP WORKS ON EDGE OF CLOCK WHEREAS LATCH WOKRS ON LEVEL OF ENABLE SIGNAL
module sr_flip_flop(
  input enb, rst, s, r,
  output reg q, qbar
);
  
  always@(posedge clk)
    begin
      if (rst) 
        begin
          q <= 1'b0;
          qbar <= 1'b1;
        end
      //hold condition
      else if(s==0 && r==0)
        begin
          q <= q;
          qbar <= qbar;
        end
      //reset condition
      else if (s==0 && r==1)
        begin
          q <= 1'b0;
          qbar <= 1'b1;
        end
      //set condition
      else if (s==1 && r==0)
        begin 
          q <= 1;
          qbar <= 1'b0;
        end
      //invalid condition
      else if (s==1 && r==1)
        begin
          q <= 'bx;
          qbar <= 'bx;
        end
    end
endmodule
