#!/bin/zsh

if [ -e *.sublime-project ]; then
    subl -n *.sublime-project
else
    subl -n .
fi
