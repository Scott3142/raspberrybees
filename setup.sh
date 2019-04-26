#!/bin/bash

### Moves rc.local file to start python script on boot ###
sudo cp /etc/rc.local /etc/rc.local.streambak
sudo cp rc.local /etc/rc.local

### Moves stream files to home directory. ###
# If you change this, you will need to update the paths in rc.local and raspividstream.service #
sudo cp runstream.py runstream.sh ~/

### Moves system file to correct directory ###
sudo cp raspividstream.service /etc/systemd/system

