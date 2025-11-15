module add3(
    input  [2:0] a,
    output [2:0] s
);
    wire c1;
    wire c2;

    fa u0(
        .a(a[0]),
        .b(1'b1),
        .ci(1'b0),
        .s(s[0]),
        .co(c1)
    );

    fa u1(
        .a(a[1]),
        .b(1'b0),
        .ci(c1),
        .s(s[1]),
        .co(c2)
    );

    fa u2(
        .a(a[2]),
        .b(1'b0),
        .ci(c2),
        .s(s[2]),
        .co()
    );
endmodule
