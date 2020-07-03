#!/bin/bash

ffmpeg -f alsa -i hw:1,0 -f v4l2 -vcodec h264 -video_size 854x480 -r 25 -i /dev/video0 -acodec aac -b:a 64000 -ar 48000 -bufsize 64k -b:v 1200k -bufsize 1024k  -maxrate 1800k -vcodec copy -g 60 -r 30 -f flv rtmp://a.rtmp.youtube.com/live2/stream_here

