#!/bin/bash
sudo apt update
sudo apt install -y python3-pip

cd /path/to/deployment/directory/

pip3 install -r requirements.txt

nohup python3 app.py > app.log 2>&1 &
