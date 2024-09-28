#!/usr/bin/zsh

if [ $# -eq 2 ]
    then
        path=$2
    else
        path=$PWD
fi

echo "\n🕹️ nùgp $path ...\n"

echo Pulling...
git -C $path pull

echo 
echo Adding...
git -C $path add -A

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
# git -C $path branch $branch #origin $branch

echo
echo Pushing...
git -C $path push