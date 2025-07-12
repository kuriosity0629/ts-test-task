#!/bin/bash

echo "Hello from Bash!"
date "+%Y-%m-%d %H:%M:%S"
NUMB_FILES=$(find . -maxdepth 1 -type f 2>/dev/null | wc -l | tr -d '[:space:]')

if [ "$NUMB_FILES" -gt 0 ]; then
    echo "Number of files in the current directory: $NUMB_FILES"
else
    echo "There are no files in the current directory"
fi
exit 0