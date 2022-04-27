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
