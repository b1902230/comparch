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

        $dumpfile("C:/Users/B/Documents/comparch/flipflops/waveform/dflipflop.vcd");
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
