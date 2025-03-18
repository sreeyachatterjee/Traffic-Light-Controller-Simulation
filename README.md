# 🚦 Traffic Light Controller Simulation – Verilog-based State Machine

## 📌 Description
This project simulates a **Traffic Light Controller** for multiple intersections using **Verilog**. The system uses a **state machine** to control the timing of traffic lights for **North-South** and **East-West** directions.

---

## 🚀 Features
✅ State machine-based traffic light control  
✅ Supports **red, yellow, and green** light phases  
✅ Timed light transitions using a counter  
✅ Testbench for simulation in **ModelSim**/**GTKWave**  

---

## 🛠️ Technologies Used
- **Verilog** – HDL (Hardware Description Language)  
- **ModelSim** – For simulation  
- **GTKWave** – For waveform analysis  

---

## 📂 Project Structure
traffic-light-controller/ │── traffic_light_controller.v # Main Verilog code │── traffic_light_tb.v # Testbench │── README.md # Project documentation


---

## 🚦 State Machine Design
| State | NS Light | EW Light | Duration |
|-------|----------|----------|----------|
| `NS_GREEN` | Green | Red | 50 cycles |
| `NS_YELLOW` | Yellow | Red | 10 cycles |
| `EW_GREEN` | Red | Green | 50 cycles |
| `EW_YELLOW` | Red | Yellow | 10 cycles |

---

## 🚀 How It Works
1. **North-South** starts with a green light for 50 clock cycles  
2. Switches to **yellow** for 10 cycles  
3. **East-West** gets a green light for 50 cycles  
4. Switches to **yellow** for 10 cycles  
5. Repeats in a cyclic pattern  

---


🎯 Compilation & Simulation
1. Compile the Code
Using ModelSim:

```bash

vlog traffic_light_controller.v
vlog traffic_light_tb.v
```

2. Run the Simulation
 ```bash
vsim traffic_light_tb
```
3. View Waveforms (Optional)
Use GTKWave:
 ```bash
gtkwave traffic_light_tb.vcd

