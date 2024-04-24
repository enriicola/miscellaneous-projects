#!/usr/bin/zsh

git pull

git add .

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