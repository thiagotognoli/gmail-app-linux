#!/bin/bash

argScript=$(readlink -f "$0")
basePath="${argScript%/*}"

cd "$basePath"

rm -rf Gmail-linux-x64
unzip Gmail-linux-x64.zip

./install.sh