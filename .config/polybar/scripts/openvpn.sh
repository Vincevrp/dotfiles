#!/bin/bash
(pgrep -a openvpn$ || echo down) | awk -F '[. ]' '{print $(NF-1);exit}'
