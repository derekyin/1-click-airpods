#!/bin/bash
set -euo pipefail

echo Enter AirPod name
read name

sed -i '' "s|AIRPODS_NAME|$name|g" airpods.applescript

osacompile -o 1ClickAirpods.app airpods.applescript

sudo cp -R 1ClickAirpods.app /Applications/
rm -r 1ClickAirpods.app

sudo cp -f icon.icns /Applications/1ClickAirpods.app/Contents/Resources/applet.icns
