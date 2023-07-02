#!/bin/bash
# Perform the health check
if curl --fail http://localhost:80; then
  echo "Container is healthy"
  exit 1
else
  # Send a message to the Telegram bot
  curl -s -X POST "https://api.telegram.org/bot6060797370:AAF2qE_d8b9yheQZeIO7z3IWxZ5DDxgxk9s/sendMessage" -d "chat_id=5325949125&text=Container health check failed!"
  echo "Container health check failed"
  exit 1
fi