iverilog -o  ../stiumlation/jkflipflop.vvp ../testbenches/jkflipflop_tb.v ../rtl/jkflipflop.v
vvp ../stiumlation/jkflipflop.vvp
gtkwave ../waveform/jkflipflop.vcd
