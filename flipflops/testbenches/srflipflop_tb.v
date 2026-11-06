module sr_flip_flop_tb;

    reg r;
    reg s;
    reg clk;

    wire q;
    wire n_q;

    sr_flip_flop srff(
        .r(r),
        .s(s),
        .clk(clk),
        .q(q),
        .n_q(n_q)
    );

    initial begin

        $dumpfile("");
        $dumpvars(0, sr_flip_flop_tb);

        clk = 1;
        s = 1;
        r = 0;

        #1

        clk = 1;
        s = 0;
        r = 0;

        #1

        clk = 1;
        s = 0;
        r = 1;

        #1

        clk = 1;
        s = 1;
        r = 1;

    end

endmodule
