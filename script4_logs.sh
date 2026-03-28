#!/bin/bash
# script4_logs.sh - Log File Analyzer
# Author: Gaurav Relwani (24BCE10759)
# Goal: Analyze a system log file for a specific keyword.

# Read the log file path from the first command-line argument ($1)
LOG_FILE=$1
# Set the default keyword to "error" if the second argument ($2) is missing
KEYWORD=${2:-"error"}

# Check if the log file path was provided
if [ -z "$LOG_FILE" ]; then
    echo "ERROR: Please provide a log file path as the first argument."
    echo "Usage: $0 [log_file] [keyword]"
    exit 1
fi

# Check if the specified log file actually exists
if [ ! -f "$LOG_FILE" ]; then
    echo "ERROR: File '$LOG_FILE' does not exist."
    exit 1
fi

# Initialize a counter variable for occurrences
MATCH_COUNT=0

# Use a while read loop to examine each line of the log file
while IFS= read -r LINE; do
    # Check if the current line contains the specified keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the match count if the keyword is found
        ((MATCH_COUNT++))
    fi
done < "$LOG_FILE"

# Provide a summary report for the log audit
echo "------------------------------------------------------------"
echo "LOG AUDIT REPORT for: $LOG_FILE"
echo "Keyword Searched    : $KEYWORD"
echo "Total Occurrences   : $MATCH_COUNT"
echo "------------------------------------------------------------"

# Add a section to show the last 5 matching lines
echo "LATEST MATCHES (Last 5):"
# Combine grep (to find matches) and tail (to pick the last 5)
grep -i "$KEYWORD" "$LOG_FILE" | tail -n 5

echo "------------------------------------------------------------"
# End of script
