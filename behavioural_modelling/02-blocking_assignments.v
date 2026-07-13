// all variables on left side should be of reg type

// Inter assignment delay : 
// case - 1:
always 
  begin
    #1 a = 0;  //after one time unit value of a will be 0
    #2 b = 1;  //after two time unit, total 3 time unit, value of b will be 1
  end
//these delays are not synthesisable, only used for testbench purpose

// case - 2:
always
  begin
    #1;
    a = 0;
    #2;
    b = 1;
  end
