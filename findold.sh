#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-.}"
DAYS="${2:-30}"

if [[ ! -d "$TARGET" ]]; then
    echo "Error: '$TARGET' is not a directory." >&2
    exit 1
fi

if ! [[ "$DAYS" =~ ^[0-9]+$ ]]; then
    echo "Error: days must be a positive integer, got '$DAYS'." >&2
    exit 1
fi

echo "Files not modified in the last $DAYS days: $TARGET"
echo "----------------------------------------------------"

RESULTS=$(find "$TARGET" -maxdepth 3 -type f -mtime +"$DAYS" \
    -printf "%TY-%Tm-%Td  %-8s  %p\n" 2>/dev/null \
    | sort)

if [[ -z "$RESULTS" ]]; then
    echo "No files found older than $DAYS days."
    exit 0
fi

echo "$RESULTS"
echo ""
echo "Total: $(echo "$RESULTS" | wc -l) file(s)"
