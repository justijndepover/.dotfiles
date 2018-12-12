#!/bin/bash

# https://github.com/justijndepover/.dotfiles/tree/master/zsh
#
# List of custom functions
#

source:refresh(){
	source ~/.zshrc
}

zsh:edit(){
	vim ~/.zshrc
}

weather(){
	curl -4 http://wttr.in/"$1"
}

day(){
	rm -rf ~/Pictures/wallpapers/current/night.jpg
	cp ~/Pictures/wallpapers/day.jpg ~/Pictures/wallpapers/current/day.jpg
	osascript -e "tell application \"System Events\" to tell appearance preferences to set dark mode to false"
}

night(){
	rm -rf ~/Pictures/wallpapers/current/day.jpg
	cp ~/Pictures/wallpapers/night.jpg ~/Pictures/wallpapers/current/night.jpg
	osascript -e "tell application \"System Events\" to tell appearance preferences to set dark mode to true"
}

ds:trash(){
	find . -name ".DS_Store" -print -delete
}

ds:find(){
	find . -name ".DS_Store" -print
}

dotfiles(){
	cd ~/dotfiles
}

# networking

ip::4(){
	host -t A $1
}

ip::6(){
	host -t AAAA $1
}

ip::wan(){
	curl ipecho.net/plain; echo
}

# fzf functions
tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
      tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
    fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

fd() {
  DIR=`find * -maxdepth 0 -type d -print 2> /dev/null | fzf-tmux` \
      && cd "$DIR"
}

function anybar { 
    echo -n $1 | nc -4u -w0 localhost ${2:-1738};
}
