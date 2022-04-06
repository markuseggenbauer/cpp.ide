#!/bin/sh
if [ -d "$HOME/scripts/startup" ]; then
    find $HOME/scripts/startup -type f -name "*.sh" | sort | xargs -n1 sh -c
fi
while sleep 1000; do :; done