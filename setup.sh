#!/bin/sh

pacman -S --noconfirm tmux
rm -f ~/.tmux.conf
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
