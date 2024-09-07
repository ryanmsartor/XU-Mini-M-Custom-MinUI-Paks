#!/bin/sh
mydir=`dirname "$0"`

export HOME=$mydir
export PATH=$mydir:$PATH
export LD_LIBRARY_PATH=.:$mydir/lib:/usr/miyoo/lib:$LD_LIBRARY_PATH

sv=`cat /proc/sys/vm/swappiness`

# 60 by default
echo 10 > /proc/sys/vm/swappiness

cd $mydir
./mupen64plus "$1"
sync

echo $sv > /proc/sys/vm/swappiness
