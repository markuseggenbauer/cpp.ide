#!/bin/sh
if [ -d "/cache" ]; then
    echo "Mapping vscode-server cache"
    mkdir -p /cache/.vscode-server/extensions
    rm -fr $HOME/.vscode-server/extensions
    cd $HOME/.vscode-server && ln -s /cache/.vscode-server/extensions 
fi
