#!/bin/sh

# Script to provide a one line install for a Codecademy launcher for the Raspberry Pi.
# 
# Motivating use case:
# - To be able to provide consise and robust instructions for installing a basic
#   Raspberry Pi setup.
#   
# Usage:
# 
# curl -L https://github.com/KanoComputing/codecademy-launcher/raw/master/install.sh | sh
# wget --no-check-certificate https://github.com/KanoComputing/codecademy-launcher/raw/master/install.sh -O - | sh

LAUNCHER_DIR="/opt/kano/codecademy-launcher"

if [ -d $LAUNCHER_DIR ]
then
  echo "[Codecademy Launcher installer] It looks like you've already got the Codecademy Launcher installed."
  echo "[Codecademy Launcher installer] You'll need to remove $LAUNCHER_DIR to install."
  exit
fi

echo "[Codecademy Launcher installer] Installing Chromium."
sudo apt-get install chromium git-core

echo "[Codecademy Launcher installer] Installing desktop icon."
sudo mkdir -p $LAUNCHER_DIR
sudo git clone git://github.com/KanoComputing/codecademy-launcher.git $LAUNCHER_DIR
ln -s $LAUNCHER_DIR/codecademy.desktop $HOME/Desktop/codecademy.desktop