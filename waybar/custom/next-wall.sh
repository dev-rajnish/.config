#!/bin/bash

# Directory where your wallpapers are stored
WALLPAPER_DIR="~/.config/walls/"
shopt -s globstar
# Get the list of wallpaper files in the directory
WALLPAPER_FILES=("${WALLPAPER_DIR}"*.jpg)

# Check if the directory contains files
if [ ${#WALLPAPER_FILES[@]} -eq 0 ]; then
  echo "No wallpapers found in $WALLPAPER_DIR"
  exit 1
fi

# Get current wallpaper from a state file, or set to the first file if none
CURRENT_WALLPAPER=$(cat ~/.current_wallpaper 2>/dev/null)
if [ -z "$CURRENT_WALLPAPER" ]; then
  CURRENT_WALLPAPER="${WALLPAPER_FILES[0]}"
  echo "$CURRENT_WALLPAPER" >~/.current_wallpaper
fi

# Find the index of the current wallpaper in the array of files
for i in "${!WALLPAPER_FILES[@]}"; do
  if [ "${WALLPAPER_FILES[i]}" = "$CURRENT_WALLPAPER" ]; then
    CURRENT_INDEX=$i
    break
  fi
done

# Calculate the index of the next wallpaper, looping back to the start
NEXT_INDEX=$(((CURRENT_INDEX + 1) % ${#WALLPAPER_FILES[@]}))
NEXT_WALLPAPER="${WALLPAPER_FILES[NEXT_INDEX]}"

# Set the new wallpaper using Hyprland's command
hyprctl set-wallpaper "$NEXT_WALLPAPER"

# Update the state file
echo "$NEXT_WALLPAPER" >~/.current_wallpaper
