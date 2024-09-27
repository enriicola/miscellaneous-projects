#!/usr/bin/zsh

if [ $# -eq 2 ]
    then
        path=$2
    else
        path="$PWD"
fi

echo "🔄 Syncing $path...\n"

echo Pulling...
git -C $path pull

echo 
echo Adding...
git -C $path add *

if [ $# -eq 0 ]
    then
        msg="enrico's script push"
    else
        msg="$1"
fi

echo
echo "Committing with message: $msg"
git -C $path commit -am "$msg"

# echo 'Enter the name of the branch:'
# read branch

echo
echo Pushing...
git -C $path push #origin $branch
