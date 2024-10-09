#!/bin/zsh

#smartctl -a disk0 | grep "Data Units Written"

source=$HOME/Desktop/
destination=$HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Desktop/
excluded_folders=( 'unige-git' 'miscellaneous*' )
echo "\n🔄 RSyncing Desktop..."
rsync -avhq --exclude "${excluded_folders[0]}" --exclude "${excluded_folders[1]}" --delete "$source" "$destination"

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

echo "\n💨 Evicting files from iCloud Drive..."
brctl evict $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/*
    # brctl download [FilePathHere]

# (find . -type f -exec brctl evict {} \;) | grep "Unable"



#$HOME/Desktop/AutoMac #$HOME/Desktop/calvino-git #$HOME/Desktop/iPhone-Shortcuts

git -C ~/Desktop/miscellaneous-projects pull -q
git -C ~/Desktop/miscellaneous-projects add -Aq
git -C ~/Desktop/miscellaneous-projects commit -am "rsync" -q
git -C ~/Desktop/miscellaneous-projects push -q

git -C ~/Desktop/unige-git pull -q
git -C ~/Desktop/unige-git add -Aq
git -C ~/Desktop/unige-git commit -am "rsync" -q
git -C ~/Desktop/unige-git push -q


#print final execution time and date
echo "$(date)" > ~/Library/Mobile\ Documents/com~apple~CloudDocs/last-sync.txt
cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/last-sync.txt ~/last-sync.txt

# osascript -e 'tell application "Terminal" to quit'
