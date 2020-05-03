#!/bin/bash

argScript=$(readlink -f "$0")
basePath="${argScript%/*}"

cd "$basePath"

currentUser=`logname`
currentGroup=`id -gn $currentUser`

currentHomeDir="$(sudo -u $currentUser bash -c "echo ~")"

name="Gmail"

description="Gmail App"
icon="icon.png"
iconStatus="icon-status.png"

rm -rf Gmail-*

nativefier "https://mail.google.com/" \
    --maximize \
    --tray \
    --single-instance \
    --icon "$icon" \
    --icon-status "$iconStatus" \
    --counter \
    --name "$name" \
    --user-agent "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:70.0) Gecko/20100101 Firefox/70.0" \
    --internal-urls "(.*?mail\.google\.com.*?|.*?accounts\.google\.com.*?)" \
    --electron-version 7.1.11