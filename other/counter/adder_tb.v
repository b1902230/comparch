module adder_4_bit_tb;

    reg [3:0] a;
    reg [3:0] b;

    wire cout;
    wire [3:0] q;

    adder_4_bit a4(
        .a(a),
        .b(b),
        .cout(cout),
        .q(q)
    );

    initial begin

        $dumpfile();
        $dumpvars(0, adder_4_bit_tb);

        a = 4'b0000;
        b = 4'b0000;

        #1

        a = 4'b0001;
        b = 4'b0001;

        #1

        a = 4'b0111;
        b = 4'b0001;

        #1

        a = 4'b0111;
        b = 4'b0011;

        #1

        a = 4'b1111;
        b = 4'b0001;

        #1

        a = 4'b1111;
        b = 4'b1111;

        #1

        a = 4'b1010;
        b = 4'b0101;

        #1

        a = 4'b1100;
        b = 4'b1011;

        #1

        a = 4'b0000;
        b = 4'b1111;

    end

endmodule
