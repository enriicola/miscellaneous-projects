#!/bin/zsh

print_and_execute() {
    echo ""
    echo "🔄 $@"
    "$@" 
}

print_and_execute brew update
print_and_execute brew outdated
print_and_execute brew upgrade --greedy
print_and_execute brew cleanup
print_and_execute mas upgrade

osascript -e 'tell application "Terminal" to quit'
