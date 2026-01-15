# AES on FPGA (MATLAB + Verilog)

An Advanced Encryption Standard (AES) **encryption/decryption** project developed as part of a **System Design** team module.  
The work includes:

- A **MATLAB reference implementation** (incl. S-Box / SubBytes) plus an **interactive dashboard/app** for testing and visualising the AES flow
- A **Verilog AES implementation** targeting **FPGA deployment**
- An **optimised (8-bit) architecture** aimed at reducing FPGA resource utilisation (slice count)
## Repository structure

- `MATLAB/`  
  MATLAB model used as the *golden reference* and for rapid prototyping, including an app/dashboard for experimentation and visualisation.

- `Verilog/`  
  FPGA-oriented Verilog implementation(s), including baseline modules and an optimised 8-bit architecture (see subfolders/files inside).

> If you add/rename folders (e.g., `Verilog/Optimised/`), update this section to match.

---

## Project highlights

### MATLAB (reference model + dashboard)
- Implemented key AES functions in MATLAB (notably **S-Box** and **SubBytes**) as a starting point for hardware translation.
- Built a **dashboard/app** to:
  - enter plaintext/key
  - run encryption/decryption
  - inspect intermediate states (round-by-round) for debugging & verification

### Verilog (FPGA implementation)
- Designed core AES modules (incl. **SubBytes / S-Box** and control logic).
- Transitioned from MATLAB to Verilog with module-by-module testing.
- Integrated the full design and validated **encryption + decryption** on FPGA hardware.

### Optimisation (8-bit architecture)
- Implemented / adopted an **8-bit datapath architecture** to significantly reduce resource usage (slice utilisation), trading off throughput for area.

---

## Getting started

### Requirements (typical)
**MATLAB**
- MATLAB (with App Designer support, if the dashboard is an `.mlapp`)


**Verilog / FPGA**
- A Verilog simulator (e.g., ModelSim/Questa, Icarus Verilog, Verilator)
- An FPGA toolchain (e.g., Xilinx Vivado/ISE or Intel Quartus), depending on your board

---

## MATLAB usage

1. Open MATLAB and set the repo as your working directory.
2. Navigate to `MATLAB/`.
3. Run the main script **or** open the App Designer file:
   - If you have an app: open the `.mlapp` file and click **Run**
   - Otherwise: run the main entry script (e.g., `main.m`, `aes_demo.m`)

**Tip:** Use the MATLAB implementation as a “golden model” to verify Verilog outputs during development.

---

## Verilog simulation (example workflows)

> Filenames/top modules vary by project—adjust the commands to match your files inside `Verilog/`.

