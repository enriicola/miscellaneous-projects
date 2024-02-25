#!/usr/bin/zsh

git pull

git add *

# echo 'Enter the commit message:'
# read commitMessage
# git commit -a "$commitMessage"

if [ $# -eq 0 ]
    then
        msg="enrico's script push"
    else
        msg=$1
fi

git commit -am "$msg"

# echo 'Enter the name of the branch:'
# read branch

git push #origin $branch
