# Lab 4 — Combinational Circuits and Storage Elements

## Overview
This lab covers a set of standard combinational building blocks — a multiplexer, decoder, and encoder — along with an introduction to sequential storage elements through the design of a Johnson counter.

## Objectives
- Design and simulate a multiplexer, decoder, and encoder in VHDL
- Build larger versions of these components (e.g., 4:1 MUX, 3:8 decoder) from smaller sub-modules using hierarchical design
- Design a Johnson counter and use it to cyclically drive digit output on a seven-segment display

## Tools Required
- Quartus II

## Files
- `mux_4to1.vhd` — 4:1 multiplexer built from 2:1 multiplexer sub-modules
- `decoder_3to8.vhd` — 3:8 decoder built from 2:4 decoder sub-modules
- `encoder.vhd` — priority/basic encoder implementation
- `johnson_counter.vhd` — Johnson counter with seven-segment digit-cycling logic

## Instructions
1. Design a 2:1 multiplexer and 2:4 decoder as base sub-modules in VHDL.
2. Instantiate multiple copies of each sub-module to build a 4:1 multiplexer and a 3:8 decoder, verifying correct select-line behavior through simulation.
3. Design an encoder circuit and simulate it against its truth table.
4. Design a Johnson counter (shift register with inverted feedback) that cycles through a defined sequence of states.
5. Extend the Johnson counter to drive a seven-segment display, cycling through a multi-digit sequence, with handling for any invalid/error states.
6. Compile and simulate the complete design, confirming correct sequencing and display output.

## Notes
- Build components hierarchically (small modules instantiated inside larger ones) rather than writing flat, repetitive VHDL — this is a core design pattern used throughout the rest of the course.
- Test edge cases for the Johnson counter, such as an invalid initial state, to confirm your error-handling logic works correctly.
