#!/bin/bash

# Script is meant to reverse anything that was done in the linux.sh script.

# removes the .vimrc file in the home directory.
if [ -f ~/.vimrc ]; then
  rm ~/.vimrc
  echo "Removed .vimrc file" >> cleanup.log
fi

#Removes the line "" in the .bashrc file in the home directory.
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc
echo "Removed 'source ~/.dotfiles/etc/bashrc_custom' from .bashrc" >> cleanup.log

# Removes the .TRASH directory in the home directory.
if [ -d ~/".TRASH" ]; then
  rm -r ~/".TRASH"
  echo "Removed .TRASH directory" >> cleanup.log
fi
