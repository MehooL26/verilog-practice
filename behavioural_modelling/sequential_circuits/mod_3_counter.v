module mod_3_counter(
  input clk,reset,enable,
  output reg [1:0] count
);

  always @ (posedge clk)
    begin
      if(reset)
        count <= 1'b0;
      else if(count<3 && enb==1)
        count <= count + 1'b1;
      else if(count == 3 && enb==1)
        count <= 1'b0;
    end
endmodule
