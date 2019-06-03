#!/bin/bash

### Must be sudo to run this file ###
if [ "$(id -u)" -ne 0 ]; then
    echo 'This script must be run by root. Exiting.' >&2
    exit 1
fi

### Installs required packages ###
sudo apt -y install tmux

### Sets up Edublocks script and moves to Desktop ###
cp bees.sh /home/pi/
cp Edublocks.desktop /home/pi/Desktop/

### Moves rc.local file to start python script on boot ###
sudo cp /etc/rc.local /etc/rc.local.streambak
sudo cp rc.local /etc/rc.local

### Moves stream files to home directory. ###
# If you change this, you will need to update the paths in rc.local and raspividstream.service #
cp runstream.py runstream.sh /home/pi/

### Moves system file to correct directory ###
sudo cp raspividstream.service /etc/systemd/system

