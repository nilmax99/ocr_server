# --- 1. Import Libraries ---
from flask import Flask, request
import easyocr

# --- 2. Load the OCR Model (only once on startup) ---
print("Loading EasyOCR model, please wait...")
# Specify the language(s) you want to use
reader = easyocr.Reader(['en'], gpu=False)
print("OCR server is ready and listening on http://127.0.0.1:5000")
print("To shut down the server, press Ctrl+C in this terminal.")

# --- 3. Create the Flask Web Server ---
app = Flask(__name__)

# Define the endpoint for OCR requests
@app.route('/ocr', methods=['POST'])
def ocr_request():
    # Check if an image file was included in the request
    if 'image' not in request.files:
        return "Error: No image file provided.", 400
    
    # Read the image file from the POST request
    image_file = request.files['image']
    image_bytes = image_file.read()
    
    # Perform OCR on the image bytes
    # paragraph=False and detail=0 are used for maximum speed and simple text output
    result = reader.readtext(image_bytes, paragraph=False, detail=0)
    
    # Join the detected text lines into a single string
    full_text = "\n".join(result)
    
    # Return the final text as the response
    return full_text

# --- 4. Run the Server ---
if __name__ == '__main__':
    # Start the Flask app on the local host and port 5000
    app.run(host='127.0.0.1', port=5000)
