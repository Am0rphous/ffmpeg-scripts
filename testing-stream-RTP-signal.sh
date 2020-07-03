#!/bin/bash

#Note: for dummy proofing: check if 'ffmpeg' is installed.
# If not, propose to install: 'apt install ffmpeg -y'

#Command under streams a signal to localhost on port 1234
fmpeg -re -f lavfi -i aevalsrc="sin(400*2*PI*t)" -ar 8000 -f mulaw -f rtp rtp://127.0.0.1:1234

#Can easily stream to another IP and port
#port=8080
#ip=192.168.38.20
#fmpeg -re -f lavfi -i aevalsrc="sin(400*2*PI*t)" -ar 8000 -f mulaw -f rtp rtp://$ip:$port

#To listen run following command on the same computer/server
#ffplay rtp://127.0.0.1:1234
