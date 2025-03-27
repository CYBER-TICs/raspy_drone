#!/bin/bash

# Raspy Drone Pro - Install Script
# Developed by MSc Engineer Jorge Andrés González Carmona and Eng. Mohammed F. AlFarsi
# Date: March 27, 2025
# Purpose: Prepare Raspberry Pi for Real-Time Object Detection with all required dependencies

echo "=================================================="
echo "Raspy Drone Pro - Installation Script"
echo "=================================================="
echo "Developed by MSc Engineer Jorge Andrés González Carmona and Eng. Mohammed F. AlFarsi"
echo "Preparing your Raspberry Pi environment..."
echo "=================================================="

# Step 1: Update and Upgrade System
echo "Step 1: Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y
echo "System update completed."

# Step 2: Install Python and Required Libraries
echo "Step 2: Installing Python and pip..."
sudo apt install python3 python3-pip -y
echo "Python and pip installed."

echo "Installing required Python libraries..."
pip3 install opencv-python torch numpy
pip3 install torchvision  # Torchvision for YOLO support
echo "Python libraries installed successfully."

# Step 3: Enable UART Communication
echo "Step 3: Enabling UART communication for the flight controller..."
sudo sed -i 's/#enable_uart=1/enable_uart=1/' /boot/config.txt
echo "UART enabled. A reboot will be required."

# Step 4: Install Git for Repository Management
echo "Step 4: Installing Git for version control..."
sudo apt install git -y
echo "Git installed."

# Step 5: Final Instructions
echo "=================================================="
echo "Installation completed successfully!"
echo "Please reboot your Raspberry Pi to apply UART changes:"
echo "Command: sudo reboot"
echo "=================================================="