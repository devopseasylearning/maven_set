#!/bin/bash

# Directory containing the test result files
REPORT_DIR="target/surefire-reports/"

# Check if the directory exists
if [[ ! -d "$REPORT_DIR" ]]; then
    echo "Test reports directory not found: $REPORT_DIR"
    exit 1
fi

# Find and parse all test result XML files
RESULTS=$(grep -hoP 'tests="(?<tests>\d+)" failures="(?<failures>\d+)" errors="(?<errors>\d+)" skipped="(?<skipped>\d+)"' "$REPORT_DIR"/*.xml)

# Initialize counters
TOTAL_TESTS=0
TOTAL_FAILURES=0
TOTAL_ERRORS=0
TOTAL_SKIPPED=0

# Aggregate results
while read -r line; do
    TESTS=$(echo "$line" | grep -oP 'tests="\K\d+')
    FAILURES=$(echo "$line" | grep -oP 'failures="\K\d+')
    ERRORS=$(echo "$line" | grep -oP 'errors="\K\d+')
    SKIPPED=$(echo "$line" | grep -oP 'skipped="\K\d+')

    TOTAL_TESTS=$((TOTAL_TESTS + TESTS))
    TOTAL_FAILURES=$((TOTAL_FAILURES + FAILURES))
    TOTAL_ERRORS=$((TOTAL_ERRORS + ERRORS))
    TOTAL_SKIPPED=$((TOTAL_SKIPPED + SKIPPED))
done <<< "$RESULTS"

# Output aggregated results
echo "JUnit Test Summary:"
echo "  Total Tests: $TOTAL_TESTS"
echo "  Failures: $TOTAL_FAILURES"
echo "  Errors: $TOTAL_ERRORS"
echo "  Skipped: $TOTAL_SKIPPED"

# Determine success or failure
if [[ $TOTAL_FAILURES -gt 0 || $TOTAL_ERRORS -gt 0 ]]; then
    echo "Some tests failed or encountered errors. Failing the build."
    exit 1
else
    echo "All tests passed successfully."
    exit 0
fi
