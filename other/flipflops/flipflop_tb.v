module d_flip_flop_tb;

    reg d;
    reg clk;

    wire q;
    wire n_q;

    d_flip_flop dff(
        .d(d),
        .clk(clk),
        .q(q),
        .n_q(n_q)
    );

    initial begin

        $dumpfile("");
        $dumpvars(0, d_flip_flop_tb);

        d = 0;
        clk = 0;

        #1

        d = 1;
        clk = 0;

        #1

        d = 0;
        clk = 1;

        #1

        d = 1;
        clk = 1;

    end

endmodule

module jk_flip_flop_tb;

    reg j;
    reg k;
    reg clk;

    wire q;
    wire n_q;

    jk_flip_flop jkff(
        .j(j),
        .k(k),
        .clk(clk),
        .q(q),
        .n_q(n_q)
    );

    initial begin

        $dumpfile("");
        $dumpvars(0, jk_flip_flop_tb);

      clk = 1;
      j = 1;
      k = 0;

      #1

      clk = 1;
      j = 0;
      k = 0;

      #1

      clk = 1;
      j = 0;
      k = 1;

      #1

      clk = 1;
      j = 1;
      k = 1;

    end

endmodule

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

