#!/bin/sh

export HOME="$(dirname "$0")"
export PATH=$PATH:$HOME/bin
export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH

while :; do
	syncsettings.elf
done &
LOOP_PID=$!

cd "$HOME"
pico8_64 -run "$1" > ./p8-native.log 2>&1
sync

kill $LOOP_PID