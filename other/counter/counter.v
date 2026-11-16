`include "adder.v"

module counter(input rst, input load, input dir, input enable, input clk, input [3:0] data, output carry, output [3:0] result);

    always @(posedge clk or posedge rst) begin

        if (rst) begin
            result <= 0;
        end
        else if (load) begin
            result <= data;
        end
        else if (enable) begin
            case (dir)

                1'd0: begin
                end

                1'd1: begin
                end

                default;

            endcase
        end

    end

endmodule
