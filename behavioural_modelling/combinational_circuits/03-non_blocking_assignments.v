// the compiler will execute two commands parallely (<=)
always
  begin
    a <= 0;
    b <= 1;
  end

// non-blocking assignment operator with Inter assignment delay : 
always @ (*)
  begin
    #5 a<=0;
    #10 b<=1;
  end

// Intra assignment delay : 
always @ (*)
  begin
    a <= #1 0;
    b <= #2 1;
  end
