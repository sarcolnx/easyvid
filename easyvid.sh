#!bin/bash

#webm-to-mkv-converter v0.1
#Creator: Florian Burger
#Date: 2026-09-22

echo "o++++++++++++++++++++++++++++++++++++++++++++++o"
echo "+      Welcome to easyvid-converter        +"
echo "o++++++++++++++++++++++++++++++++++++++++++++++o"

echo "Package ffmpeg is needed.. Checking if package needs to be installed..."
echo "Please wait..."
sudo apt update > /dev/null && sudo apt install ffmpeg -y > /dev/null
echo "Done!"

USER=$(whoami)
mkdir /home/$USER/Videos/easyvid

cd /home/$USER/Videos/easyvid

DIRECTORY=$(pwd)
echo "Currant used directory is $DIRECTORY!"

read -r -p "Select INPUT-File:" INPUT
read -r -p "Select OUTPUT-File:" OUTPUT

ffmpeg -i $INPUT -c copy $DIRECTORY/$OUTPUT > /dev/null
