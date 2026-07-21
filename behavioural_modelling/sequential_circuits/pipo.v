module pipo(
  input clk, rst, load, 
  input [3:0] p_in,
  output reg [3:0] p_out
);
  reg [3:0] temp;

  always@(posedge clk)
    begin
      if (rst)
        begin
          temp <= 4'b0000;
        end
      else if (load)
        temp <= p_in;
      else if (load==0)
        p_out <= temp;
    end
        
endmodule
