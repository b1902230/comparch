module register_8_tb;

    reg [7:0] d;
    reg we;
    reg clk;
    reg r;

    wire [7:0] q;

    register_8 r8(
        .d(d),
        .we(we),
        .clk(clk),
        .r(r),
        .q(q)
    );

    initial begin

        $dumpfile("C:/Users/B/Documents/comparch/regfile/reg_mux_demux.v");
        $dumpvars(0, register_8_tb);

        clk = 0;
        always #1 clk = !clk;

        d = 0;
        we = 0;
        r = 0;

    end

endmodule
