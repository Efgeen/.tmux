#!/bin/sh

# assert
if [ -f ~/.tmux.conf ]; then
    echo "[.tmux] : fail (~/.tmux.conf)"
    exit 1
fi

# tmux
pacman -S --needed --noconfirm tmux

# ~/.tmux.conf
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf

echo "[.tmux] : success"

