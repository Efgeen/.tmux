#!/bin/sh

if [ -f ~/.tmux.conf ]; then
    echo "[fail] : ~/.tmux.conf"
    exit 1
fi

pacman -S --needed --noconfirm tmux

ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf

echo "[success]"
