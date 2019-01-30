#!/bin/sh

df -h | awk '/root/ {print $4}'
