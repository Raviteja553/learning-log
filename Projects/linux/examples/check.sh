#!/usr/bin/env bash
# ==============================================================================
# Script Name: check.sh
# Description: Validates configuration inputs with strict error handling.
# ==============================================================================

# Enforce strict error handling
set -euo pipefail

echo "[INFO] Starting system configuration validation..."

# Exit Code Check 1: Did the user supply an argument?
if [ $# -eq 0 ]; then
    echo "[ERROR] No target file provided." >&2
    echo "Usage: $0 <path-to-file>" >&2
    exit 1  # Exit with status code 1 for missing arguments
fi

TARGET_FILE="$1"

# Exit Code Check 2: Does the file actually exist?
if [ ! -f "$TARGET_FILE" ]; then
    echo "[ERROR] Target file '$TARGET_FILE' does not exist or is inaccessible." >&2
    exit 2  # Exit with status code 2 for invalid file paths
fi

echo "[SUCCESS] Validation passed for target: $TARGET_FILE"
exit 0