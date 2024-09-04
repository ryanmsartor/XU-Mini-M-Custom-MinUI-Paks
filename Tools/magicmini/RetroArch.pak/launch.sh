#!/bin/sh

export HOME="$(dirname "$0")"

cd $HOME

while :; do
	syncsettings.elf
done &
LOOP_PID=$!

./retroarch --config "$HOME/.config/retroarch/retroarch.cfg" > ./ra.log 2>&1

kill $LOOP_PID
