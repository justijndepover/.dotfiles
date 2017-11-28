#!/bin/bash

# https://github.com/justijndepover/.dotfiles/tree/master/zsh
#
# List of custom git scripts
#

g:push(){
	git add .
	git commit -m $1
	git push
}

g:fix(){
	git add .
	git commit -m '🐞 quick bugfix'
	git push
}

g:init(){
	git init
}
