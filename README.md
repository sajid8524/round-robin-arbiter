# round-robin-arbiter
# 🧩 Weighted Round Robin Arbiter (ASIC Design Flow)

[![EDA Tool](https://img.shields.io/badge/EDA-Cadence%20Genus%20%7C%20Innovus-blue)]()
[![Language](https://img.shields.io/badge/HDL-Verilog-brightgreen)]()
[![Process Node](https://img.shields.io/badge/Technology-180nm-orange)]()
[![Category](https://img.shields.io/badge/Type-Digital%20Design%20%7C%20ASIC-lightblue)]()
[![License](https://img.shields.io/badge/License-Academic-lightgrey)]()

---

### 🎯 **Project Overview**

This repository presents the complete **ASIC implementation flow** of a **Weighted Round Robin (WRR) Arbiter**,  
developed using **Cadence Genus** and **Cadence Innovus** on a **180 nm standard cell technology**.

The WRR Arbiter ensures **fair and weighted access** to shared resources in multi-core and SoC systems — a vital component in **Network-on-Chip (NoC)** routers, **memory controllers**, and **bus arbiters**.  

The project covers the **entire RTL-to-GDSII flow**, including:
- RTL Design in Verilog  
- Simulation and Verification  
- Logic Synthesis (Genus)  
- Physical Design (Innovus)  
- DRC, LVS, and Antenna Verification  
- GDSII Generation  

---

## 🧠 **About the Project**

A **Weighted Round Robin Arbiter** assigns priority based on predefined weights, ensuring proportional fairness among requestors.  
This project implements a scalable WRR architecture where:
- Each client receives access proportional to its assigned weight.
- Lower priority clients are never starved.
- All modules are parameterized for flexibility and reusability.

This design is particularly suited for:
- **Network-on-Chip (NoC)** routers  
- **Shared memory systems**  
- **Bus interconnects**  
- **Multimedia SoCs** and **QoS-driven designs**

---

## ⚙️ **Design Methodology**

The design follows a complete **ASIC Front-End to Back-End Flow**:

| Stage | Description | Tool |
|--------|--------------|------|
| **1. RTL Design** | Verilog HDL design of WRR Arbiter modules (`ngprc`, `grant_fsm`, `weight_decoder`) | Manual (VS Code / HDL IDE) |
| **2. Simulation** | Functional simulation and waveform verification | Cadence Xcelium |
| **3. Logic Synthesis** | RTL mapped to standard cells, area/power/timing reports generated | Cadence Genus |
| **4. Floorplanning & Power Planning** | Core, I/O, and power grid setup | Cadence Innovus |
| **5. Placement, CTS, and Routing** | Physical implementation with congestion optimization | Cadence Innovus |
| **6. Physical Verification** | DRC, LVS, and Antenna checks | Innovus & PVS |
| **7. GDSII Export** | Final tape-out ready layout generation | Innovus |

---


## 📊 **Results Summary**

| Parameter | Result | Tool |
|------------|---------|------|
| **Technology Node** | 180 nm | Genus / Innovus |
| **Target Frequency** | 100 MHz |  |
| **Worst Negative Slack (WNS)** | +7.709 ns | Timing Report |
| **Total Cell Area** | 2138.875 µm² | Area Report |
| **Total Power** | 0.247 mW | Power Report |
| **Instances** | 74 (4 sequential, 70 combinational) | Genus |
| **DRC Violations** | 0 | Innovus |
| **LVS Errors** | 0 | Innovus |
| **Antenna Violations** | 0 | Innovus |
| **Final GDS File** | ✅ Generated Successfully | Innovus |

---

## 🔬 **Comparative Analysis**

| Design | Technology | Total Cell Area (µm²) | Total Power (mW) |
|--------|-------------|-----------------------|------------------|
| **This Work (WRR Arbiter)** | 180 nm | 2138.875 | 0.247 |
| **Reference Paper** | 45 nm | 4943.03 | 0.1789 |

Despite being implemented in an older process node, the proposed WRR Arbiter achieves **compact area utilization** and **low power consumption**, validating its efficient logic structure.

---

## 📘 **Project Report**

📄 [**Download Full Report (PDF)**](./wrr_report.pdf)

The report includes:
- Complete RTL code and explanations  
- Synthesis results and analysis  
- Area, timing, and power reports  
- Physical layout and verification screenshots  
- Comparison with existing WRR designs  

---

## 💡 **Key Learnings**

- Understanding the **complete ASIC Design Flow** (RTL → GDSII)  
- Experience with **Cadence Genus and Innovus** toolchain  
- Hands-on exposure to **floorplanning, CTS, routing, and timing closure**  
- Knowledge of **low-power, high-efficiency hardware design**  
- Professional report generation and tool command documentation  

---
## 🧰 **Tools and Technologies**

- **Cadence Genus** – Logic Synthesis  
- **Cadence Innovus** – Physical Design  
- **Cadence PVS** – Physical Verification  
- **Verilog HDL** – RTL Modeling  
- **Xcelium** – Simulation  
- **GDSII** – Final Layout Format  

---

## 🏁 **Conclusion**

The **Weighted Round Robin Arbiter** was successfully designed, synthesized, and physically implemented using industry-standard EDA tools.  
The final layout passed all physical verification checks (DRC, LVS, Antenna) and the **GDSII file** was generated successfully.  

This project demonstrates an end-to-end ASIC flow and provides a solid foundation for future work in **digital design**, **NoC arbitration**, and **VLSI physical implementation**.

---
## 👨‍💻 **Author**

**D. Sajid Ali**  
B.Tech, Electronics and Communication Engineering  
IIITDM Kurnool  


---


