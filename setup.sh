#!/bin/bash
set -euo pipefail

brew install gnu-sed

echo Enter AirPod name
read name

gsed -i "s|AIRPODS_NAME|$name|g" airpods.applescript

osacompile -o 1ClickAirpods.app airpods.applescript

sudo cp -R 1ClickAirpods.app /Applications/