#!/bin/bash
HISTORY_FILE="$HOME/.clip_history"
MAX_HISTORY=50

# Create the history file if it doesn't exist
touch "$HISTORY_FILE"

# Get the current clipboard content
current_clip=$(wl-paste -p)

# If clipboard is not empty, append it to the history
if [[ -n "$current_clip" ]]; then
  # Remove the oldest history if the history exceeds the max length
  history_size=$(wc -l < "$HISTORY_FILE")
  if ((history_size >= MAX_HISTORY)); then
    sed -i '1d' "$HISTORY_FILE"  # Delete the first (oldest) line
  fi
  
  # Add the current clipboard content to the history file
  echo "$current_clip" >> "$HISTORY_FILE"
  notify-send "Copied Successfull"
  
fi
