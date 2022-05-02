# Day 4 - GLS, blocking vs non-blocking and Synthesis-Simulation mismatch

## GLS, Synthesis-Simulation mismatch and Blocking/Non-blocking statements
About Gate Level Simulation : <br />
 - Running testbench with Netlist as DUT
 - Netlist is logically same as RTL Code
 - We perform GLS in order to verify the logical correctness of design after synthesis and ensuring the timing of design is met.

![pict](https://user-images.githubusercontent.com/48850794/166203314-9004e13a-398e-496b-8c3f-945e384ec15e.png) 
 
 About Synthesis Simulation Mismatch : <br />
 Synthesis Simulation Mismatch happens because of the following reasons <br />
 - Missing Sensitivity list
 - Blocking vs Non-Blocking Assignments
 - Non Standard Verilog Coding
 
 Missing Sensitivity list <br />
 
 Always it should be taken care with respect to functionality of design and mention the inputs in the sensitivity list.
 
![pict1](https://user-images.githubusercontent.com/48850794/166203319-085ff6c3-de2f-41dc-b71c-3f1cc728ed3f.png) 
 
 Blocking vs Non-Blocking Statements in Verilog <br />
 These should be always used inside the "always block" <br />
 
 Blocking <br />
 - Executes the statements in order they written
 - First statement is evaluated before the second statement

 Non - Blocking <br />
 - Executes all RHS when always block is entered and assigns to LHS
 - Parallel Evaluation
 Use non - blocking to design the sequential circuits

![pict2](https://user-images.githubusercontent.com/48850794/166203326-7cdc5485-3a29-4060-b90f-86558c1771ec.png)

![pict3](https://user-images.githubusercontent.com/48850794/166203330-2bc9073b-86aa-481b-b136-0aa21068e003.png)

## Labs on GLS and Synthesis-Simulation Mismatch


## Labs on synth-sim mismatch for blocking statement

