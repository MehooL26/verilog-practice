module relational_operators;
  reg [3:0] a;
  reg [3:0] b;

  reg gt; //>
  reg lt; //<
  reg gtoeq;  //>=
  reg ltoeq;  //<=

  reg eq;  //==
  reg neq; //!=
  reg ceq; //===
  reg cneq;//!==

  initial
    begin
      a = 4'b1011;
      b = 4'b1100;
      // RELATIONAL OPERATORS
      gt = a > b;
      $display("the value of gt is %b",gt);
      
      lt = a < b;
      $display("the value of lt is %b",lt);

      a = 4'b101x;
      b = 4'b1100;   //don't care inputs will not be processed 

      gtoeq = a >= b;
      $display("the value of gtoeq is %b",gtoeq);
      
      ltoeq = a <= b;
      $display("the value of ltoeq is %b",ltoeq);

      eq = a==b;
      $display("the value of eq is %b",eq);

      neq = a!=b;
      $display("the value of neq is %b",neq);

      a = 4'b101x;
      b = 4'b1100;
      //case equality can compare these values
      ceq = a===b;
      $display("the value of ceq is %b",ceq);
      
      cneq = a!==b;
      $display("the value of cneq is %b",cneq);
    end
endmodule
