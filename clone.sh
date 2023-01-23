#!/usr/bin/env bash

# Define Variables
DEVICE="RMX2151"
DT="https://github.com/albatron34000/shrp_device_RMX2151"
OEM="samsung"
SHRP_BRANCH="12.1"
TARGET=(
	recoveryimage
)


repo init --depth=1 -u https://github.com/SHRP/manifest.git  -b shrp-${SHRP_BRANCH}
repo sync -j$(nproc) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync

git clone ${DT} -b shrp device/${OEM}/${DEVICE}
