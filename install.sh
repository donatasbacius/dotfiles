#!/bin/bash

echo "homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "zsh..."
brew install zsh zsh-completions

echo "oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "neovim..."
brew install neovim

echo "tig..."
brew install tig

echo "nvm..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "node..."
nvm install --lts
nvm alias default node

echo "configs..."
cp -rv nvim ~/.config

echo "adjust keyboard repeat speed..."
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
