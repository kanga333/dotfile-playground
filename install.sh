#!/bin/bash

mkdir -p ~/.vscode-remote/data/Machine/
mv settings.json ~/.vscode-remote/data/Machine/

mv .zshrc ~/

mkdir ~/bin
curl -L -o ~/bin/open https://raw.githubusercontent.com/superbrothers/opener/master/bin/open
chmod 755 ~/bin/open
# xdg-open command
curl -L -o ~/bin/xdg-open https://raw.githubusercontent.com/superbrothers/opener/master/bin/xdg-open
chmod 755 ~/bin/xdg-open
# Add ~/bin to $PATH and enable it
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
