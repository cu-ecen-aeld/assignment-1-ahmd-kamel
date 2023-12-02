#!/bin/bash

filesdir=$1
searchstr=$2

# Check if the correct arguments is provided
if [ -z "$filesdir" ]; then
    echo "Please put directory name."
    exit 1
elif [ -z "$searchstr" ]; then
    echo "Please put string you looking at."
    exit 1
fi

# Validate the directory that exist, count words and files
if [ -d "$filesdir" ]; then
    files_count=$(find $filesdir -type f | wc -l)
    words_count=$(grep -r $searchstr $filesdir | wc -l)
    echo "The number of files are $files_count and the number of matching lines are $words_count."
    exit 0
else
    echo "$filesdir does not represent a directory in filesystem."
    exit 1
fi

