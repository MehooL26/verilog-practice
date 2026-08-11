module f_3_with_50dt(
  input clk,reset,enb,
  output reg f_3_50dt
);
  reg [1:0] counter;
  reg enb1,enb2;

  always @ (posedge clk)
    begin
      if(reset)
        begin
          counter <= 0;
          enb1 <= 0;
          enb2 <= 0;
        end
      else
        if(enb && count==2)
          counter <= 0;
      else if(enb && counter<2)
        counter <= counter + 1'b1;
          
    end

endmodule
