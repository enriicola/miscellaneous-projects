#!/bin/zsh

smartctl -a disk0 | grep "Data Units Written"

h=$HOME
source=${h}/Desktop/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/Desktop/

excluded_folders=( 'unige-git' 'miscellaneous*' 'iPhone*')
rsync -avh --exclude "${excluded_folders[0]}" --exclude "${excluded_folders[1]}" --exclude "${excluded_folders[2]}" --delete "$source" "$destination" | grep 'err\|delete'

source=${h}/Documents/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/
rsync -avh --delete "$source" "$destination" | grep 'err\|delete'

source=${h}/Music/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/Music/
rsync -avh --delete --exclude Music "$source" "$destination" | grep 'err\|delete'

source=${h}/Downloads/
destination=${h}/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads/
rsync -avh --delete --exclude Music "$source" "$destination" | grep 'err\|delete'

# cd $HOME/Desktop/AutoMac; echo "\033[1m \n-> $PWD \033[0m"; +mgp
# cd $HOME/Desktop/calvino-git; echo "\033[1m \n-> $PWD \033[0m"; +mgp
cd $HOME/Desktop/iPhone-Shortcuts; echo "\033[1m \n-> $PWD \033[0m"; sh $HOME/Desktop/miscellaneous-projects/my-git-push.sh
cd $HOME/Desktop/miscellaneous-projects; echo "\033[1m \n-> $PWD \033[0m"; sh $HOME/Desktop/miscellaneous-projects/my-git-push.sh; echo $? > $HOME/Desktop/miscellaneous-projects/status.txt
# cd $HOME/Desktop/tinder-swipe-bot; echo "\033[1m \n-> $PWD \033[0m"; +mgp
cd $HOME/Desktop/unige-git; echo "\033[1m \n-> $PWD \033[0m"; sh $HOME/Desktop/miscellaneous-projects/my-git-push.sh


brctl evict $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/
    # brctl download [FilePathHere]
    # brctl evict [FilePathHere]

# (find . -type f -exec brctl evict {} \;) | grep "Unable"

# osascript -e 'tell application "Terminal" to quit'



# open -a OneDrive.app
# rsync -av $HOME/Desktop/* $HOME/Library/CloudStorage/OneDrive-unige.it
# rsync -av $HOME/Documents/* $HOME/Library/CloudStorage/OneDrive-unige.it/Documenti

#print final execution time and date
echo "$(date)" > /Users/enrico/Library/Mobile\ Documents/com~apple~CloudDocs/last-sync.txt
