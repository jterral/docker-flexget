#!/bin/sh
# Flexget startup script

if [ -f ~/.flexget/.config-lock ]; then
    rm ~/.flexget/.config-lock
fi

flexget daemon start
