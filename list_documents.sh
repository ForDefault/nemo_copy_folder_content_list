#!/bin/bash

# Check if the argument is a directory
if [ -d "$1" ]; then
    # List all files and directories directly under the specified directory, excluding the '.' entry
    # The output is then piped to xclip to copy to the clipboard
    find "$1" -maxdepth 1 \( -type f -o -type d \) -not -name '.' -exec basename {} \; | xclip -selection clipboard
else
    echo "The argument is not a directory."
fi
