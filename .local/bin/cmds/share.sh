#!/bin/bash

file=$(find $HOME/.local/bin/wallpapers/Future -type f | rofi -dmenu -i -no-custom -p 'Search pic')
curl -F "file=@$file" 0x0.st | xclip -selection c
notity-send "Sharing file in"