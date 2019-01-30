#!/bin/bash

df -h | awk '/sda1/ {print $4}'
