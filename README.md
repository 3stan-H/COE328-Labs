COE328 – Digital Systems Labs

This repository contains my lab work for COE328: Digital Systems, a course in the Electrical Engineering program at Toronto Metropolitan University. All labs are implemented and simulated in Quartus II, using a mix of schematic capture and VHDL, and targeted at Altera FPGA/CPLD hardware.

For the official lab manuals and course-specific requirements, see the COE328 course page. Each lab also has its own folder with a dedicated README.md covering implementation details, design decisions, and simulation results specific to that lab.

**Repository Structure**
coe328-digital-systems/
├── Lab1-CAD-Tools/
├── Lab2-Function-Minimization/
├── Lab3-Adder-Subtractor-Unit/
├── Lab4-Combinational-Sequential-Circuits/
├── Lab5-Finite-State-Machine/
├── Lab6-General-Purpose-Processor/
└── README.md

Tools Used:
Quartus II – schematic capture, VHDL compilation, and simulation
VHDL – hardware description language used across all labs
Altera FPGA/CPLD – target hardware platform

**Lab Summaries**

Lab 1 — Introduction to CAD Tools:
Introduced Quartus II through both schematic capture and VHDL design entry. Implemented equivalent logic circuits using each method, then combined them into a single mixed-design (VHDL + schematic) module to demonstrate hierarchical design.

Lab 2 — Function Implementation and Minimization:
Implemented basic logic functions (inverter, AND, OR) using only NAND gates, then simplified a custom Boolean function using Karnaugh maps before implementing and simulating the minimized design.

Lab 3 — 4-Bit Adder/Subtractor Unit:
Designed a 4-bit Adder/Subtractor Unit (ASU) in VHDL on an Altera CPLD, multiplexing add/subtract operations through a shared carry-in. Added a combinational decoder circuit to display digits on seven-segment displays.

Lab 4 — Combinational Circuits and Storage Elements:
Designed and simulated a multiplexer, decoder, encoder, and Johnson counter in VHDL, building larger modules (4:1 MUX, 3:8 decoder) from smaller sub-components and validating each against hand-derived truth tables.

Lab 5 — Sequential Circuits: Custom Finite State Machine:
Designed a custom finite state machine (Mealy and Moore implementations) from an assigned state diagram, deriving state tables and flip-flop equations, then implemented it in VHDL to sequence digit output on a seven-segment display.

Lab 6 — Design of a Simple General-Purpose Processor:
Designed an 8-bit ALU in VHDL supporting 9 arithmetic/logic operations, paired with a control unit (FSM + 4-to-16 decoder) and register storage to form a complete general-purpose processor datapath with seven-segment output.

Notes:
Labs progress cumulatively in complexity, starting with basic logic minimization and CAD tool familiarity (Labs 1–2), moving through combinational and sequential circuit design (Labs 3–5), and culminating in a functional processor core (Lab 6). Each lab folder includes the relevant .vhd source files, Quartus project files, and simulation waveforms where applicable.
