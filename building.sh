#!/usr/bin/env bash

# Define Variables
DEVICE="RMX2151"
DT="https://github.com/albatron34000/shrp_device_RMX2151"
OEM="realme"
TW_BRANCH="12.1"
TARGET=(
	recoveryimage
)

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_${DEVICE}-eng
mka -j$(nproc) ${TARGET}
