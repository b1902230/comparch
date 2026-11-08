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

        $dumpfile("  always #5 clk = ~clk;")

    end

endmodule
