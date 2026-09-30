#!/bin/bash
# Simple network connectivity check
TARGET="8.8.8.8"
echo "Testing connectivity to $TARGET..."
ping -c 4 $TARGET