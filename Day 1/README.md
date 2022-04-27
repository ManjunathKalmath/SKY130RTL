# Day 1 - Introduction to Verilog RTL design and Synthesis

## Introduction to open-source simulator iverilog

Design    : HDL written as per the specifications given <br />
<br />
TestBench : Setup to check the functionality of design by applying test vectors

Simulator : Tool to simulate the design <br />
Simulator looks for the chage in input values and output is evaluated based on input

![tb](https://user-images.githubusercontent.com/48850794/165473202-3c6b65f3-6b76-413b-b8ac-bd6fcb29cef4.png)

![iv](https://user-images.githubusercontent.com/48850794/165473374-4e6e7846-1853-47ef-a8da-f587c4a85a4c.png)

## Labs using iverilog and gtkwave

After writing the verilog code we need to run following command on terminal to view results in waveform window : <br />

- iverilog <design_file.v> <testbench_file.v>
- ./a.out (This results in - VCD info : dump file <testbench_file.vcd> opened for output)
- gtkwave <testbench_file.vcd> 

![gtkwave_good_mux](https://user-images.githubusercontent.com/48850794/165476514-87954088-5eca-4d47-8471-1ec55bc5495a.png)

![good_mux](https://user-images.githubusercontent.com/48850794/165476562-274094aa-0f36-457c-8a16-6245437f7ee3.png)

![tb_good_mux](https://user-images.githubusercontent.com/48850794/165476623-73d5481f-7179-4c65-898f-4d6da66145ef.png)

![sim_good_mux](https://user-images.githubusercontent.com/48850794/165476687-1d1d9205-61d4-4962-8da0-c01561c8cb86.png)

## Introduction to Yosys and Logic synthesis

Synthesizer : Tool used for converting RTL to Netlist <br />
Yosys Synthesizer is used in this workshop

![y1](https://user-images.githubusercontent.com/48850794/165478137-94480a5f-ae3c-4b49-8dae-8ab425b9419b.png)

![y2](https://user-images.githubusercontent.com/48850794/165478147-0990ca57-b5ff-4708-9548-ea59ca8abcc9.png)

Synthesis : The design is converted into gates and the connections are made between the gates <br />
<br />
Netlist   : contains information about the logic connections of standard cells and macros <br />
<br />
.lib      : collection of logic modules such as logic gates AND, OR etc with different flavors of same gate <br />
<br />
Different Flavors of Gates are required : <br />
For performance sake we need the standard cells that work faster and to meet hold time we need the standard cells that work slower. 












