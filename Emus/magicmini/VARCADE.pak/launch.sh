#!/bin/sh

export HOME="/storage/TF2/Tools/magicmini/RetroArch.pak"

cd $HOME

while :; do
	syncsettings.elf
done &
LOOP_PID=$!

./retroarch --config "$HOME/.config/retroarch/retroarch.cfg" -L "$HOME/.config/retroarch/cores/fbneo_libretro.so" "$1" > ./varcade.log  2>&1

kill $LOOP_PID
