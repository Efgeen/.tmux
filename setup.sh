#!/bin/sh

pacman -S --needed --noconfirm tmux
rm -f ~/.tmux.conf
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
