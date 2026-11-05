module d_flip_flop(input d, input clk, output q, output n_q);

    wire n_d;
    wire d_clk;
    wire nd_clk;

    assign n_d = !d;
    assign d_clk = !(d & clk);
    assign nd_clk = !(n_d & clk);

    assign q = !(d_clk & n_q);
    assign n_q = !(nd_clk & q);

endmodule
