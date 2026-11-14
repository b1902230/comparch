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

module jk_flip_flop(input j, input k, input clk, output q, output n_q);

    wire j_clk_nq;
    wire k_clk_q;

    assign j_clk_nq = !(j & clk & n_q);
    assign k_clk_q = !(k & clk & q);

    assign q = !(j_clk_nq & n_q);
    assign n_q = !(k_clk_q & q);

endmodule

module sr_flip_flop(input s, input r, input clk, output q, output n_q);

    wire s_clk;
    wire r_clk;

    assign s_clk = !(s & clk);
    assign r_clk = !(r & clk);

    assign q = !(s_clk & n_q);
    assign n_q = !(r_clk & q);
endmodule
