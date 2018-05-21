#!/bin/sh
ARGV=$1
find . -iname "*$ARGV*" | grep $ARGV --color -i
