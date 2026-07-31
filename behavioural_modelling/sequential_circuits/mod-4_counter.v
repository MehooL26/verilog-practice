// count of 0,1,2,3
module mod_4_counter(
  input clk,reset,enb,
  output reg [1:0] count
);

  always @ (posedge clk)
    begin
      if(reset)
        begin
          count <= 0;
        end
      else if (enb)
        count <= count + 1'b1;
      else 
        count <= count;
    end
endmodule
