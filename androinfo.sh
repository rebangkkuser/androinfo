#!/system/bin/sh

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
FIRSTSDK=$(getprop ro.product.first_api_level)
DEVICE=$(getprop ro.product.device)
FINGERPRINT=$(getprop ro.build.fingerprint)
BRAND=$(getprop ro.product.manufacturer)
VERSION="0.1.0 (versionCode 010)"
SHELL="/system/bin/sh"
BUILDID=$(getprop ro.product.build.id)
BUILDTYPE=$(getprop ro.product.build.type)
BUILDTAGS=$(getprop ro.product.build.tags)
ANDROIDV=$(getprop ro.product.build.version.release)
ASCIIDIR=.androinfo
ASCII=.androinfo/ascii.txt

mkdir -p "$ASCIIDIR" 1>/dev/null
touch "$ASCII" 1>/dev/null

cat "$ASCII"

echo "Device: $DEVICE"
echo "Android version: $ANDROIDV"
echo "SDK: $SDK"
echo "First SDK: $FIRSTSDK"
echo "androinfo version: $VERSION"
echo "Device brand: $BRAND"
echo "Device kernel: $KERNEL"
echo "Device architecture: $ARCH"
echo "Running shell: $SHELL"
echo "Device fingerprint: $FINGERPRINT"
echo "Build ID: $BUILDID"
echo "Build type: $BUILDTYPE"
echo "Build tags: $BUILDTAGS"

exit 0
