module HS(
    input a,b,
    output diff,borrow
);

    wire na;
    xor x1(diff, a, b);
    not n1(na, a);
    and a1(borrow, na, b);

endmodule
