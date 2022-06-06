#!/bin/sh
if [ -d "/cache" ]; then
    echo "Mapping zsh-history cache"
    mkdir -p /cache/zsh_history && touch /cache/zsh_history/.zsh_history
    rm -fr $HOME/.zsh_history
    cd $HOME && ln -s /cache/zsh_history/.zsh_history
fi