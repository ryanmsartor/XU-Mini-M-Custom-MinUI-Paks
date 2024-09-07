#!/bin/bash

HERE="$(dirname "$0")"
BIN="$HERE/mupen64plus"
LIB_DIR="$HERE/lib"
CFG_DIR="$HERE/config"

SCREENWIDTH=640
SCREENHEIGHT=480
GFX="rice"
# GFX="gl64mk2"

while :; do
    syncsettings.elf
done &
LOOP_PID=$!

"$HERE"/mupen64plus --configdir "$CFG_DIR" --gfx "mupen64plus-video-$GFX" --set Core[SharedDataPath]="$CFG_DIR" --set Video-Rice[ResolutionWidth]="$SCREENWIDTH" --set Video-General[ScreenWidth]="$SCREENWIDTH" --set Video-General[ScreenHeight]="$SCREENHEIGHT" --set Video-Glide64mk2[aspect]=2 --set Video-Glide64mk2[show_fps]=0 --set Video-Rice[ShowFPS]="False" "$1" > "$HERE/log.txt" 2>&1

kill $LOOP_PID