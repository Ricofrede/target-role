#!/bin/bash
echo "Launching Triaba - Backend container..."
echo "Setting filesystem permissions"

(chmod -R 777 /app)

echo "Starting Triaba - Backend..."
cd /app ; npm run develop $@
