#!/bin/bash

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

echo "{\"text\": \"<span>$icon</span> <span weight=\\\"bold\\\">$window_title</span>\", \"class\": \"$window_class\"}"
