create_clock -name clk -period 10.0 [get_ports clk] -waveform {0 5}
set_input_delay 2.0 -clock clk [get_ports -filter {direction == "input"}]
set_output_delay 2.0 -clock clk [get_ports -filter {direction == "output"}]
