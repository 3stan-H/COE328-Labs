# Lab 5 — Sequential Circuits: Custom Finite State Machine

## Overview
This lab introduces finite state machine (FSM) design. Starting from an assigned state diagram, both Mealy and Moore implementations are derived by hand, then implemented in VHDL to cyclically sequence digit output on a seven-segment display.

## Objectives
- Derive a state table and flip-flop excitation equations from an assigned state diagram
- Implement both Mealy and Moore versions of the FSM in VHDL
- Use the FSM to sequence multi-digit output on a seven-segment display, including handling for invalid states

## Tools Required
- Quartus II

## Files
- `fsm_mealy.vhd` — Mealy machine implementation
- `fsm_moore.vhd` — Moore machine implementation
- `state_diagram.pdf` — hand-derived state diagram, state table, and flip-flop equations
- `top_level.vhd` — top-level module driving the seven-segment display from the FSM output

## Instructions
1. From the assigned state diagram, derive a state table, assign binary state codes, and derive next-state and output logic equations by hand.
2. Implement the FSM in VHDL as a Moore machine (output depends only on current state).
3. Implement the same FSM as a Mealy machine (output depends on current state and input) and compare the two implementations.
4. Connect the FSM output to seven-segment display decoding logic so the design cycles through the assigned digit sequence.
5. Add handling for any unused/invalid state codes so the design doesn't produce undefined output if it enters an invalid state.
6. Compile and simulate both versions, confirming state transitions and display output match your hand-derived state diagram.

## Notes
- Keep your state assignment consistent between your hand-derived work and your VHDL — mismatched state encodings are a common source of simulation errors.
- Compare the Mealy and Moore implementations in your report (e.g., output timing differences, state count, logic complexity).
