module register_8;

    reg [7:0] d;

    input clk;
    input rst;
    input we;

    wire [7:0] q;

    register_8 r8(
        .d(d),
        .clk(clk),
        .rst(rst),
        .we(we),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin;

        $dumpfile("");
        $dumpvars(0, register_8);

        clk = 0;
        rst = 1;
        we = 0;
        d = 0;

    end

endmodule
