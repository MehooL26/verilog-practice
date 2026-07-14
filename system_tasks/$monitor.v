// $monitor will run whenever there is any change in value of argument, whereas $display runs only once.
// $monitor is executed in the postponed region, whereas $display is executed in active region
// $strobe is similar to $display but it gets executed in postponed region.
module example;
  reg a;
  initial
    begin
      // case-1
      a = 1;
      $monitor("value of a is %b",a);
      // value of a printed will be 1

      // case-2
      $monitor("value of a is %b",a);
      a = 2;
      // value printed will be 2

      // case-3
      a<=1;
      $monitor("value of a is %b",a);
      // value printed will be 1

      // case-4
      $monitor("value of a is %b",a);
      a<=1;
      // value printed will be 1

      // case-5
      #1 a = 0;
      $monitor("value of a is %b",a);
      // value printed will be 0

      // case-6
      #1 a <= 0;
      $monitor("value of a is %b",a);
      // value printed will be 0

      // case-7
      a = #1 0;
      $monitor("value of a is %b",a);
      // value printed will be x then 0

      // case-8
      a <= #1 0;
      $monitor("value of a is %b",a);
      // same output as above
    end
endmodule
