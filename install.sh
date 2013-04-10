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

echo "[Codecademy Launcher installer] Installing Chromium."
sudo apt-get install chromium git-core