module full_adder(input a, input b, input cin, output cout, output q);

    assign q = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin);

endmodule

module adder_4_bit(input [3:0] a, input [3:0] b, output cout, output [3:0] q);

    parameter [0:0] zero = 0;
    wire cout1;
    wire cout2;
    wire cout3;

    full_adder fa1(
        .a(a[0]),
        .b(b[0]),
        .cin(zero),
        .cout(cout1),
        .q(q[0])
    );

    full_adder fa2(
        .a(a[1]),
        .b(b[1]),
        .cin(cout1),
        .cout(cout2),
        .q(q[1])
    );

    full_adder fa3(
        .a(a[2]),
        .b(b[2]),
        .cin(cout2),
        .cout(cout3),
        .q(q[2])
    );

    full_adder fa4(
        .a(a[3]),
        .b(b[3]),
        .cin(cout3),
        .cout(cout),
        .q(q[3])
    );

endmodule
