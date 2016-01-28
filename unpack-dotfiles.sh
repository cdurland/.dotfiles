#!/bin/bash


# Install SPF13
echo "[+] Installing SPF13"
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

echo ""
echo "[+] Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "[+] Checking for .dotfiles directory"
if [ ! -d ~/.dotfiles ]
then
    echo "[+] No .dotfiles found! Please git clone first"
else
    cp ~/.dotfiles/.zshrc ~
    cp ~/.dotfiles/.vimrc.local ~
fi

echo ""
echo "[+] Done!"

