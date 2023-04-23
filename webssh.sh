#!/bin/sh
# native run ubuntu 22.04
echo "run webssh"

export ACCOUNT="admin:badmin"
export LISTEN="8443 ssl"

/root/web-openssh/wsh-run 

# webbrowser 
# https://192.168.0.15:8443/static/term.html
