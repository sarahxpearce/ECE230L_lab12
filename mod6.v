module mod6(
    input clk,
    input rst,
    output [2:0] q,
    output       y
);
    wire [2:0] q_int;
    wire [2:0] plus1;
    wire [2:0] d_next;
    wire       y_int;
    wire       y_next;
    wire       eq5;

    assign eq5 = q_int[2] & ~q_int[1] & q_int[0];

    add3 u_add(
        .a(q_int),
        .s(plus1)
    );

    assign d_next[0] = ~rst & ~eq5 & plus1[0];
    assign d_next[1] = ~rst & ~eq5 & plus1[1];
    assign d_next[2] = ~rst & ~eq5 & plus1[2];

    assign y_next = ~rst & ((~eq5 & y_int) | (eq5 & ~y_int));

    dff c0(
        .d(d_next[0]),
        .clk(clk),
        .rst(rst),
        .q(q_int[0])
    );

    dff c1(
        .d(d_next[1]),
        .clk(clk),
        .rst(rst),
        .q(q_int[1])
    );

    dff c2(
        .d(d_next[2]),
        .clk(clk),
        .rst(rst),
        .q(q_int[2])
    );

    dff yo(
        .d(y_next),
        .clk(clk),
        .rst(rst),
        .q(y_int)
    );

    assign q = q_int;
    assign y = y_int;
endmodule
