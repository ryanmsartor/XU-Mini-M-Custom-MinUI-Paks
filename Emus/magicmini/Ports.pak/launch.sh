#!/bin/bash
# export LD_LIBRARY_PATH="/usr/bin:$LD_LIBRARY_PATH"
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

while :; do
	syncsettings.elf >/dev/null 2>&1
done &
LOOP_PID=$!

/bin/sh "$1"

kill $LOOP_PID

} > "$TF2_dir/log.txt" 2>&1
