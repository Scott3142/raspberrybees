Ensure Raspberry Pi camera and USB microphone are connected. 

Ensure the Pi is connected to WiFi and you have located your YouTube live-streaming key.

This script assumes a GPIO button is connected to Pin 2 (and GND). The Pin number is changeable in the runstream.py file.

*****

Open a terminal

Run `chmod +x setup.sh` to make executable

Run `nano raspividstream.service`

Edit the file to replace the ####-####-####-#### with your Youtube streaming key. 

Pres Ctrl+X then Y 

Run `./setup.sh`
