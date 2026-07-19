module jk_latch_tb;
  reg enb, rst, j, k;
  wire q, qbar;
  integer i;

  jk_latch dut(enb,rst,j,k,q,qbar);

  initial
    begin
      {enb,rst,j,k} = 0;
    end

  always #5 enb = ~enb;

  initial
    begin
      rst = 1'b1;
      #10;
      rst = 1'b0; 
      #10;
      for (i=0;i<4;i=i+1)
        begin
          #1;
          {j,k} = i;
        end
    end
  
endmodule
