#!/bin/bash

readonly URL="https://raw.githubusercontent.com/j54n1n/raspbian-mods/develop/"
readonly FILES="setup-raspbian.sh setup-rpi-desktop.sh setup.lib.sh"

for file in $FILES; do
  wget "$URL$file"
done

source "$(dirname $0)/setup.lib.sh"

if [ $ID = debian ]; then
  bash setup-rpi-desktop.sh
fi

if [ $ID = raspbian ]; then
  bash setup-raspbian.sh
fi

rm $FILES

exit 0