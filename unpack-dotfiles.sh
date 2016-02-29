#!/bin/bash

# Install SPF13
echo "[+] Installing SPF13"
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

echo "[+] Checking for .dotfiles directory"
if [ ! -d ~/.dotfiles ]
then
    echo "[+] No .dotfiles found! Please git clone first"
else
    cp ~/.dotfiles/.zshrc ~
    cp ~/.dotfiles/.vimrc.local ~
fi

# check for ZSH
echo ""
echo "Checking for ZSH"
which zsh

# check to see if which found zsh
if [ $? > 0 ]
then
    echo "ZSH not found!"
    echo "Please install ZSH first, and then run the following command:"
    echo "     sh -c \"$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\""
    exit 1
else
    echo "ZSH found!"
    echo "[+] Installing Oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo ""
echo "[+] Done!"

