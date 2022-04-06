#!/bin/sh
if [ -d "/cache" ]; then
    echo "Mapping ccache"
    mkdir -p /cache/.ccache
    rm -fr $HOME/.ccache
    cd $HOME && ln -s /cache/.ccache
fi
