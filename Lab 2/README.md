# Lab 2 — Function Implementation and Minimization

## Overview
This lab focuses on implementing basic logic functions using only NAND gates, and on simplifying a more complex custom Boolean function using Karnaugh maps before implementing it in hardware.

## Objectives
- Implement fundamental logic functions (NOT, AND, OR) using only NAND gates
- Derive a minimized sum-of-products expression for an assigned Boolean function using Karnaugh map simplification
- Implement and simulate the minimized design to confirm it matches the original truth table

## Tools Required
- Quartus II

## Files
- `nand_only_logic.vhd` / `.bdf` — NOT/AND/OR functions built from NAND gates only
- `kmap_function.vhd` / `.bdf` — minimized implementation of the assigned Boolean function
- `kmap_worksheet.pdf` — hand-derived Karnaugh map and minimization work

## Instructions
1. Derive NAND-only implementations of a NOT gate, an AND gate, and an OR gate using Boolean algebra.
2. Build and simulate each NAND-only circuit in Quartus II, verifying against the standard gate's truth table.
3. For the assigned custom Boolean function, construct a Karnaugh map and derive a minimal sum-of-products expression.
4. Implement the minimized expression in Quartus II (schematic or VHDL, as specified) and simulate it.
5. Compare the simulation output against the original (non-minimized) truth table to confirm functional equivalence.
6. Include your Karnaugh map work and gate-count comparison (before vs. after minimization) in your report.

## Notes
- Show your Boolean algebra work for the NAND-only derivations — this is usually graded separately from the simulation results.
- Double-check don't-care conditions (if any) when grouping cells on the Karnaugh map, since these affect the minimized expression.
