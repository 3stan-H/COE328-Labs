# Lab 6 — Design of a Simple General-Purpose Processor

## Overview
This final lab combines the concepts from all previous labs into a single, complete design: an 8-bit Arithmetic and Logic Unit (ALU) paired with a control unit and register storage to form a functional general-purpose processor core.

## Objectives
- Design an 8-bit ALU in VHDL supporting multiple arithmetic and logic operations
- Design a control unit (FSM + decoder) to generate operation-select signals for the ALU
- Integrate the ALU, control unit, and register storage into a complete processor datapath
- Display processor output on seven-segment hexadecimal displays

## Tools Required
- Quartus II

## Files
- `alu_8bit.vhd` — 8-bit ALU core supporting the assigned operation set
- `control_unit.vhd` — FSM + 4-to-16 decoder generating ALU operation-select signals
- `registers.vhd` — register storage for ALU operands/results
- `top_level.vhd` — top-level processor datapath integrating all sub-modules
- `hex_display.vhd` — seven-segment hexadecimal output logic

## Instructions
1. Design the 8-bit ALU core, implementing the assigned set of arithmetic/logic operations (e.g., add, subtract, AND, OR, XOR, shifts, rotates, increment/decrement — as specified for your assigned operation set).
2. Design a 4-to-16 decoder to translate a 4-bit operation-select code into individual enable lines for each ALU operation.
3. Design a control unit (FSM) that sequences instruction fetch/execute steps and drives the decoder's select lines.
4. Add register storage to hold ALU operands and results between operations.
5. Integrate the ALU, control unit, decoder, and registers into a single top-level processor datapath.
6. Add seven-segment hexadecimal display logic to show ALU results.
7. Compile and simulate the complete processor, testing each supported operation individually and confirming correct results on the display output.

## Notes
- This lab builds directly on Labs 3–5 (combinational logic, decoders, and FSM design) — reusing/adapting those modules where possible will save time.
- Test operations individually before testing the full instruction sequence; isolating ALU bugs is much easier before the control unit is layered on top.
- If your assigned operation set differs from the default 9 operations, update the decoder and control unit's operation-select mapping accordingly.
