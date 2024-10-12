#!/bin/bash

/usr/bin/apt update -y
/usr/bin/apt upgrade -y

/usr/bin/apt install -y git python3
/usr/bin/apt install -y python3-pip

#also tried this; did not work!
#curl -O https://bootstrap.pypa.io/get-pip.py
#python3 get-pip.py

/usr/bin/pip3 install boto3
