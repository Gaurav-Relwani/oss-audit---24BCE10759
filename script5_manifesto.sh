#!/bin/bash
# script5_manifesto.sh - Open Source Manifesto Generator
# Author: Gaurav Relwani (24BCE10759)
# Goal: Interactively generate a personalized open-source philosophy paragraph.

# Display a welcome message for the interactive generator
echo "============================================================"
echo "          OPEN SOURCE MANIFESTO GENERATOR                "
echo "============================================================"

# Use read -p to ask 3 interactive questions from the user
read -p "1. Name an open-source tool you use frequently (e.g., VLC): " TOOL_NAME
read -p "2. What does 'digital freedom' mean to you in one word? " FREEDOM_DEF
read -p "3. What would you build if you had all the tools? " BUILD_GOAL

# Capture current date and username for the final output
GEN_DATE=$(date "+%B %d, %Y")
CUR_USER=$USER

# Concatenate the user's answers into a personalized philosophy paragraph
MANIFESTO_TEXT="On $GEN_DATE, $CUR_USER declared that open-source tools like '$TOOL_NAME' are essential."
MANIFESTO_TEXT+=" To them, digital freedom is defined as '$FREEDOM_DEF'."
MANIFESTO_TEXT+=" With the power of open source, they aim to build '$BUILD_GOAL',"
MANIFESTO_TEXT+=" ensuring that technology remains accessible and transparent for everyone."

# Display the generated manifesto on the screen
echo "------------------------------------------------------------"
echo "GENERATED MANIFESTO:"
echo "$MANIFESTO_TEXT"
echo "------------------------------------------------------------"

# Define the output filename based on the current username
OUTPUT_FILE="manifesto_${CUR_USER}.txt"

# Save the manifesto to the text file using output redirection (>)
echo "$MANIFESTO_TEXT" > "$OUTPUT_FILE"

# Inform the user where the file was saved
echo "Success! Your manifesto has been saved to: $OUTPUT_FILE"
echo "============================================================"
# End of script
