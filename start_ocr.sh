#!/bin/bash

# --- Automatically find the script's directory ---
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SCRIPT_NAME="ocr_server.py" # The name of your Python server script

# Navigate to the script's directory
cd "$SCRIPT_DIR"

# Activate the virtual environment relative to the script's location
source "venv/bin/activate"

echo "Starting OCR server in the background..."

# Run the server with nohup to keep it running after closing the terminal
# and log output to files
nohup python -u "$SCRIPT_NAME" > ocr_server.log 2> ocr_server.err &

echo "Server started successfully."