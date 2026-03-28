#!/bin/bash
# script2_inspector.sh - FOSS Package Inspector
# Author: Gaurav Relwani (24BCE10759)
# Goal: Check if VLC is installed and provide short philosophy notes for common FOSS packages.

# Define the package to check
APP="vlc"

# Check if VLC is installed using dpkg (Debian/Ubuntu) or rpm (RHEL/CentOS)
if command -v dpkg >/dev/null 2>&1; then
    # if dpkg exists, use it to check for the vlc package and extract version info
    VERSION_INFO=$(dpkg -l | grep -i "$APP" | awk '{print $3}' | head -n 1)
elif command -v rpm >/dev/null 2>&1; then
    # if rpm exists, use it to check for the vlc package and extract version info
    VERSION_INFO=$(rpm -qi "$APP" 2>/dev/null | grep -i "Version" | awk '{print $3}')
fi

# Determine if the package was found and display the result
if [ -z "$VERSION_INFO" ]; then
    echo "ALERT: $APP Media Player is NOT installed on this system."
else
    echo "SUCCESS: $APP Media Player (Version: $VERSION_INFO) is correctly installed."
fi

echo "------------------------------------------------------------"
echo "OPEN-SOURCE PHILOSOPHY NOTES:"
echo "------------------------------------------------------------"

# Case statement to print short philosophy notes for 4 different packages
for PKG in "vlc" "httpd" "mysql" "firefox"; do
    case $PKG in
        vlc)
            echo "VLC: A free and open-source cross-platform multimedia player that plays almost everything."
            ;;
        httpd)
            echo "HTTPD (Apache): The backbone of the web, proving that community-driven servers can power the world."
            ;;
        mysql)
            echo "MySQL: The world's most popular open-source database, enabling reliable data management for all."
            ;;
        firefox)
            echo "Firefox: A browser that puts users first, fighting for privacy and an open, accessible internet."
            ;;
        *)
            echo "$PKG: An essential component of the global open-source ecosystem."
            ;;
    esac
done

echo "------------------------------------------------------------"
# End of script
