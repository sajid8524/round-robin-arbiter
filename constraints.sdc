# Basic timing constraints for Innovus / CCOpt
# Adjust period and I/O delays to your design's needs

# create primary input/output clocks (if port name is clk)
# change [get_ports clk] if your clock port name differs
create_clock -name clk -period 10.0 [get_ports clk]

# simple I/O delays (optional; helps make placement timing-driven)
# change numbers if you know input/output delays for your design
set_input_delay 2.0 [all_inputs]
set_output_delay 2.0 [all_outputs]

# set simple lib mapping (optional if you load timing libs separately)
# (you generally set timing libs via your flow, not SDC)
