module mux_2_1_tb;
  reg [1:0] i;
  reg s;
  wire y;
  integer m;

  initial
    begin 
      {i,s} = 0;
    end

  initial 
    begin
      for (m=0;m<8;m=m+1)
        #1;
        {s,i} = m;
    end
endmodule
  
