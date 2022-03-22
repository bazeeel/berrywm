#!/bin/bash



# Dmenu script for editing some of my more frequently edited config files.


declare options=("alias
bash
i3config
profile
vifm
i3blocks
xresources
quit")

choice=$(echo -e "${options[@]}" | rofi -dmenu -i -no-custom -p 'Edit a config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alias)
		choice="$HOME/.config/aliasrc"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	i3config)
		choice="$HOME/.config/i3/config"
	;;
	profile)
		choice="$HOME/.profile"
	;;
	vifm)
		choice="$HOME/.config/vifm/vifmrc"
	;;
	i3blocks)
		choice="$HOME/.config/i3blocks/config"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	*)
		exit 1
	;;
esac
subl -c "$choice"
