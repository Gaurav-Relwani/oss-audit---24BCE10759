#!/bin/bash
# script3_auditor.sh - Disk and Permission Auditor
# Author: Gaurav Relwani (24BCE10759)
# Goal: Audit size and permissions of key system and VLC-related directories.

# Define the list of directories to audit
DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "$HOME/.config/vlc")

# Display a header for the report
echo "============================================================"
echo "          DIRECTORY SIZE AND PERMISSIONS AUDIT             "
echo "============================================================"
printf "%-25s | %-12s | %-20s\n" "Directory Path" "Size" "Owner/Permissions"
echo "------------------------------------------------------------"

# Loop through each directory in the list
for DIR in "${DIRECTORIES[@]}"; do
    # Check if the directory exists using an if-then structure
    if [ -d "$DIR" ]; then
        # Calculate the size of the directory in human-readable format
        # du -sh calculates size, awk extracts the first field (size)
        SIZE_VAL=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        
        # Get ownership and permissions using ls -ld
        # awk extracts the 1st (permissions) and 3rd (owner) fields
        PERMS=$(ls -ld "$DIR" | awk '{print $1 " (" $3 ")"}')
        
        # Print the audited information in a formatted way
        printf "%-25s | %-12s | %-20s\n" "$DIR" "$SIZE_VAL" "$PERMS"
    else
        # Handle the case where the directory does not exist
        printf "%-25s | %-12s | %-20s\n" "$DIR" "N/A" "Error: Not Found"
    fi
done

echo "============================================================"
# End of script
