# Raspy Drone Pro - Object Detection Script
# Developed by MSc Engineer Jorge Andrés González Carmona and Eng. Mohammed F. AlFarsi
# Date: March 27, 2025
# Purpose: Detect persons, vehicles, tanks, animals, and plants

import cv2
import torch
import numpy as np

# Load YOLOv5 model
model = torch.hub.load('ultralytics/yolov5', 'yolov5s', pretrained=True)

# Initialize camera stream (replace with DJI connection details if applicable)
camera_stream = cv2.VideoCapture(0)

print("Starting object detection...")

while True:
    ret, frame = camera_stream.read()
    if not ret:
        print("Failed to capture frame.")
        break

    # Run detection
    results = model(frame)

    # Render detections and display them
    cv2.imshow('Drone Detection', np.squeeze(results.render()))

    # Break loop with 'q'
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

camera_stream.release()
cv2.destroyAllWindows()

print("Detection process complete.")