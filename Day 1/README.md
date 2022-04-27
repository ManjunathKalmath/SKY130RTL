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

![t1](https://user-images.githubusercontent.com/48850794/165481420-cea63017-2776-4add-a98d-46c291785899.png)

![t2](https://user-images.githubusercontent.com/48850794/165481431-07fd581d-feb2-42d2-8426-2db47439355a.png)

Faster cells vs Slower Cells
 - Load in Digital circuits depends on the Capacitance 
 - Faster the charging/discharging of capacitance leads to standard cell with lesser delay
 - To charge/discharge the capacitance fast, we need transistors capable of sourcing more current
 - Wider transistors have low delay and consume more power and area
 - Narrow transistors have more delay and consume less power and area 
 
 Selection of Standard Cells
 - More use of Faster cells leads to bad circuit in terms of power and area and also results in hold time violations
 - More use of Slower cells leads to sluggish circuit, may not meet the performance requirement
 - So we guide the synthesizer to act as per the "constraints" 

![synth](https://user-images.githubusercontent.com/48850794/165484761-09092af4-a37c-4211-a16c-da03394852f4.png)

## Labs using Yosys and Sky130 PDKs

In order to generate the Netlist from RTL we need to run the following command on terminal <br />
 - yosys
 - read_liberty -lib <library PATH>
 - read_verilog <design_file.v>
 - synth -top <module name>
 - abc -liberty <library PATH>
 - show (for graphical representation of design)
 - write_verilog <design_file_netlist.v>
 - write_verilog -noattr <design_file_netlist.v> (simplistic view)
 
 








