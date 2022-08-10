#!/bin/bash

echo "re arrange of folder"
file1="foo/dummy/file1.txt"
file2="foo/dummy/file2.txt"
destiny="foo/empty/file2.txt"

sed -n 1p  "$file1" > "$file2"

mv "$file2" "$destiny"

find .