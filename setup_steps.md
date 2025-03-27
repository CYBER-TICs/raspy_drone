Entendido, Jorge. A continuación te presento el archivo **`setup_steps.md`** actualizado con todos los comandos detallados, para que sea una guía completa y práctica para los usuarios:

---

```markdown
# Steps to Configure and Run the System

This guide explains how to set up and execute the Raspy Drone Pro system on your Raspberry Pi. Follow these steps carefully to ensure everything works smoothly.

---

## **1. Clone the Repository**
Download the repository directly to your Raspberry Pi:
```bash
git clone https://github.com/tu-usuario/raspy_drone_pro.git
cd raspy_drone_pro
```

---

## **2. Run the `install.sh` Script**
The first step is to install all necessary dependencies and enable UART for communication. To execute the script, use:
```bash
chmod +x install.sh  # Grant execution permissions
./install.sh         # Run the installation script
```

### **What this script does:**
- Updates the system (`apt update` and `apt upgrade`).
- Installs Python, pip, and required libraries (OpenCV, Torch, etc.).
- Enables UART communication with the flight controller.

---

## **3. Reboot the Raspberry Pi**
Once the installation is complete, reboot the Raspberry Pi to apply changes:
```bash
sudo reboot
```

---

## **4. Run the `setup_complete.sh` Script**
This script prepares the system for automatic startup by:
- Creating a `systemd` service to run the `detect_objects.py` script at boot.
- Configuring additional dependencies for drone integration.

To execute the script, use:
```bash
chmod +x setup_complete.sh  # Grant execution permissions
./setup_complete.sh         # Run the setup script
```

---

## **5. Test the Configuration**
Before using the system, test the connections and installed dependencies using the `diagnostic.sh` script:
```bash
chmod +x diagnostic.sh  # Grant execution permissions
./diagnostic.sh         # Run diagnostic checks
```

### **What this script checks:**
- UART communication with the flight controller.
- Installed Python dependencies (OpenCV, Torch, etc.).

---

## **6. Power the Drone**
Once everything is set up:
1. Connect the Raspberry Pi to the drone (ensure the flight controller, camera, and VTX are connected properly).
2. Attach the battery to the drone to power the system.
3. The Raspberry Pi will automatically start the object detection script (`detect_objects.py`) and stream the processed images to the FPV goggles.

---

## **7. Manual Execution (Optional)**
If you want to manually start the object detection script, use:
```bash
python3 detect_objects.py
```

---

## **Troubleshooting**
If you encounter any issues:
- Check the service logs:
  ```bash
  journalctl -u detect_objects.service
  ```
- Re-run `diagnostic.sh` to verify the setup:
  ```bash
  ./diagnostic.sh
  ```



