module freq_2_division(
  input clk,reset,
  output reg f_2
);

  always @ (posedge clk)
    begin
      if(reset)
        f_2 <= 0;
      else
        f_2 <= ~f_2;
    end
endmodule
  
