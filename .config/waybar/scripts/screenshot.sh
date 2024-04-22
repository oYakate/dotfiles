#!/bin/bash 
sleep 0.1 ;grim -g "$(slurp)" - | convert - -shave 1x1 PNG:- | wl-copy
