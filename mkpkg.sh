#!/bin/sh

./build.sh
rm -rf add
mkdir add
unzip df.zip -d add
zip -r add.dfpkg add *.json -x "*/\.*"
rm -rf add

./release.sh
rm -rf add
mkdir add
unzip release.zip -d add
zip -r add_min.dfpkg add *.json -x "*/\.*"
rm -rf add
