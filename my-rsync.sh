#!/bin/zsh

smartctl -a disk0 | grep "Data Units Written"

h=$HOME
source=${h}/Desktop/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/

excluded_folders=( '*git' 'AutoMac' 'tinder*' 'miscellaneous*')
rsync -avh --exclude "${excluded_folders[0]}" --exclude "${excluded_folders[1]}" --exclude "${excluded_folders[2]}" --exclude "${excluded_folders[3]}" --delete --dry-run "$source" "$destination" | grep 'err'

source=${h}/Documents/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/
rsync -avh --delete --dry-run "$source" "$destination" | grep 'err'

cd $HOME/Desktop/AutoMac; echo "\nautomac"; +mgp
cd $HOME/Desktop/calvino-git; echo "\ncalvino"; +mgp
cd $HOME/Desktop/miscellaneous-projects; echo "\nmiscellaneous"; +mgp
cd $HOME/Desktop/tinder-swipe-bot; echo "\ntinder"; +mgp
cd $HOME/Desktop/unige-git; echo "\nunige"; +mgp


# cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/
# find . -type f -exec brctl evict {} \;


osascript -e 'tell application "Terminal" to quit'



# open -a OneDrive.app
# rsync -av $HOME/Desktop/* $HOME/Library/CloudStorage/OneDrive-unige.it
# rsync -av $HOME/Documents/* $HOME/Library/CloudStorage/OneDrive-unige.it/Documenti