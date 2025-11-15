module tff(
    input t,
    input clk,
    input rst,
    output q
);
    wire q_int;
    wire d;

    assign d = (~t & q_int) | (t & ~q_int);

    dff u0(
        .d(d),
        .clk(clk),
        .rst(rst),
        .q(q_int)
    );

    assign q = q_int;
endmodule
