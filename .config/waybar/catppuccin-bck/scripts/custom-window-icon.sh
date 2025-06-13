#!/bin/bash

# Example of mapping window classes to icons
declare -A icons
icons["firefox"]=""
icons["code-oss"]=""
icons["kitty"]=""
icons["vesktop"]=""
icons["discord"]=""

icons["default"]="󰊠"


# Get active window class using hyprctl
window_class=$(hyprctl activewindow -j | jq -r '.class')
window_title=$(hyprctl activewindow -j | jq -r '.title')

icon="${icons[$window_class]:-${icons["default"]}}"

# Output in the format Waybar expects, with Pango markup, using the real variables:
echo "{\"text\": \"<span>$icon</span>\"}"

