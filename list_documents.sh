#!/bin/bash

# Check if the argument is a directory
if [ -d "$1" ]; then
    # List all files and directories directly under the specified directory, excluding the directory itself
    find "$1" -maxdepth 1 -mindepth 1 \( -type f -o -type d \) -exec basename {} \; | xclip -selection clipboard
else
    echo "The argument is not a directory."
fi
