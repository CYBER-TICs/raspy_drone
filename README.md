# Raspy Drone Pro - Integration for Real-Time Object Detection  

Developed by Research and Development MSc Engineer Jorge Andrés González Carmona and Eng. Mohammed F. AlFarsi, this project provides a flexible system for integrating any type of drone with a **Raspberry Pi**, a flight controller (FC), and compatible components. Designed to enable advanced real-time object detection, it identifies **persons, vehicles, tanks, animals, and plants** by processing high-resolution data and transmitting results to FPV goggles, combining innovation and precision.

This system is compatible with any drone configuration, as it utilizes modular components such as the flight controller, Raspberry Pi, and a camera system capable of high-quality image capture. The adaptable architecture allows integration with different hardware setups, making it a universal solution for aerial monitoring and detection.
---

## 🌟 Project Overview
This system is built to leverage cutting-edge technologies in aerial monitoring. By integrating computer vision algorithms, the DJI HD camera, and the processing power of the Raspberry Pi, it serves to enhance situational awareness for various applications such as surveillance, ecological studies, and security missions.

---

## ✈️ Key Components
### **1. Moz 7 Inches Drone**
- **Flight Controller (FC)**: TAKER F722 BT FC V3.
- **Camera**: DJI HD for high-resolution image capture.
- **Frame**: Durable and optimized for stability in long-range operations.

### **2. Raspberry Pi**
- **Recommended Model**: Raspberry Pi 4 (Raspberry Pi 3 is also compatible).
- **Purpose**: Processes images from the DJI HD camera using computer vision algorithms.

### **3. Radiomaster TX16S Transmitter**
- **Protocol Options**: Configurable for **ExpressLRS (ELRS)** or **TBS Crossfire** for reliable control.

### **4. FPV Goggles**
- Displays processed images and object detections in real time, enhancing situational awareness.

---

## ⚙️ Features
1. **Object Detection**: Identifies multiple categories:
   - **Person**: Detects human figures for security and crowd management.
   - **Vehicle**: Recognizes cars, trucks, and transport units.
   - **Tank**: Detects military vehicles.
   - **Animal**: Tracks wildlife for ecological studies.
   - **Plant**: Identifies vegetation for agricultural monitoring.
   
2. **Data Processing**: The Raspberry Pi processes images using models such as **YOLOv5** or **YOLOv8**.

3. **Real-Time Visualization**: Processed data is transmitted to FPV goggles, ensuring immediate analysis.

4. **Complete Automation**: Bash scripts streamline the configuration of all components.

---

## 🛠️ Step-by-Step Installation
### **Step 1: Clone the Repository**
Download the project files directly from GitHub:
```bash
git clone https://github.com/CYBER-TICs/raspy_drone_pro_moz.git
cd raspy_drone_pro_moz
```

---

### **Step 2: Install Dependencies**
Automate the installation with the included bash script:
```bash
bash install.sh
```
This script:
- Updates the Raspberry Pi OS.
- Installs required Python libraries (**OpenCV**, **TensorFlow**, **PyTorch**).
- Configures UART for communication with the flight controller.

---

### **Step 3: Setup the Drone and Raspberry Pi**
1. **Flight Controller (FC)**:
   - Connect the FC to a computer and open Betaflight Configurator.
   - Flash the latest firmware and configure UART ports.
   - Set the protocol to **CRSF (Crossfire)** for ELRS or TBS.

2. **Raspberry Pi**:
   Execute the setup script to configure the drone and camera:
   ```bash
   bash setup_moz7.sh
   ```

---

### **Step 4: Configure Radiomaster TX16S**
#### **Option 1: ExpressLRS (ELRS)**
- Pair the transmitter with the receiver installed on the drone.
- Verify the telemetry and receiver signals using Betaflight Configurator.

#### **Option 2: TBS Crossfire**
- Pair the Crossfire module with the receiver on the drone.
- Check telemetry data and ensure stable communication.

---

### **Step 5: Run Object Detection**
Start the detection algorithm to analyze images from the DJI HD camera:
```bash
python3 detect_objects.py
```

The processed images will highlight detected objects and transmit them to FPV goggles for real-time visualization.

---

## 🎥 Detection Workflow
1. **Image Capture**: The DJI HD camera collects high-resolution images during flight.
2. **Processing**: The Raspberry Pi runs object detection models to analyze and classify objects.
3. **Visualization**: FPV goggles display the processed data with highlighted detections.

---

## 📜 Included Scripts
1. **install.sh**:
   - Automates dependency installation and system setup.
2. **setup_moz7.sh**:
   - Configures drone-specific settings and the DJI camera.
3. **detect_objects.py**:
   - Runs the object detection models and streams results to FPV goggles.
4. **diagnostic.sh**:
   - Verifies communication between the Raspberry Pi, the drone, and connected devices.

---

## ⚡ ELRS vs. TBS Recommendations
| **Protocol**      | **Advantages**                                              | **Ideal for**                           |
|--------------------|------------------------------------------------------------|---------------------------------------|
| **ExpressLRS**     | Low latency, open-source protocol, excellent range         | Advanced FPV flights, flexible setups |
| **TBS Crossfire**  | High stability, reliable for long-range missions           | Critical and extended-range missions  |

---

## 📄 License
This project is licensed under the MIT License. For detailed information, refer to the `LICENSE` file.

---

## 📅 Project Signature
Developed and documented by:

**Jorge Andrés González Carmona, MSc**  
Creation Date: ** 2025**  
Purpose: **Aerial object detection system integrating Raspberry Pi, Moz 7 drone, and DJI HD camera.**

---
