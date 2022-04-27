# Day 2 - Timing libs, hierarchical vs flat synthesis and efficient flop coding styles

## Introduction to timing .libs

Any semiconductor chip in order to work properly it should be simulated under different corners of PVT (Process, Voltage and Temperature). These parameters affect the delay of the standard cell.

skywater is an open source PDK. In this workshop we are using sky130_fd_sc_hd__tt_025C_1v80 library. Here tt - tyoical, 025C - temperature and 1v80 is voltage

