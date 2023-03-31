#!/bin/bash
# Checks is the OP is only Linux
if [ $(uname) != "Linux" ]; then
  echo "Error: This script is for Linux only" >> linuxsetup.log
  exit 1
fi

# Creates .TRASH direcectory if it doesnt exist
if [ ! -d ~/".TRASH" ]; then
  mkdir ~/.TRASH
  echo "Created .TRASH directory" >> linuxsetup.log
fi

# Rename the existing .vimrc file to .bup vimrc only if it exits.
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.bup\ vimrc
  echo "Renamed existing .vimrc file to .bup vimrc" >> linuxsetup.log
fi

# Overwrite the contents of the etc/vimrc.
cp ~/.dotfiles/etc/vimrc ~/.vimrc
echo "Copied .dotfiles/etc/vimrc to ~/.vimrc" >> linuxsetup.log

# Add the statement 'source ~/.dotfiles/etc/bashrc_custom' at the end.
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
