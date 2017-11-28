#!/bin/bash

# https://github.com/justijndepover/.dotfiles/tree/master/zsh
#
# List of custom git scripts
#

gpush(){
	git add .
	git commit -m $1
	git push -u origin master
}

gfix(){
	git add .
	git commit -m '🐞 quick bugfix'
	git push
}

g:init(){
	git init
}
