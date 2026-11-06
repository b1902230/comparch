module jk_flip_flop(input j, input k, input clk, output q, output n_q);

    wire j_clk_nq;
    wire k_clk_q;

    assign j_clk_nq = !(j & clk & n_q);
    assign k_clk_q = !(k & clk & q);

    assign q = !(j_clk_nq & n_q);
    assign n_q = !(k_clk_q & q);

endmodule
