#!/bin/sh
if [ -d "/cache" ]; then
    echo "Mapping conan cache"
    mkdir -p /cache/.conan/data
    rm -fr $HOME/.conan/data
    cd $HOME/.conan && ln -s /cache/.conan/data 
fi