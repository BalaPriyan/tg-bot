#!/bin/bash

# Ensure the REPO_URL environment variable is set
if [ -z "$REPO_URL" ]; then
  echo "Error: REPO_URL is not set."
  exit 1
fi

# Clone the repository into a temporary directory
TEMP_DIR=$(mktemp -d)
git clone "$REPO_URL" "$TEMP_DIR"
cd "$TEMP_DIR"

# Install any additional dependencies if needed
pip install -r requirements.txt

# Start the Flask server in the background
python3 /app/app/web_app.py &

# Wait for a few seconds to ensure the Flask server is up
sleep 5

# Start the bot
python3 -m bot
