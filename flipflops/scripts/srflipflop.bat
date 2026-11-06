
iverilog -o  ../stiumlation/srflipflop.vvp ../testbenches/srflipflop_tb.v ../rtl/srflipflop.v
vvp ../stiumlation/srflipflop.vvp
gtkwave ../waveform/srflipflop.vcd
