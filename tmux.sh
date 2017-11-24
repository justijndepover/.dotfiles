#!/bin/sh
tmux new-session
tmux split-window -h
tmux new-window 'mpsyt'
tmux split-window -h
tmux split-window -v 'clock'
tmux -2 attach-session -d
