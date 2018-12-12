#!/bin/bash

# https://github.com/justijndepover/.dotfiles/tree/master/zsh
#
# List of custom git scripts
#

g:push(){
    changed=0
    git remote update && git status -uno | grep -q 'Your branch is behind' && changed=1
    if [ $changed = 1 ]; then
        echo "Your branch is behind on remote";
    else
        git add .
        git commit -m $1
        git push
    fi
}

g:fix(){
    git add .
    git commit -m '🐞 quick bugfix'
    git push
}

g:init(){
    git init
}
