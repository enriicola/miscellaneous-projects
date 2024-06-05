#!#!/bin/zsh

brew update
brew upgrade
brew cleanup

mas upgrade

osascript -e 'tell application "Terminal" to quit'
