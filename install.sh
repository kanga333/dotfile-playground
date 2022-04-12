#!/bin/bash

echo "Hello install" > /workspaces/hello.txt

if command -v zsh &> /dev/null
then
    user=$(whoami)
    sudo chsh -s $(which zsh) $user
fi
