#!/bin/zsh

#smartctl -a disk0 | grep "Data Units Written"

# Initialize a command to be executed later
command="rsync -avh --exclude "${excluded_folders[0]}" --exclude "${excluded_folders[1]}" --exclude "${excluded_folders[2]}" --delete --timeout 1000 "$source" "$destination" | grep 'err\|delete'"

source=$HOME/Desktop/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Desktop/
excluded_folders=( 'unige-git' 'miscellaneous*' )
echo "🔄 Syncing Desktop..."
$command

source=$HOME/Documents/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/
excluded_folders=('')
echo "🔄 Syncing Documents..."
$command

source=$HOME/Music/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Music/
excluded_folders=('Music')
echo "🔄 Syncing Music..."
$command

source=$HOME/Downloads/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads/
excluded_folders=('')
echo "🔄 Syncing Downloads..."
$command

# cd $HOME/Desktop/AutoMac; echo "\033[1m \n-> $PWD \033[0m"; +mgp
# cd $HOME/Desktop/calvino-git; echo "\033[1m \n-> $PWD \033[0m"; +mgp
# cd $HOME/Desktop/iPhone-Shortcuts; echo "\033[1m \n-> $PWD \033[0m"; sh $HOME/Desktop/miscellaneous-projects/my-git-push.sh

ùgp "rsync" "$HOME/Desktop/miscellaneous-projects"



cd $HOME/Desktop/miscellaneous-projects; echo "\033[1m \n-> $PWD \033[0m"; sh $HOME/Desktop/miscellaneous-projects/my-git-push.sh #; echo $? > $HOME/Desktop/miscellaneous-projects/status.txt
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
