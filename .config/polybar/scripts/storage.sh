#!/bin/sh
df -h | awk '/nvme0n1p2/ {print $4}'
