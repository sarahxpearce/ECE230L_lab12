module top(
    input       btnU,
    input       btnC,
    output [6:0] led
);
    wire r0;
    wire r1;
    wire r2;

    tff t0(
        .t(1'b1),
        .clk(btnC),
        .rst(btnU),
        .q(r0)
    );

    tff t1(
        .t(1'b1),
        .clk(r0),
        .rst(btnU),
        .q(r1)
    );

    tff t2(
        .t(1'b1),
        .clk(r1),
        .rst(btnU),
        .q(r2)
    );

    wire [2:0] mq;
    wire       my;

    mod6 m0(
        .clk(btnC),
        .rst(btnU),
        .q(mq),
        .y(my)
    );

    assign led[0] = r0;
    assign led[1] = r1;
    assign led[2] = r2;
    assign led[3] = mq[0];
    assign led[4] = mq[1];
    assign led[5] = mq[2];
    assign led[6] = my;
endmodule
