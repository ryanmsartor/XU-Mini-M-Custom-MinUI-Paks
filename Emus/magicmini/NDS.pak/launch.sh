#!/bin/sh

export HOME="$(dirname "$0")"
export PATH=$PATH:$HOME
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib

while :; do
	syncsettings.elf
done &
LOOP_PID=$!

cd "$HOME"
./drastic64 "$1" # > ./nds.log 2>&1
sync

kill $LOOP_PID