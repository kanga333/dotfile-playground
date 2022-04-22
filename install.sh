#!/bin/bash

if command -v zsh &> /dev/null
then
    user=$(whoami)
    sudo chsh -s $(which zsh) $user
fi

mkdir -p $HOME/.vscode-remote/data/Machine/
mv settings.json $HOME/.vscode-remote/data/Machine/

mv .zshrc $HOME/
