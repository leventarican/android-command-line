#!/bin/bash

SYSTEM_IMAGE="system-images;android-32;google_apis;x86_64"
DEVICE_ID=25
VIRTUAL_DEVICE_NAME=pixel_5

echo Step 4: Set environment variables ANDROID_SDK_ROOT and ANDROID_AVD_HOME
export ANDROID_SDK_ROOT=$PWD/android-sdk

# search order $ANDROID_AVD_HOME, $ANDROID_SDK_HOME/avd and $HOME/.android/avd
# https://developer.android.com/studio/run/emulator-commandline#data-filedir
mkdir android-sdk/avd/
# by setting the AVD path we skip the default path usage of ~/.android folder.
export ANDROID_AVD_HOME=$ANDROID_SDK_ROOT/avd/

echo Step 5: Create system images. Accept with y.
android-sdk/cmdline-tools/latest/bin/sdkmanager $SYSTEM_IMAGE
sleep 1

echo Step 6: Create virtual device.
android-sdk/cmdline-tools/latest/bin/avdmanager create avd -n $VIRTUAL_DEVICE_NAME -k $SYSTEM_IMAGE --device $DEVICE_ID -p $PWD/android-sdk/avd/$VIRTUAL_DEVICE_NAME --force
# android-sdk/cmdline-tools/latest/bin/avdmanager list device
# android-sdk/cmdline-tools/latest/bin/avdmanager list avd

source $PWD/start-emulator.sh
