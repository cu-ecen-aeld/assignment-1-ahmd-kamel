#!/bin/bash

writefile=$1
writestr=$2

# Check if the correct arguments is provided
if [ -z "$writefile" ]; then
    echo "Please put path to directory filename name."
    exit 1
elif [ -z "$writestr" ]; then
    echo "Please put string you want to write."
    exit 1
fi

# Extract the directory path using dirname
dir=$(dirname "$writefile")
if [ ! -d "$dir" ];  then
    mkdir -p "$dir"
fi

echo "$writestr" > "$writefile"
