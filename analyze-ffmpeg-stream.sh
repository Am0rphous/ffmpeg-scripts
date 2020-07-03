#!/bin/bash

#apt install ffmpeg
#ffprobe protocol:ip:port

ffprove udp://ip:8080
ffprobe udp://192.168.1.144:8090

#Possible issues
# - Check port forwarding in firewall if within a private network
# - Check firewall on local machine
# - Use Wireshark / TCPdump to check if packets are arriving to you
