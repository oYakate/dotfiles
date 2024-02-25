#!/bin/sh
set -e
xinit ~/xinitrc -- $(command -v Xephyr) :1 -screen 1024x768
