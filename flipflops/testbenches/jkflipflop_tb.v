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
