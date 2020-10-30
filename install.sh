#!/bin/bash
#
# Assuming the script is running on Fedora, install packages and builddep
#
# Expected arguments:
#
# $1: list of packages
# $2: list of packages whose builddeps are to be installed

# Update packages
dnf -y update

# Install packages, if any
if [ -n "$1" ]; then
  dnf -y install "$1"
fi

# Install builddeps, if any
if [ -n "$2" ]; then
  for package in "$2"; do
      dnf -y builddep $package
  done
fi

