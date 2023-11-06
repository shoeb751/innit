#!/usr/bin/env bash

if [ x"$@" = x"yes" ]
then
    swaymsg -q kill
    exit 0
fi
if [ x"$@" = x"no" ]
then
    exit 0
fi
echo "yes"
echo "no"
