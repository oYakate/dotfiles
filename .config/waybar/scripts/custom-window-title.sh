#!/bin/bash

window_class=$(hyprctl activewindow -j | jq -r '.class')
window_title=$(hyprctl activewindow -j | jq -r '.title')


echo "{\"text\": \"<span>$window_title</span>\", \"class\": \"$window_class\"}"
