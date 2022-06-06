#!/bin/sh
if [ -d "/cache" ]; then
    echo "Mapping vscode-server cache"
    mkdir -p /cache/.vscode-server/extensions
    if [ ! -L "$HOME/.vscode-server/extensions" ]; then
        rm -fr $HOME/.vscode-server/extensions
        mkdir -p  $HOME/.vscode-server && cd $HOME/.vscode-server && ln -s /cache/.vscode-server/extensions 
    fi
fi