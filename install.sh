#!/bin/bash

DOTFILES_DIR="$(pwd)"
FILES=(".bashrc" ".zshrc" ".vimrc" ".gitconfig" ".aliases" ".exports")

echo "Symlinking dotfiles..."

for file in "${FILES[@]}"; do
    ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
    echo "Linked $file"
done

echo "Done!"
