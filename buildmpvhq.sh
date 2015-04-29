#!/bin/bash

echo "Cloning mpvhq from github"

<<<<<<< HEAD
cd /home/sativa/mpvhq

git pull

echo "Configuring mpvhq"

python ./bootstrap.py

export PATH=/opt/mxe/usr/bin/:$PATH
DEST_OS=win32 TARGET=i686-w64-mingw32.static ./waf configure
=======
git clone https://github.com/haasn/mpvhq.git ~/mpvhq

echo "Configuring mpvhq"

cd ~/mpvhq

python ./bootstrap.py

DEST_OS=win32 TARGET=x86_64-w64-mingw32.static ./waf configure
>>>>>>> eef8178907c1a0d6b5439c787f2bb9456a04c296

echo "Building mpvhq"

./waf build

<<<<<<< HEAD
echo "Moving files into home"
cd /home/sativa/mpvhq/build

cp mpv.com /home/sativa/mpv.com
cp mpv.exe /home/sativa/mpv.exe

cd /home/sativa/

upx mpv.exe
upx mpv.com

echo "Finished"
=======
echo "Moving files into new dated folder"
cd ~/mpvhq/build

sudo cp mpv.com ~/mpvhq-win64/mpv.com
sudo cp mpv.exe ~/mpvhq-win64/mpv.exe

>>>>>>> eef8178907c1a0d6b5439c787f2bb9456a04c296
