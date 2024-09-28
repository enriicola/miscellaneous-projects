#!/bin/zsh

#smartctl -a disk0 | grep "Data Units Written"

source=$HOME/Desktop/
destination="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
excluded_folders=( 'unige-git' 'miscellaneous*' )
exclude_opt=""
for folder in "${excluded_folders[@]}"; do
    exclude_opt+="--exclude $folder "
done
echo "\n🔄 RSyncing Desktop..."
rsync -avhq --delete "$source" "$destination" $exclude_opt

source=$HOME/Documents/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/
echo "\n🔄 Syncing Documents..."
rsync -avhq --delete "$source" "$destination"

source=$HOME/Music/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Music/
echo "\n🔄 RSyncing Music..."
rsync -avhq --delete "$source" "$destination" --exclude "Music"

source=$HOME/Downloads/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads/
echo "\n🔄 RSyncing Downloads..."
rsync -avhq --delete "$source" "$destination"

#$HOME/Desktop/AutoMac #$HOME/Desktop/calvino-git #$HOME/Desktop/iPhone-Shortcuts

ùgp "rsync" "$HOME/Desktop/miscellaneous-projects"
# echo $? > $HOME/Desktop/miscellaneous-projects/my-git-push-status.txt

ùgp "rsync" "$HOME/Desktop/unige-git"
# echo $? > $HOME/Desktop/unige-git/my-git-push-status.txt

echo "\n💨 Evicting files from iCloud Drive..."
brctl evict $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/
    # brctl download [FilePathHere]
    # brctl evict [FilePathHere]

# (find . -type f -exec brctl evict {} \;) | grep "Unable"


#print final execution time and date
echo "$(date)" > /Users/enrico/Library/Mobile\ Documents/com~apple~CloudDocs/last-sync.txt

# osascript -e 'tell application "Terminal" to quit'