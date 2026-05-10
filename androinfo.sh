#!/bin/sh

# androinfo - Android system information tool
# Copyright (c) 2026 bangkkuser
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# http://www.gnu.org/licenses/gpl-3.0.html

echo "-------------"
echo "  androinfo  "
echo "-------------"

echo "Open Source device info shell script"
echo "GitHub:https://github.com/rebangkkuser/androinfo"

echo " "
echo " "

KERNEL=$(uname -r)
ARCH=$(uname -m)
SDK=$(getprop ro.build.version.sdk)
DEVICE=$(getprop ro.product.device)
FINGERPRINT=$(getprop ro.build.fingerprint)
BRAND=$(getprop ro.product.manufacturer)
VERSION="1.0 (versionCode 100)"
SHELL="/system/bin/sh"
ASCIIDIR=.androinfo
ASCII=.androinfo/ascii.txt

mkdir -p "$ASCIIDIR" 1>/dev/null
touch "$ASCII" 1>/dev/null

cat "$ASCII"

echo "Device:$DEVICE"
echo "SDK:$SDK"
echo "androinfo version:$VERSION"
echo "Device brand:$BRAND"
echo "Device kernel:$KERNEL"
echo "Device architecture:$ARCH"
echo "Running shell:$SHELL"
echo "Device fingerprint:$FINGERPRINT"

exit 0
