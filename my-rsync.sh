#!/bin/zsh

smartctl -a disk0 | grep "Data Units Written"

h=$HOME
source=${h}/Desktop/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/Desktop/

excluded_folders=( '*git' 'AutoMac' 'tinder*' 'miscellaneous*')
rsync -avh --exclude "${excluded_folders[0]}" --exclude "${excluded_folders[1]}" --exclude "${excluded_folders[2]}" --exclude "${excluded_folders[3]}" --delete "$source" "$destination" | grep 'err\|delete'

source=${h}/Documents/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/
rsync -avh --delete "$source" "$destination" | grep 'err\|delete'

cd $HOME/Desktop/AutoMac; echo "\033[1m \n-> $PWD \033[0m"; +mgp
cd $HOME/Desktop/calvino-git; echo "\033[1m \n-> $PWD \033[0m"; +mgp
cd $HOME/Desktop/miscellaneous-projects; echo "\033[1m \n-> $PWD \033[0m"; +mgp
cd $HOME/Desktop/tinder-swipe-bot; echo "\033[1m \n-> $PWD \033[0m"; +mgp
cd $HOME/Desktop/unige-git; echo "\033[1m \n-> $PWD \033[0m"; +mgp


# cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/
# find . -type f -exec brctl evict {} \;


osascript -e 'tell application "Terminal" to quit'



# open -a OneDrive.app
# rsync -av $HOME/Desktop/* $HOME/Library/CloudStorage/OneDrive-unige.it
# rsync -av $HOME/Documents/* $HOME/Library/CloudStorage/OneDrive-unige.it/Documenti