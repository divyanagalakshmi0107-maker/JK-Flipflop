# JK Flip-Flop Using Verilog HDL

## Aim

To design and simulate a JK Flip-Flop using Verilog HDL and verify its operation using a testbench and waveform simulation.

## Introduction

A JK Flip-Flop is a sequential logic circuit used for storing one bit of information. It has two inputs, J and K, a clock input, and outputs Q and Q_bar.

The JK Flip-Flop performs four operations:

| J | K | Operation |
|---|---|-----------|
| 0 | 0 | No Change |
| 0 | 1 | Reset |
| 1 | 0 | Set |
| 1 | 1 | Toggle |

## Project Structure

```text
JK-FlipFlop-Verilog/
├── README.md
├── src/
│   └── jk_flipflop.v
├── tb/
│   └── jk_flipflop_tb.v
└── simulation/
    └── waveform.vcd