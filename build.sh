#!/bin/bash

echo "Building project $1:$2 with MPLAB X v5.45 and XC8 v1.34"

set -x -e

/opt/mplabx/mplab_platform/bin/prjMakefilesGenerator.sh "$1@$2" || exit 1
make -C "$1" CONF="$2" build || exit 2
