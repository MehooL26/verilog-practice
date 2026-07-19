//FOR SEQUENTIAL CIRCUITS, WE USE NON-BLOCKING ASSIGNMENTS
module sr_latch(
  input enb, rst, s, r,
  output reg q, qbar
);

  //reset logic
  // difference between synchronous and asynchronous reset is, in synchronous reset, reset is dependent on enable, whereas in asynchronous it is independent.
  
  always@(enb)
    if (enb)
      //synchronous reset
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


  //asynchronous reset
  always@(enb,rst)
    begin
      if (rst) 
        begin
          q <= 1'b0;
          qbar <= 1'b1;
        end
      if (enb)
        begin
          //hold condition 
          if(s==0 && r==0)
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
  
endmodule
