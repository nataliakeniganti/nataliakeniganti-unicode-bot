#!/usr/bin/env bash
set -euo pipefail

mkdir -p ucd_temp
wget -r -np -nH --cut-dirs=3 -R "index.html*" -P ucd_temp https://www.unicode.org/Public/latest/ucd/

rm -rf ucd
mkdir -p ucd
mv ucd_temp/* ucd/
rm -rf ucd_temp

echo "Downloaded files into ./ucd"
