module FS(
    input a,b,b_in,
    output diff,borrow
);

    wire d1,b1,b2,na;

    // Difference
    xor x1(d1, a, b);
    xor x2(diff, d1, bin);

    // Borrow
    not n1(na, a);
    and a1(b1, na, b);

    not n2(nd1, d1);
    and a2(b2, nd1, bin);

    or o1(borrow, b1, b2);

endmodule
