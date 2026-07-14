// any keyword with dollar symbol can be recognized as a system task.
// three types of system tasks for printing :
//$display
//$monitor
//$strobe
//syntax : *$display(" message %b",a)*
//syntax remains same for all, just changing keyword
module system_tasks;
  reg [3:0] a;
  initial
    begin
      a = 4'b1100
      $display("value of a is %b",a);
      
      // case-1
      $display("value of a is %b",a);
      a = 4'b0010;
      // in this case we get value of a as xxxx(4-bit binary)

      // case-2
      a<=4'b1010;
      $display("value of a is %b",a);
      // again same result

      // case-3
      $display("value of a is %b",a);
      a<=4'b0001
      // same result

      // case-4 (blocking assignment with delay)
      a = 4'b1010;
      #1;
      $display("value of a is %b",a);
      // in this case we get the actual value printed

      // case-5
      a<=4'b1010;
      #1;
      $display("value of a is %b",a);
      // in this case also we get actual value printed

      // case-6
      a = #1 4'b0010;
      a<=4'b1010;
      $display("value of a is %b",a);
      // get actual value printed

      // case-7
      a<= #1 4'b0010;
      $display("value of a is %b",a);
      // in this case we get xxxx printed

      // case-8
      #1 a = #1 4'b0010;
      $display("value of a is %b",a);
      // we get the actual value printed

      //case-9
      #1 a <= #1 4'b0010;
      $display("value of a is %b",a);
      // we get xxxx printed
    end
endmodule
  
