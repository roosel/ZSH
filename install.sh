#!/bin/bash
git checkout linux
rm ~/.zshrc
ln -s ~/Config/ZSH/puddletown.zsh-theme ~/.oh-my-zsh/themes/puddletown.zsh-theme
ln -s ~/Config/ZSH/.zshrc ~/.zshrc
