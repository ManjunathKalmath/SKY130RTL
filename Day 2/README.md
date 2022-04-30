# Day 2 - Timing libs, hierarchical vs flat synthesis and efficient flop coding styles

## Introduction to timing .libs

Any semiconductor chip in order to work properly it should be simulated under different corners of PVT (Process, Voltage and Temperature). These parameters affect the delay of the standard cell.
<br />
skywater is an open source PDK. In this workshop we are using sky130_fd_sc_hd__tt_025C_1v80 library. Here tt - typical, 025C - temperature and 1v80 is voltage


![Screenshot (109)](https://user-images.githubusercontent.com/48850794/165514565-ea50d13a-ecc0-42e0-b3e2-779c88bf2354.png)

![Screenshot (110)](https://user-images.githubusercontent.com/48850794/165514578-41f41352-1d5b-4ed0-b1a5-ab4ba92c8c6a.png)

![Screenshot (112)](https://user-images.githubusercontent.com/48850794/165514584-5d130516-4189-42db-a8c7-a2c443053fbf.png)

![Screenshot (113)](https://user-images.githubusercontent.com/48850794/165514595-eaf40e3a-881d-46ec-8f18-8e6c12823acc.png)

![Screenshot (114)](https://user-images.githubusercontent.com/48850794/165514602-3d3fe620-7439-415f-a514-c6a4ac48d438.png)

![Screenshot (115)](https://user-images.githubusercontent.com/48850794/165514607-49ba5b69-b5ed-41ce-ae75-a038afe63dfc.png)

![Screenshot (116)](https://user-images.githubusercontent.com/48850794/165514615-24e98f62-4c09-4dae-89e9-344c05ba707b.png)

![Screenshot (117)](https://user-images.githubusercontent.com/48850794/165514618-b3edf9cb-8259-4bf7-928d-67b541fd84bd.png)

We can clearly see the difference area, power and performance in case of different flavors of and gate.<br />

AREA  : and2_4 > and2_2 > and2_0 <br />
POWER : and2_4 > and2_2 > and2_0 <br />
DELAY : and2_0 > and2_2 > and2_4 <br />

## Hierarchical vs Flat Synthesis


![Screenshot (118)](https://user-images.githubusercontent.com/48850794/165683923-4f0349e4-5ab9-462e-81a1-453a098f289b.png)

![Screenshot (119)](https://user-images.githubusercontent.com/48850794/165683936-6e2aedd0-6e0f-4491-900d-05d7939ab638.png)

![Screenshot (120)](https://user-images.githubusercontent.com/48850794/165683942-cd327f43-70d4-4485-8c26-264ce89be0f3.png)

![Screenshot (121)](https://user-images.githubusercontent.com/48850794/165683946-725bf51d-db8b-460b-b338-57ff6c624870.png)

<br />
The below image indicates the clear difference in  Hierarchical vs Flat Synthesis <br />

![Screenshot (123)](https://user-images.githubusercontent.com/48850794/165687573-a3099473-09af-4fc5-836e-35d96e3da549.png)

![Screenshot (124)](https://user-images.githubusercontent.com/48850794/165687584-f2a68243-fd75-4b82-a414-b0e6d9ce04e6.png)

![Screenshot (125)](https://user-images.githubusercontent.com/48850794/165687586-77d6a2a7-b04a-4128-8797-9997ad9a53bc.png)

![Screenshot (127)](https://user-images.githubusercontent.com/48850794/165687592-cab4eff5-bd8c-46e8-8659-ee7f0abe3715.png)

<br />
We go for sub module level synthesis generally when : <br />
- We have multiple instances of same module <br />
- In massive designs where the synthesizer fails to give good netlist so we do block level synthesis and stich them individually <br />
 
## Various Flop Coding Styles and optimization

Why Flip Flops? <br />
Combinational Circuits have propogation delay, in larger circuits we may not get the valid output because of the glitch. In order to avoid the glitches in combinational circuits we require flip flops. 

![paint](https://user-images.githubusercontent.com/48850794/166100918-91351562-7db2-4ee5-9a53-70abbb6822c8.png)

Following various D Flip Flops (DFF) is used in the workshop : <br />
- DFF with Synchronous reset  : Reset is synchronous with clock
- DFF with Asynchronous reset : Reset is not synchronous with clock
- DFF with Asynchronous set   : Set is not synchronous with clock
- DFF with Synchronous and Asynchronous reset
<br />
Above DFFs verilog code is in Day 2 respective file name <br />
Simulation Results of various DFFs : <br />

DFF with Asynchronous reset
![Screenshot (133)](https://user-images.githubusercontent.com/48850794/166102425-7cdf8cf8-55cf-4bfc-8d62-1f1ab6851fb7.png)

DFF with Asynchronous set
![Screenshot (134)](https://user-images.githubusercontent.com/48850794/166102429-2f830672-abcf-4d6c-891b-8702cc361245.png)

DFF with Synchronous reset
![Screenshot (136)](https://user-images.githubusercontent.com/48850794/166102432-26685c9d-ea58-45bb-8271-b797435b23e8.png)
