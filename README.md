# Number Sequencer — Intel DE10-Lite FPGA

A digital number sequencer implemented on the **Intel DE10-Lite FPGA board** using Verilog HDL and Intel Quartus Prime. The design uses a **Finite State Machine (FSM)** to cycle through number sequences displayed on the onboard HEX seven-segment display — even numbers when the switch is off, and odd numbers when the push button is held.

---
# Video Demo

![Number Sequencer Demo](https://github.com/user-attachments/assets/2c525970-1f8c-46b7-9cf1-615e30d31c68)

Link to full video on youtube: https://youtube.com/shorts/elHGJ45s2p8

---

## Built With

- **Verilog HDL** — RTL and dataflow logic
- **Intel Quartus Prime** — Synthesis, compilation, and Block Diagram Editor
- **Intel DE10-Lite FPGA Board** — Hardware deployment and verification

---

## How It Works

The sequencer is built around a **3-bit Finite State Machine (FSM)** with separate logic paths for even and odd sequences.

### State Machine
- The FSM uses three state bits (`state[2]`, `state[1]`, `state[0]`) to track the current position in the sequence
- `next_state` logic is derived from boolean expressions that determine state transitions on each clock cycle

### Output Logic
- `Dout[3:0]` drives the HEX seven-segment display based on the current state and the `odd` input signal
- All logic is implemented using synthesizable `assign` statements in dataflow Verilog

### I/O Control
| Input | Behavior |
|-------|----------|
| Switch OFF | Displays even number sequence (0, 2, 4, 6, ...) |
| Push Button HELD | Displays odd number sequence (1, 3, 5, 7, ...) |

---

## Design

The full design was built and verified in **Intel Quartus Prime**, including:
- RTL logic written entirely in Verilog HDL
- A complete block diagram schematic created using Quartus Prime's Block Diagram Editor
- Compilation and synthesis performed in Quartus Prime before deployment to the FPGA board

---

## Block Diagram

First, the schematic for the state register of the FSM was built using built-in Quartus Prime logical block units.

<img width="998" height="421" alt="image" src="https://github.com/user-attachments/assets/6227ecce-27da-4e5f-967b-db6f5c781970" />

Second, the sequencer FSM schematic was built by adding the .v logical block and the state register block.

<img width="889" height="297" alt="image" src="https://github.com/user-attachments/assets/51e3d8bf-7e99-4b61-9ff8-4c1c6249186a" />

Lastly, the sequencer FSM block is added to the final sequencer .bdf file along with the seven-segment display converter .v file and the LPM_counter. 

<img width="1921" height="708" alt="image" src="https://github.com/user-attachments/assets/51e6b2a1-74f0-4d03-b8e6-2ba67a7d8b2a" />

---

## Repository Structure

```
├── seven_segment_converter.v    # Seven-segment display output logic
├── sid_sequencer_comb.v         # Combinational FSM logic (next state & output)
├── sid_sequencer.bdf            # Top-level block diagram
├── sid_sequencer_fsm.bdf        # FSM block diagram
├── state_register.bdf           # State register schematic
└── README.md                    # Project documentation
```

---

## Getting Started

To replicate this project you will need:
- Intel DE10-Lite FPGA board
- Intel Quartus Prime (Lite Edition is free)

**Steps:**
1. Clone this repository
2. Open the project in Quartus Prime
3. Compile and synthesize the design
4. Program the `.sof` file onto the DE10-Lite board via USB Blaster
5. Toggle the switch and push button to observe the sequences on the HEX display

---

## Course

*Digital Devices & Logic Design — Mississippi State University — 2025*
