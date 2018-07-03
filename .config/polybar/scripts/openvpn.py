#! /usr/bin/python

import os, re

# Variables
OPENVPN_DIR="/etc/openvpn/conf.d"
OPENVPN_EXT=".conf"
PID_DIR="/run/openvpn"
PID_FILE="openvpn.pid"
CMD_PATH="/proc/PID/cmdline"

# Main
def main():
    pid = getPid()

    if getPid() is not None:
        cmdline = getCmdline(pid)
        if cmdline is not None:
            return getConfigName(cmdline)
    return "down"

# Functions
def getLine(path):
    if os.path.isfile(path):
        file = open(path, "r")
        return file.readline().rstrip()

    return None

def getPid():
    return getLine(PID_DIR+"/"+PID_FILE)

def getCmdline(pid):
    return getLine(CMD_PATH.replace("PID", pid))

def getConfigName(cmdline):
    regex = re.compile("[A-Za-z-_ 0-9]*\.conf")
    result = regex.search(cmdline).group(0)
    return result[:-len(OPENVPN_EXT)]

print(main())
