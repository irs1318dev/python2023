#!/bin/bash
#
# Downloads data files from Github repo to local folder on Google Colab
#
# This file is a Linux shell script. All of the following lines could
# be executed at a Linux Bash command line (Bash is a type of command
# line).

# Create a variable with a URL to the session 9 folder in the Github repo
base_url="https://raw.githubusercontent.com/irs1318dev/python2023/main"
base_url="${base_url}/output/s08_tabular_data"

# wget is a Linux command line program that downloads a file from a URL
wget -nv $base_url/matches.pickle
wget -nv $base_url/recent-grads.csv
wget -nv $base_url/space.csv

mkdir images
cd images
images_url="${base_url}/images"
wget -nv $images_url/600px-Teletype-IMG_7287.jpg
wget -nv $images_url/asr33_2.jpg
setup_url="${base_url}/setup"
wget -nv $setup_url/matches.json
cd ..
echo File Downloads Complete!