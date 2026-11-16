iverilog -o adder.vvp adder_tb.v adder.v
vvp adder.vvp
gtkwave adder.vcd
