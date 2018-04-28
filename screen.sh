#!/bin/sh
# Source Me.
#
# AUTHOR: Malik BEN KIRANE <FREE.MALIKBENKIRANE@GMAIL.COM>
# Licence: MIT (Licence)
#
# Read README.md to understand better

screen() {
    local args="$@"
    if [ -z "$args" -o "$args" = "ls" ]; then
        command screen -ls
    elif [ -z "$2" ]; then
        echo Tried to rattach screen..
        if command screen -rd "$1"; then
            return
        else
            echo (fails) Invoked new screen
            command screen -S "$1"
        fi
    else
        command screen $@
    fi
}
