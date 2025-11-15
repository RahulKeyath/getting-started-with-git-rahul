#!/usr/bin/env bash
# simple-interest.sh
# A script to calculate Simple Interest

# Usage:
# ./simple-interest.sh PRINCIPAL RATE TIME
# Example:
# ./simple-interest.sh 1000 5 2

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 PRINCIPAL RATE TIME"
  exit 1
fi

P=$1
R=$2
T=$3

# Calculate simple interest: SI = (P * R * T) / 100
SI=$(awk "BEGIN { printf \"%.2f\", ($P * $R * $T) / 100 }")
TOTAL=$(awk "BEGIN { printf \"%.2f\", $P + $SI }")

echo "Principal: $P"
echo "Rate: $R%"
echo "Time: $T years"
echo "Simple Interest: $SI"
echo "Total Amount: $TOTAL"
