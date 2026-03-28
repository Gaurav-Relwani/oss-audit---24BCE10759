#!/bin/bash
# script1_identity.sh - System Identity Report
# Author: Gaurav Relwani (24BCE10759)
# Goal: Display Linux system details and a message about open-source licensing.

# Clear the screen for a clean presentation
clear

# Define variables for system information
DISTRO=$(lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1) # Get Linux distribution name
KERNEL=$(uname -r) # Get the current kernel version
CURRENT_USER=$USER # Store the currently logged-in username
HOME_DIR=$HOME # Store the user's home directory path
UPTIME_VAL=$(uptime -p) # Get system uptime in a human-readable format
NOW=$(date "+%Y-%m-%d %H:%M:%S") # Get current date and time in a specific format

# Display the welcome screen with a header
echo "============================================================"
echo "          SYSTEM IDENTITY AUDIT REPORT - VLC PROJECT          "
echo "============================================================"
echo "Report Generated On: $NOW"
echo "------------------------------------------------------------"

# Print system identity details using the variables defined above
echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"
echo "Current User       : $CURRENT_USER"
echo "Home Directory     : $HOME_DIR"
echo "System Uptime      : $UPTIME_VAL"

echo "------------------------------------------------------------"
# Hardcoded message about the OS's open-source license as per requirements
echo "LICENSE NOTE:"
echo "This system operates under an Open Source license (e.g., GPL, MIT, Apache)."
echo "This ensures transparency, freedom to modify, and community-driven progress,"
echo "aligning perfectly with the philosophy of VLC Media Player."
echo "============================================================"

# End of script
