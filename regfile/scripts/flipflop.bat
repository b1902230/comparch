@echo off

iverilog -o  ../waveform/flipflop.vcd ../testbenches/flipflop_tb.v ../rtl/flipflop.v
vvp ../waveform/flipflop.vcd
gtkwave ../waveform/flipflop.vcd


