#!#!/bin/zsh

brew update
brew upgrade
brew cleanup

osascript -e 'tell application "Terminal" to quit'
