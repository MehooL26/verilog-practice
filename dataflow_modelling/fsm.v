module fsm_1010_non_overlapping(
  input clk, reset, d_in,
  output reg detected
);

  parameter IDLE = 2'b00;
  parameter S1 = 2'b01;
  parameter S2 = 2'b10;
  parameter S3 = 2'b11;

  reg [1:0] ps, ns;

  always @(posedge clk) begin
      if(reset)
        begin
          ps <= IDLE;
        end
    else
      ps <= ns;
  end

  always @(*) begin
    case(ns)
      IDLE : begin
        detected = 1'b0;
        if(d_in == 1'b1)
          ns = S1;
        else
          ns = IDLE;
      end

      S1 : begin
        if(d_in == 1'b0)
          ns = S2;
        else
          ns = S1;
      end

      S2 : begin
        if(d_in == 1'b1)
          ns = S3;
        else
          ns = IDLE;
      end

      S3 : begin
        if(d_in == 1'b1)
          ns = S1;
        else begin
          ns = IDLE;
          detected = 1'b1;
        end
      end

      default : ns = IDLE;
    endcase
  end
  
endmodule
