#!/bin/sh

HERE="$(dirname "$0")"
ROM="$1"

CONFIG="$HERE/gzdoom.ini"
SAVE_DIR="/storage/TF2/Saves/GZDOOM"

mkdir -p ${SAVE_DIR}

params=" -config ${CONFIG} -savedir ${SAVE_DIR}"

# EXT can be wad, WAD, iwad, IWAD, pwad, PWAD or doom
EXT=${1#*.}

# If its not a simple wad (extension .doom) read the file and parse the data
if [ ${EXT} == "doom" ]; then
  dos2unix "${1}"
  while IFS== read -r key value; do
    if [ "$key" == "IWAD" ]; then
      params+=" -iwad $value"
    fi
    if [ "$key" == "MOD" ]; then
      params+=" -file $value"
    fi
    done < "${1}"
else
  params+=" -iwad ${1}"
fi

params+=" +gl_es 1 +vid_preferbackend 3 +cl_capfps 0"

cd "$HERE"
./gzdoom ${params} > $HERE/gzdoom.log 2>&1

