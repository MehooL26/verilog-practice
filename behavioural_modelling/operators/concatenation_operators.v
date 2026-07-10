module concatenation_operators;
  reg [2:0] a;
  reg [1:0] b;
  reg [4:0] y;
  initial
    begin
      a = 3'b101;
      b = 2'b01;

      y = {a,b};
      $display("value of y is %b", y);
      
      // output will be 1 with b and zeroes before this number because 1 is a 32 bit number
      y = {1,b};
      $display("value of y is %b", y); 

      // REPLICATION OPERATOR
      // replicates the number b 4 times
      y = {4{b}}
      $display("value of y is %b", y); 

      // CONDITIONAL OPERATOR
      // if-else
      assign y = (a == 0) ? 1 : 0 ;
      
    end
endmodule
