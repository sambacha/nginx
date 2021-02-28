#!/bin/sh
# configure system
sysctl net.inet.tcp.always_keepalive
sudo sysctl -w net.inet.tcp.always_keepalive=1
