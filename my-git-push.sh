#!/usr/bin/zsh

echo Pulling...
git pull

echo 
echo Adding...
git add *

if [ $# -eq 0 ]
    then
        msg="enrico's script push"
    else
        msg="$@"
fi

echo
echo "Committing with message: $msg"
git commit -am "$msg"

# echo 'Enter the name of the branch:'
# read branch

echo
echo Pushing...
git push #origin $branch
