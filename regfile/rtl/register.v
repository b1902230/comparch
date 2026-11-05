// 'include "flipflop.v"

module register_8(input [7:0] d, input clk, input rst, input we, output [7:0] q);

    always @(posedge clk or posedge rst) begin

        if (rst)
            q = b'0;
        end
        else if (we)
            q = d;
        end

    end

endmodule
