# Flip_flops_basic
This repository contains simple Verilog implementations of the four basic flip-flops:


* **RS Flip-Flop**
* **JK Flip-Flop**
* **D Flip-Flop**
* **T Flip-Flop**


# About the Project

This project was made as a beginner-level exercise to get hands-on experience with open-source digital design and verification tools. The goal was not to build something complex, but to understand the basic flow of RTL design, simulation, synthesis, and waveform analysis using:


Verilator – for simulation
Yosys – for synthesis
GTKWave – for viewing waveforms

## Circuit Schematics

Below are the gate-level representations of the implemented circuits.

### RS_flip_flop

<img width="937" height="313" alt="rs_ff_schematic" src="https://github.com/user-attachments/assets/9b1a16e5-81f3-482d-9553-47b88fd25ad2" />


### JK_flip_flop

<img width="906" height="347" alt="jk_ff_schematic" src="https://github.com/user-attachments/assets/b7abd68c-8937-4713-afa8-15d6deb4c289" />

### D_flip_flop

<img width="662" height="153" alt="d_ff_schematic" src="https://github.com/user-attachments/assets/f00bd996-6ae4-40b5-aff5-43a7defb3f3f" />


### T_flip_flop

<img width="550" height="251" alt="t_ff_schematic" src="https://github.com/user-attachments/assets/c1a6fa40-1cce-471b-8e0b-b5376ba59fc4" />



## Design and Verification
* **Languages:** Verilog 
* **Methodology:** Each module includes a dedicated testbench to drive stimulus and observe outputs.
* **Verification:** Functional correctness is verified via waveform simulation.
