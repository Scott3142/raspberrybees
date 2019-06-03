#!/bin/bash

cd /home/pi/software/edublocks/server/
tmux new-session -d "yarn run watch"
