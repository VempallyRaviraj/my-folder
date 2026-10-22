#!/bin/bash

#special variables ###

echo "All args passed to the script: $@"
echo "All args passed to the script: $#"
echo "first variable paased: $1"
echo "script name: $0"
echo "realpath : $(realpath $0)"
echo "who is running current script: $USER"