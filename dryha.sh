#!/bin/bash

if [ "$(id -u)" != "0" ]; then
  echo "Error: This script must be run as root."
  exit 1
fi

awk -F: '$NF=="/bin/bash" {print "User:", $1}' /etc/passwd