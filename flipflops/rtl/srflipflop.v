module sr_flip_flop(input s, input r, input clk, output q, output n_q);

    wire s_clk;
    wire r_clk;

    assign s_clk = !(s & clk);
    assign r_clk = !(r & clk);

    assign q = !(s_clk & n_q);
    assign n_q = !(r_clk & q);

endmodule
