**Lab 1 — Introduction to CAD Tools**

**Overview**

This lab introduces the Quartus II design environment and the two primary methods of digital circuit design entry used throughout the course: schematic capture and VHDL. The goal is to implement the same logic circuit using both methods, then combine them into a single mixed-design project to demonstrate hierarchical, modular design.

Objectives:
- Get familiar with the Quartus II project workflow (project creation, compilation, pin assignment, simulation)
- Implement a logic circuit using the schematic Block Editor
- Implement the same logic circuit using VHDL
- Combine both design entry methods into one top-level mixed design
- 
Tools Required:
- Quartus II
- Target FPGA/CPLD board (as specified by the course)

Files:
- schematic_design.bdf — schematic-based logic circuit
- vhdl_design.vhd — VHDL implementation of the same circuit
- mixed_top.vhd / mixed_top.bdf — top-level design combining both sub-modules
  
Instructions:
- Create a new Quartus II project and select the correct target device.
- Build the assigned logic circuit in the schematic Block Editor, then compile and simulate it to confirm correct output against the expected truth table.
- Re-implement the same circuit in VHDL, writing the entity/architecture pair, then compile and simulate to confirm identical results.
- Create a top-level design file that instantiates both the schematic-based module and the VHDL-based module as sub-components.
- Compile the mixed design and run a final simulation to verify the combined circuit behaves as expected.
- Take waveform screenshots of each simulation for your lab report.
  
Notes:
Save simulation waveform files (.vwf) for both design methods — you'll need to compare them in your report.
Pin assignments should match the target board's I/O if programming actual hardware.
