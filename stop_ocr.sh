#!/bin/bash

SCRIPT_NAME="ocr_server.py" # The name of your Python server script

echo "Stopping OCR server..."

# Find and kill the process by the script name
pkill -f "$SCRIPT_NAME"

# Check if the process was successfully killed
if [ $? -eq 0 ]; then
    echo "Server stopped successfully."
else
    echo "Server was not running."
fi