#!/bin/sh
df -h 2>/dev/null | awk '/cryptroot/ {print $4}'
