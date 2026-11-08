module register_8(input [7:0] d, input we, input r, input clk, output [7:0] q);

    always @(posedge clk) begin

        if (r) begin
            q <= 0;
        end
        else if (we) begin
            q <= d;
        end

    end

endmodule
