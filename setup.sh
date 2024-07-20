#!/bin/sh

f=false

while getopts ":f" opt; do
    case $opt in
	f)
	    f=true
	    ;;
    esac
done

if [ "$f" = false ]; then
    if [ -f ~/.tmux.conf ]; then
	read -p "~/.tmux.conf exists, force? (y/n/<C-c>) : " yn
	while true; do
	    case "$yn" in
	        [y])
		    break
		    ;;
	        [n])
            	    echo "[tmux] : fail (~/.tmux.conf)"
            	    exit 1
	            ;;
	        *)
		    read -p "invalid input, ~/.tmux.conf exists, force? (y/n/<C-c>) : " yn
		    ;;
	    esac
	done
    fi
fi

if ! pacman -S --needed --noconfirm tmux > /dev/null 2>&1; then
    echo "[tmux] : fail (pacman)"
    exit 2
fi

rm -f ~/.tmux.conf

if ! ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf; then
    echo "[tmux] : fail (ln)"
    exit 3
fi

echo "[tmux] : success"

