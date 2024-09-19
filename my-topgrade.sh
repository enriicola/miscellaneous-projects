#!/bin/zsh

for i in {1..50}; do ping -c1 www.google.com &> /dev/null && break; done

topgrade -y --disable system

osascript -e 'tell application "Terminal" to quit'
