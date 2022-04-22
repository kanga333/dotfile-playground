#!/bin/bash

if command -v zsh &> /dev/null
then
    user=$(whoami)
    sudo chsh -s $(which zsh) $user
fi

mkdir -p ~/.vscode-remote/data/Machine/
mv settings.json ~/.vscode-remote/data/Machine/

mv .zshrc ~/

mkdir ~/bin
mv open ~/bin/open
chmod 755 ~/bin/open

# Add ~/bin to $PATH and enable it
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
