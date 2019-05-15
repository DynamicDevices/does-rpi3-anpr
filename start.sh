##!/bin/sh

# Set paths
export LD_LIBRARY_PATH=/usr/local/lib/mjpg-streamer

# Run mjpg-streamer from the PiCam
mjpg_streamer -o "output_http.so -w /www" -i "input_raspicam.so -vf -hf -fps 5" &>/dev/null &

# Run ALPRD
alprd

# Show log
tail -f /var/log/alprd.log

