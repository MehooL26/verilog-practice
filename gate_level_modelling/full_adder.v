module FA(
    input a,b,c_in,
    output sum,carry
);

    wire w1, c1, c2;

    xor x1(s1, a, b);
    xor x2(sum, s1, cin);

    and a1(c1, a, b);
    and a2(c2, s1, cin);

    or o1(carry, c1, c2);

endmodule
