#!/bin/zsh

#smartctl -a disk0 | grep "Data Units Written"

source=$HOME/Desktop/
destination="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
command="rsync -avhq --timeout 1000 --delete "$source" "$destination""
echo "🔄 Syncing Desktop..."
$command --exclude unige-git --exclude miscellaneous-projects #| grep unige-git | grep miscellaneous-projects

source=$HOME/Documents/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/
echo "🔄 Syncing Documents..."
$command

source=$HOME/Music/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Music/
echo "🔄 Syncing Music..."
$command --exclude "Music"

source=$HOME/Downloads/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads/
echo "🔄 Syncing Downloads..."
$command

#$HOME/Desktop/AutoMac #$HOME/Desktop/calvino-git #$HOME/Desktop/iPhone-Shortcuts

ùgp "rsync" "$HOME/Desktop/miscellaneous-projects"
echo $? > $HOME/Desktop/miscellaneous-projects/my-git-push-status.txt

ùgp "rsync" "$HOME/Desktop/unige-git"
echo $? > $HOME/Desktop/unige-git/my-git-push-status.txt

brctl evict $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/
    # brctl download [FilePathHere]
    # brctl evict [FilePathHere]

# (find . -type f -exec brctl evict {} \;) | grep "Unable"


#print final execution time and date
echo "$(date)" > /Users/enrico/Library/Mobile\ Documents/com~apple~CloudDocs/last-sync.txt

# osascript -e 'tell application "Terminal" to quit'