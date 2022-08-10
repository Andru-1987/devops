#!/bin/bash
file_out="output"

if [[ -e "$file_out" ]]; then 
    echo "no need to download anything!"
else
    echo "start downloading!"
    curl -k https://es.wikipedia.org/wiki/DevOps -o "$file_out"
    echo "download complete"
fi

echo "Searching the word: $1 that you have entered "
echo "\n"
grep -i -n "$1" "$file_out"
