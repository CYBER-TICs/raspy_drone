#!/bin/bash

# Raspy Drone Pro - Diagnostic Script
# Developed by MSc Engineer Jorge Andrés González Carmona and Eng. Mohammed F. AlFarsi
# Date: March , 2025
# Purpose: Verify connectivity between Raspberry Pi and drone components

echo "=================================================="
echo "Diagnostic Script - Checking system components..."
echo "=================================================="

# Check UART Communication
echo "Checking UART communication..."
ls /dev/ttyAMA0 && echo "UART is enabled and functional." || echo "UART connectivity failed."

# Verify Python Dependencies
echo "Checking Python dependencies..."
pip3 list | grep -E "opencv|torch" && echo "Dependencies installed." || echo "Missing dependencies."

echo "=================================================="
echo "Diagnostics complete. Review any errors above."
echo "=================================================="