#!/usr/bin/env bash

# Define Variables
DEVICE="z3s"
DT="https://github.com/Nico170420/android_device_samsung_z3s.git"
OEM="samsung"
SHRP_BRANCH="12.1"
TARGET=(
	recoveryimage
)

cd ${OUT}

curl -sL https://git.io/file-transfer | sh
./transfer wet SHRP*.zip

