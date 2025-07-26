#!/bin/bash

# --- Automatically find the script's directory ---
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Call the stop script using the detected path
"$SCRIPT_DIR/stop_ocr.sh"

# Wait one second to ensure the port is freed
sleep 1

# Call the start script using the detected path
"$SCRIPT_DIR/start_ocr.sh"