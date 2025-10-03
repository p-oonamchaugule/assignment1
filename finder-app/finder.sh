#!/bin/bash

# Check for exactly two arguments
if [ $# -ne 2 ]; then
    echo "Error: Missing parameters. Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if filesdir is a valid directory
if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a valid directory."
    exit 1
fi

# Count number of files (recursively)
filecount=$(find "$filesdir" -type f | wc -l)

# Count number of matching lines
matchcount=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Output result
echo "The number of files are $filecount and the number of matching lines are $matchcount"

