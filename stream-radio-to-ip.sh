#!/bin/bash

ffmpeg -loop 1 -i done.jpg -i http://nettradio.radiobo.com:80/radiobo-high -ar 44100 -ac 2 -b:a 192k -vcodec copy -acodec aac -strict -2 -framerate 1 -video_size 1920×1080 -b:v 192k lydfil.mp4 -hide_banner

#Picture with AAC codec
#ffmpeg -re -loop 1 -i done.jpg -i http://nettradio.radiobo.com:80/radiobo-high -ar 44100 -ac 2  -acodec aac -strict -2  -b:v 192k -b:a 192k -s 1920x1080 -r 10 lydfil.mp4 -hide_banner

#HD Testing - '-r 1' possibly makes the stream with 1 fps.
#ffmpeg  -loop 1 -i done.jpg -i http://nettradio.radiobo.com:80/radiobo-high  -b:a 192k -ac 2 -f mpegts -s 1920x1080 -r 1 udp://localhost:8090 -hide_banner

#720 Testing
#ffmpeg  -re -loop 1 -i logo.jpg -i http://nettradio.radiobo.com:80/radiobo-high  -b:a 192k -ac 2 -f mpegts -s 1280x720 -r 1 udp://localhost:8090 -hide_banner



