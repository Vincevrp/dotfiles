#!/bin/sh

df -h | awk '/sde2/ {print $4}'
