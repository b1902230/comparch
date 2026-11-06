
iverilog -o  ../stiumlation/dflipflop.vvp ../testbenches/dflipflop_tb.v ../rtl/dflipflop.v
vvp ../stiumlation/dflipflop.vvp
gtkwave ../waveform/dflipflop.vcd


