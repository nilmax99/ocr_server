#!/bin/bash

# This script sets up the OCR server environment.

echo "--- Setting up Python virtual environment ---"
# Create a new virtual environment named 'venv'
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

echo "--- Installing required Python packages ---"
# Install all packages listed in requirements.txt
pip install -r requirements.txt

echo "--- Making control scripts executable ---"
# Make all .sh files executable
chmod +x start_ocr.sh stop_ocr.sh restart_ocr.sh

echo "--- Setup complete! ---"
echo "You can now start the server by running: ./start_ocr.sh"
