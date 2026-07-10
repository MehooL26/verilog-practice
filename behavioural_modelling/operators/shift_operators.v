module shift_operators;
  reg [3:0] a;
  reg [3:0] shift_logic_right;
  reg [3:0] shift_logic_left;
  initial
    begin
      a = 4'b1010;

      shift_logic_right = a >> 1;
      $display("the value of shift_logic_right is %b", shift_logic_right);

      shift_logic_left = a << 1;
      $display("the value of shift_logic_left is %b", shift_logic_left);

      // reg a = -10
      // if we print a in this case, the output will be 6 because reg itself cannot store signed data and it will perform 
      // 2's compliment on 10 = 1010 which is 0110 thus we get 6
    end
endmodule
    
    
