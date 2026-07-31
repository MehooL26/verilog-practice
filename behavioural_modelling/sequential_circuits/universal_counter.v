module universal_counter(
  input clk,reset,enb,
  input [1:0] mode,
  output reg mod_2_count,
  output reg [1:0] mod_4_count,
  output reg [2:0] mod_8_count,
  output reg [3:0] mod_16_count
);

  reg [3:0] internal_counter;

  always @ (posedge clk)
    begin
      if(rst) 
        internal_counter <= 0;
      else if(enb)
        internal_counter <= internal_counter + 1'b1;
    end

  always @ (posedge clk)
    begin
      case(mode)
        2'b00 : 
          begin
            mod_2_count <= internal_counter[0];
          end
        2'b01 :
          begin
            mod_4_count <= internal_counter[1:0];
          end
        2'b10 :
          begin
            mod_8_count <= internal_counter[2:0];
          end
        2'b11 :
          begin
            mod_16_count <= internal_counter[3:0];
          end
      endcase
    end
endmodule
  
