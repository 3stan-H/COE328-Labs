# Lab 3 — 4-Bit Adder/Subtractor Unit (ASU)

## Overview
This lab implements a 4-bit Adder/Subtractor Unit (ASU) in VHDL, targeting an Altera CPLD. A single control input selects between addition and subtraction by conditionally inverting one operand and adjusting the carry-in, rather than using separate adder and subtractor circuits.

## Objectives
- Design a 4-bit ASU in VHDL that performs both addition and subtraction using a shared carry-in input
- Design a combinational decoder circuit to drive seven-segment displays
- Verify correct signed-sum behavior and digit-display output through simulation

## Tools Required
- Quartus II
- Altera CPLD target board

## Files
- `asu_4bit.vhd` — 4-bit adder/subtractor core
- `seven_seg_decoder.vhd` — combinational logic to drive seven-segment digit displays
- `top_level.vhd` — top-level module combining the ASU and display decoder
- `test_vectors.txt` — input/output test cases used for simulation

## Instructions
1. Design the 4-bit ASU: XOR the second operand's bits with the mode-select signal (add/subtract) and tie the mode-select into the carry-in to implement two's-complement subtraction.
2. Write and simulate the ASU in VHDL, testing both addition and subtraction across multiple positive/negative input combinations.
3. Design a combinational circuit to decode output values into seven-segment display patterns.
4. Combine the ASU and decoder into a top-level module, mapping outputs to the seven-segment displays on the target board (each digit typically corresponds to part of a multi-digit identifier, per the assigned lab instructions).
5. Compile and simulate the full design, confirming correct results across your test vectors.
6. Program the CPLD (if required) and verify display output on hardware.

## Notes
- Watch for overflow cases when testing 4-bit signed addition/subtraction — include at least one overflow case in your test vectors.
- Keep the add/subtract mode-select and carry-in logic consistent; a common bug is inverting the operand but forgetting to set carry-in correctly.
