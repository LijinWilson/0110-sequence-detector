# 🔍 0110 Sequence Detector (Overlapping) - Verilog

[![Language: Verilog](https://img.shields.io/badge/Language-Verilog-blue.svg)]()
[![FSM Type: Mealy](https://img.shields.io/badge/FSM-Mealy-green)]()
[![Mode: Overlapping](https://img.shields.io/badge/Detection-Overlapping-yellow)]()

This project implements a **Mealy finite state machine (FSM)** that detects the binary sequence **0110** in an input stream. The detector supports **overlapping sequences**, meaning sequences like `0110110` will result in **two valid detections**.

---

## 🎯 Objective

Design a **4-state FSM** that monitors a serial input stream and asserts the output `out = 1` when the sequence `0110` is detected. The output is **asserted immediately** (Mealy behavior).

---

## 🧠 FSM Design

### ➕ States Used

| State | Meaning                   |
|-------|---------------------------|
| s0    | Initial/Reset state       |
| s1    | Got `0`                   |
| s2    | Got `01`                  |
| s3    | Got `011`                 |

### 🔁 State Transitions

```text
             +---1---> s0
             |         |
             |         v
s0 --0--> s1 --1--> s2 --1--> s3 --0--> s1   => Match: "0110", out = 1
```

🔄 Overlapping Detection Example
Input: 0 1 1 0 1 1 0
Output: 0 0 0 1 0 0 1 ✅
Explanation:

The first detection occurs at index 3 (0110)

The second detection overlaps with the previous one and occurs at index 6

🧠 Learning Outcomes
Understanding FSM modeling (Mealy machines)

Designing overlapping sequence detectors

Implementing FSMs using Verilog

Testing and simulating digital logic

👤 Author
LIJIN WILSON
M.Tech in VLSI Design
🔧 Skilled in Verilog | Digital Design | System Modeling

📤 Outcome
<img width="1551" height="809" alt="image" src="https://github.com/user-attachments/assets/3c702957-6490-431f-97c3-ae8dccbd3b3d" />
