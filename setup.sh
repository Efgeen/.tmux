#!/bin/sh

echo -e "\033[0;32m[.nvim] : setup...\033[0m"

# ~/.tmux.conf
if [ -f ~/.tmux.conf ]; then
    echo -e "\033[0;31m[.nvim] : fail (-f ~/.tmux.conf)\033[0m"
    exit
fi

pacman -S --noconfirm --needed tmux
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf

echo -e "\033[0;32m[.nvim] : success\033[0m"
