
iverilog -o  ../waveform/dflipflop.vcd ../testbenches/dflipflop.v ../rtl/dflipflop.v
vvp ../waveform/dflipflop.vcd
gtkwave ../waveform/dflipflop.vcd


