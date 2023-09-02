#!/bin/bash
#
# Downloads data files from Github repo to local folder on Google Colab
#
# This file is a Linux shell script. All of the following lines could
# be executed at a Linux Bash command line (Bash is a type of command
# line).

# Create a variable with a URL to the session 9 folder in the Github repo
base_url="https://raw.githubusercontent.com/irs1318dev/python2023/main"
base_url="${base_url}/output/15_classes_I"

# wget is a Linux command line program that downloads a file from a URL
wget -nv $base_url/die.py
wget -nv $base_url/tenthousand_game_analysis.pdf
wget -nv $base_url/__init__.py
mkdir tenthou
cd tenthou
tenthou_url="${base_url}/tenthou"
wget -nv $tenthou_url/__init__.py
wget -nv $tenthou_url/dice.py
wget -nv $tenthou_url/game.py
wget -nv $tenthou_url/ten1000.py
cd ..
echo File Downloads Complete!