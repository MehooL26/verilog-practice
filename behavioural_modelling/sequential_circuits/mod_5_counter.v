module mod_5_counter(
  input clk,reset,enb,
  output reg [2:0] count
);
  always@(posedge clk)
    begin
      if(reset)
        count <= 0;
      else if(count<4 && enb==1)
        count <= count + 1'b1;
      else if(count>=4 && enb==1)
        count <= count;
    end
endmodule
