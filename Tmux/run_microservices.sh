#!/bin/bash

# You can Run Microservices with split window

# Session Name
SESSION_NAME=Example_Session

## Directories
DIR_ONE="$HOME/your_folder"
DIR_TWO="$HOME/your_folder2"

# Window Names
WINDOW_ONE="Project-One"
WINDOW_TWO="Project-Two"

## Commands 
COMMAND="dev"

tmux new-session -d -s $SESSION_NAME 

## Project-One
tmux send-keys -t $SESSION_NAME $DIR_ONE Enter
tmux split-window -h -t $SESSION_NAME
tmux send "cd $DIR_ONE" Enter
tmux send $COMMAND ENTER;
tmux rename-window -t zsh $WINDOW_ONE

# Project Two
tmux new-window -c $DIR_TWO -n $WINDOW_TWO
tmux split-window -h -t $WINDOW_TWO
tmux send "cd $DIR_TWO" Enter
tmux send $COMMAND ENTER;

tmux -u attach -t $SESSION_NAME