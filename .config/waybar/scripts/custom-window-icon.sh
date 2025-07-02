#!/bin/bash

declare -A icons
icons["firefox"]=""
icons["code-oss"]=""
icons["kitty"]=""
icons["vesktop"]=""
icons["discord"]=""
icons["Spotify"]="󰓇"
icons["obsidian"]="󰎚"

icons["default"]="󰊠"


# Get active window class using hyprctl
window_class=$(hyprctl activewindow -j | jq -r '.class')
window_title=$(hyprctl activewindow -j | jq -r '.title')

icon="${icons[$window_class]:-${icons["default"]}}"

#echo "{\"text\": \"<span>$icon</span>\"}"
echo "{\"text\": \"$icon\"}"

