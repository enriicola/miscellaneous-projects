#!/usr/bin/zsh

# if [ $# -eq 2 ]
#     then
#         path=$2
#     else
#         path=$PWD
# fi

# echo "\n🕹️ ùgp $path ...\n"

echo Pulling...
git pull

echo 
echo Adding...
git add -A

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
# git -C $path branch $branch #origin $branch

echo
echo Pushing...
git push