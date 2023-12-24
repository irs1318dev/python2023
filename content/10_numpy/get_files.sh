#!/bin/bash
#
# Downloads data files from Github repo to local folder on Google Colab
#
# This file is a Linux shell script. All of the following lines could
# be executed at a Linux Bash command line (Bash is a type of command
# line).

# Create a variable with a URL to the session 9 folder in the Github repo
base_url="https://raw.githubusercontent.com/irs1318dev/python2023/main"
base_url="${base_url}/output/10_numpy"

mkdir images
cd images
images_url="${base_url}/images"
# wget is a Linux command line program that downloads a file from a URL
wget -nv $images_url/array.png
wget -nv $images_url/memory.png
wget -nv $images_url/urban-area.png
cd ..
mkdir mnist
cd mnist
wget -nv $base_url/mnist/digits.csv
cd ..
mkdir rad
cd rad
rad_url="${base_url}/rad"
wget -nv $rad_url/run-data.csv
wget -nv $rad_url/sources.csv
wget -nv $rad_url/spectra.npz
wget -nv $rad_url/spectrum-100367.npy
wget -nv $rad_url/spectrum-107702.npy
echo File Downloads Complete!