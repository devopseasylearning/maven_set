#!/bin/bash

# Path to the gl-sast-report.json file
FILE_PATH="gl-sast-report.json"

# Check if the file exists
if [[ ! -f "$FILE_PATH" ]]; then
    echo "File not found: $FILE_PATH"
    exit 1
fi

# Extract the number of vulnerabilities
VULNERABILITIES_COUNT=$(jq '.vulnerabilities | length' "$FILE_PATH")

# Check if vulnerabilities are present
if [[ "$VULNERABILITIES_COUNT" -eq 0 ]]; then
    echo "No vulnerabilities found in the report."
    exit 0
else
    echo "Total vulnerabilities found: $VULNERABILITIES_COUNT"
    echo
fi

# Print table header
printf "%-10s %-20s %-10s %-10s %-40s %-10s\n" "ID" "Name" "Severity" "Confidence" "File" "Line"
printf "%-10s %-20s %-10s %-10s %-40s %-10s\n" "----------" "--------------------" "----------" "----------" "----------------------------------------" "----------"

# Iterate over each vulnerability and print details
jq -c '.vulnerabilities[]' "$FILE_PATH" | while read -r vuln; do
    ID=$(echo "$vuln" | jq -r '.id // "N/A"')
    NAME=$(echo "$vuln" | jq -r '.name // "N/A"')
    SEVERITY=$(echo "$vuln" | jq -r '.severity // "N/A"')
    CONFIDENCE=$(echo "$vuln" | jq -r '.confidence // "N/A"')
    FILE=$(echo "$vuln" | jq -r '.location.file // "N/A"')
    LINE=$(echo "$vuln" | jq -r '.location.start_line // "N/A"')

    printf "%-10s %-20s %-10s %-10s %-40s %-10s\n" "$ID" "$NAME" "$SEVERITY" "$CONFIDENCE" "$FILE" "$LINE"
done

# Exit with a failure code if vulnerabilities are found
echo
echo "Vulnerabilities detected. Please address them before proceeding."
exit 1
