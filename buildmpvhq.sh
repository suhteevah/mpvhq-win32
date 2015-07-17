#!/bin/bash

echo "Cloning mpvhq from github"

cd ~/mpvhq

git pull

echo "Configuring mpvhq"

python ./bootstrap.py

export PATH=/opt/mxe/usr/bin/:$PATH
DEST_OS=win32 TARGET=i686-w64-mingw32.static ./waf configure

echo "Configuring mpvhq"

cd ~/mpvhq

python ./bootstrap.py

echo "Building mpvhq"

./waf build


echo "Moving files into home"
cd ~/mpvhq/build

cp mpv.* ~

cd ~

upx mpv.*

echo "Finished"

