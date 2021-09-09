#!/usr/bin/env bash
if [ ! x"$@" = x ]
then
    wid=${1:0:1}
    ratpoison -c "select ${wid}"
    exit 0
fi
ratpoison -c windows
