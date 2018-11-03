#!/bin/bash

# Install core packages
cd ~
sudo yum update -y
sudo yum install -y python3

# Python and Pip
curl -O https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
rm get-pip.py

# Install Sphinx
sudo npm install -g jsdoc
pip install sphinx-js sphinx-rtd-theme --user

# Install nginx
sudo amazon-linux-extras install nginx1.12