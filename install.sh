#!/bin/bash

rm ~/.zshrc
ln -s ~/Documents/Dev/ZSH/russ.zsh-theme ~/.oh-my-zsh/themes/russ.zsh-theme
ln -s ~/Documents/Dev/ZSH/.zshrc ~/.zshrc

echo "set the theme in preferences in the lower right to load from a folder"
