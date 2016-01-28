#!/bin/bash

cd ~

if [ ! -d ~/.dotfiles ]
then
    echo "[+] Creating ~/.dotfiles/ directory"
    mkdir ~/.dotfiles
    cd ~/.dotfiles
else
    echo "[+] ~/.dotfiles/ directory found"
    cd ~/.dotfiles

fi

echo "[+] Copying vim and zsh files to ~/.dotfiles/"
cp -f ~/.vimrc.local ~/.dotfiles/.vimrc.local
cp -f ~/.zshrc ~/.dotfiles/.zshrc
cp -f ~/bin/pack-dotfiles.sh ~/.dotfiles/pack-dotfiles.sh
echo "[+] Done."

echo ""
echo "[+] Removing email from .vimrc.local"
sed -i ".rm" 's/.*let\ g:GPGDefaultRecipients.*/let\ g:GPGDefaultRecipients=\[\"\"\]/' ~/.dotfiles/.vimrc.local
printf "[+] GPGDefaultRecipient now set to: "
grep GPGDefaultRecipient ~/.dotfiles/.vimrc.local
rm ~/.dotfiles/.vimrc.local.rm

echo ""
echo "[+] All files copied"
echo "[+] Change to ~/.dotfiles/ directory"
echo "[+] Push to git to finish"
echo "        git status"
echo "        git add -A"
echo "        git commit -m \"<message>\""
echo "        git push origin master"
echo ""
echo "Operation complete. :)"
