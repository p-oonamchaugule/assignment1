#!/bin/bash

# Check for exactly two arguments
if [ $# -ne 2 ]; then
    echo "Error: Missing parameters. Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")" || {
    echo "Error: Failed to create directory path for $writefile"
    exit 1
}

# Write the string to the file
echo "$writestr" > "$writefile" || {
    echo "Error: Failed to write to file $writefile"
    exit 1
}

