# Day 4 - GLS, blocking vs non-blocking and Synthesis-Simulation mismatch

About Gate Level Simulation : <br />
 - Running testbench with Netlist as DUT
 - Netlist is logically same as RTL Code
 - We perform GLS in order to verify the logical correctness of design after synthesis and ensuring the timing of design is met.
 
 About Synthesis Simulation Mismatch : <br />
 Synthesis Simulation Mismatch happens because of the following reasons <br />
 - Missing Sensitivity list
 - Blocking vs Non-Blocking Assignments
 - Non Standard Verilog Coding
 
 Missing Sensitivity list <br />
 
 Always it should be taken care with respect to functionality of design and mention the inputs in the sensitivity list.
 
 Blocking vs Non-Blocking Statements in Verilog <br />
 These should be always used inside the "always block" <br />
 
 Blocking <br />
 - Executes the statements in order they written
 - First statement is evaluated before the second statement

 Non - Blocking <br />
 - Executes all RHS when always block is entered and assigns to LHS
 - Parallel Evaluation
 Use non - blocking to design the sequential circuits
## GLS, Synthesis-Simulation mismatch and Blocking/Non-blocking statements

## Labs on GLS and Synthesis-Simulation Mismatch

## Labs on synth-sim mismatch for blocking statement

