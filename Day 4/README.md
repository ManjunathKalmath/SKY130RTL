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

There is no Synthesis-Simulation Mismatch below : <br />
![Screenshot (177)](https://user-images.githubusercontent.com/48850794/166207992-b04927b0-fb9e-425f-ab06-2bc04c2048df.png)

![Screenshot (178)](https://user-images.githubusercontent.com/48850794/166207997-eea0579a-1f9a-4f4d-873f-8b4b08254ea3.png)

![Screenshot (179)](https://user-images.githubusercontent.com/48850794/166208001-fe3c275d-df3a-4b16-99a2-b1dc062bb374.png)

There is Synthesis-Simulation Mismatch below : <br />
![Screenshot (180)](https://user-images.githubusercontent.com/48850794/166208006-fab17edb-4387-4b45-b9e4-0ef521af3490.png)

![Screenshot (181)](https://user-images.githubusercontent.com/48850794/166208009-ad67fc24-5cb7-4ec9-a0c1-fde5cf1016c6.png)


## Labs on synth-sim mismatch for blocking statement

![Screenshot (182)](https://user-images.githubusercontent.com/48850794/166220627-7f89e643-c080-4711-a552-7baf4387d1e3.png)

![Screenshot (183)](https://user-images.githubusercontent.com/48850794/166220631-620220d7-64f9-46c8-9fe7-d55dbc7b6c85.png)

![Screenshot (184)](https://user-images.githubusercontent.com/48850794/166220633-2a66219e-db9a-449f-8efc-cef09fcc0564.png)
