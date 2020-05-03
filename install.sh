#!/bin/bash

argScript=$(readlink -f "$0")
basePath="${argScript%/*}"

cd "$basePath"

currentUser=`logname`
currentGroup=`id -gn $currentUser`

currentHomeDir="$(sudo -u $currentUser bash -c "echo ~")"

name="Gmail"

baseInstallDir="$currentHomeDir/Applications"
installDir="$baseInstallDir/$name"

mkdir -p "$baseInstallDir"

description="Gmail App"
icon="icon.png"

rm -rf "$installDir"

mv Gmail-linux-x64 "$name" \
&& mv "$name" "$baseInstallDir/"

wm_class="$(sed -r 's/.*("name"\:")([^"]*)(").*/\2/' "$baseInstallDir/$name/resources/app/package.json")"

echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=$name\nStartupWMClass=$wm_class\nComment=$description\nIcon=$installDir/resources/app/icon.png\nExec=$installDir/$name\nActions=\nCategories=Network;" | tee "$currentHomeDir/.local/share/applications/$name.desktop" \
    && sudo -u $currentUser chmod +x "$currentHomeDir/.local/share/applications/$name.desktop"


# [Desktop Entry]
# Name=Outlook
# Comment=Outlook Web
# GenericName=Outlook
# Exec=/opt/outlook/outlook
# Icon=/opt/outlook/resources/app/icon.png
# Type=Application
# StartupNotify=true
# StartupWMClass=outlook-nativefier-0bc1c3
# Categories=Office;
# Keywords=outlook;

#sudo bash -c "echo -e '[Desktop Entry]\nName=Whatsapp Electron\nExec=/opt/AppImage/whatsapp-electron.AppImage\nTerminal=false\nType=Application\nIcon=/opt/AppImage/icons/whatsapp.png\nStartupWMClass=whatsapp-electron\nX-AppImage-Version=1.1.0\nComment=Unofficial desktop client for WhatsApp Web\nCategories=Network;\n\nTryExec=/opt/AppImage/whatsapp-electron.AppImage\nActions=' | tee '/usr/share/applications/whatsapp.desktop'"