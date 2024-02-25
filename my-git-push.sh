#!/usr/bin/env bash

git pull

git add *

# echo 'Enter the commit message:'
# read commitMessage
# git commit -a "$commitMessage"

git commit -am "enrico's script push"

# echo 'Enter the name of the branch:'
# read branch

git push #origin $branch