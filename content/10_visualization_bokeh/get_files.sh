#!/bin/bash
#
# Downloads data files from Github repo to local folder on Google Colab
#
# This file is a Linux shell script. All of the following lines could
# be executed at a Linux Bash command line (Bash is a type of command
# line).

# Create a variable with a URL to the session 9 folder in the Github repo
base_url="https://raw.githubusercontent.com/irs1318dev/python2023/main"
base_url="${base_url}/output/10_visualization_matplotlib"

# wget is a Linux command line program that downloads a file from a URL
wget -nv $base_url/housing.csv
wget -nv $base_url/vif.pickle
echo File Downloads Complete!