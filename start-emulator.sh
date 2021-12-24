#!/bin/bash

VIRTUAL_DEVICE_NAME=pixel_5

source $PWD/set-environment-variables.sh

echo Step 7: Start emulator
android-sdk/emulator/emulator @$VIRTUAL_DEVICE_NAME
# android-sdk/emulator/emulator @pixel_5 -datadir android-sdk/avd/pixel_5
