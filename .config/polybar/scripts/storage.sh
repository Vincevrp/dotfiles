#!/bin/sh

df -h | awk '/cryptroot/ {print $4}'
