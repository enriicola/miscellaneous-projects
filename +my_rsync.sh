#!/bin/zsh

# sudo rsync -av $HOME/Desktop/dc $HOME/Library/Mobile\ Documents/com~apple~CloudDocs
# find . -type f -exec brctl evict {} \;
# https://apple.stackexchange.com/questions/429373/how-do-i-remove-icloud-downloads-on-mac-including-all-subfolders-and-files

open -a OneDrive.app

smartctl -a disk0 | grep "Data Units Written"

rsync -av $HOME/Desktop/* $HOME/Library/CloudStorage/OneDrive-unige.it
rsync -av $HOME/Documents/* $HOME/Library/CloudStorage/OneDrive-unige.it/Documenti

# https://apple.stackexchange.com/questions/328329/is-there-a-way-via-the-command-line-to-cause-icloud-files-to-download
