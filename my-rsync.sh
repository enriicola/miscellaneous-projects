#!/bin/zsh

smartctl -a disk0 | grep "Data Units Written"

rsync -av --exclude='/Users/enrico/Desktop/AutoMac/automations' --delete --dry-run $HOME/Desktop/AutoMac $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/ | grep "automations"

# rsync -av --delete $HOME/Documents/ $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents
cd $HOME/Desktop/AutoMac; +mgp
cd $HOME/Desktop/calvino-git; +mgp
cd $HOME/Desktop/miscellaneous-projects; +mgp
cd $HOME/Desktop/tinder-swipe-bot; +mgp
cd $HOME/Desktop/unige-git; +mgp


# cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/
# find . -type f -exec brctl evict {} \;


osascript -e 'tell application "Terminal" to quit'



# open -a OneDrive.app
# rsync -av $HOME/Desktop/* $HOME/Library/CloudStorage/OneDrive-unige.it
# rsync -av $HOME/Documents/* $HOME/Library/CloudStorage/OneDrive-unige.it/Documenti