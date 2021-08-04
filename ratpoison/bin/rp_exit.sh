#!/usr/bin/env bash

if [ x"$@" = x"yes" ]
then
    ratpoison -c 'delete'
    exit 0
fi
if [ x"$@" = x"no" ]
then
    ratpoison -c 'echo Exit Cancelled'
    exit 0
fi
echo "yes"
echo "no"
