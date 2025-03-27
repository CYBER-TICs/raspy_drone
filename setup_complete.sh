#!/bin/bash

# Raspy Drone Pro - Complete Setup Script
# Developed by MSc Engineer Jorge Andrés González Carmona and Eng. Mohammed F. AlFarsi
# Date: March 27, 2025
# Purpose: Prepare and automate the Raspberry Pi environment for object detection

echo "=================================================="
echo "Raspy Drone Pro - Complete Setup Script"
echo "=================================================="
echo "Developed by MSc Engineer Jorge Andrés González Carmona and Eng. Mohammed F. AlFarsi"
echo "This script will prepare your Raspberry Pi and automate the startup process."
echo "=================================================="

# Step 1: Update and Upgrade System
echo "Step 1: Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y
echo "System update completed."

# Step 2: Install Python and Required Libraries
echo "Step 2: Installing Python and pip..."
sudo apt install python3 python3-pip -y
echo "Python and pip installed successfully."

echo "Installing required Python libraries..."
pip3 install opencv-python torch torchvision numpy
echo "Python libraries installed successfully."

# Step 3: Enable UART Communication
echo "Step 3: Enabling UART communication for the flight controller..."
sudo sed -i 's/#enable_uart=1/enable_uart=1/' /boot/config.txt
echo "UART enabled. A reboot will be required after setup."

# Step 4: Install Git for Repository Management
echo "Step 4: Installing Git for version control..."
sudo apt install git -y
echo "Git installed successfully."

# Step 5: Create systemd service for auto startup
echo "Step 5: Setting up auto-start for object detection..."

# Create service file
sudo bash -c 'cat << EOF > /etc/systemd/system/detect_objects.service
[Unit]
Description=Object Detection Service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /home/pi/raspy_drone_pro/detect_objects.py
Restart=always
User=pi
WorkingDirectory=/home/pi/raspy_drone_pro
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=object-detection

[Install]
WantedBy=multi-user.target
EOF'

# Enable and start the service
sudo systemctl enable detect_objects.service
sudo systemctl start detect_objects.service
echo "Auto-start service created and enabled."

# Step 6: Final Instructions
echo "=================================================="
echo "Setup completed successfully!"
echo "Please reboot your Raspberry Pi to apply UART changes:"
echo "Command: sudo reboot"
echo "=================================================="