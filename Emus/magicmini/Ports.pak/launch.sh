#!/bin/sh

TF1_dir="/roms/ports"
TF2_dir="/storage/TF2/Tools/magicmini/PortMaster.pak"
{
# link TF1 ports folder that PM games look for to PortMaster.pak
if [ ! -h "$TF1_dir" ]; then
	if [ -e "$TF1_dir" ]; then
		rm -rf "$TF1_dir";
	fi
	ln -s "$TF2_dir" "$TF1_dir";
fi

# remove conflicting sdl controller db file
if [ -f "/storage/.config/SDL-GameControllerDB/gamecontrollerdb.txt" ]; then
	rm -f "/storage/.config/SDL-GameControllerDB/gamecontrollerdb.txt";
fi

/bin/sh $1
} > "$TF2_dir/log.txt" 2>&1
