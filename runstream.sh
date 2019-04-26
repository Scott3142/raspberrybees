#!/bin/bash

KEY=${1?Error: Must provide YouTube streaming key}

/usr/bin/raspivid -o - -t 0 -w 1280 -h 720 -vf -fps 40 -b 8000000 -g 40 -n | /usr/bin/ffmpeg -ac 1 -f alsa -ac 1 -i hw:1,0 -f h264 -i pipe:0 -c:v copy -c:a aac -ab 128k -g 40 -f flv -r 30 rtmp://a.rtmp.youtube.com/live2/$KEY
