#!/bin/bash

ANDROID_SDK_FOLDER=android-sdk
URL_CMDLINE_TOOLS=https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip
BUILD_TOOLS="build-tools;32.0.0"
PLATFORMS="platforms;android-32"

echo Step 0: Get command line tools for linux.
mkdir $ANDROID_SDK_FOLDER
cd $ANDROID_SDK_FOLDER
curl $URL_CMDLINE_TOOLS --output cmdline-tools.zip
unzip cmdline-tools.zip
rm cmdline-tools.zip

echo Step 1: Move files to latest folder.
cd cmdline-tools
mkdir latest
mv bin/ lib/ NOTICE.txt source.properties latest/
cd ../..

echo Step 2: Install buildtools. Accept with y.
#android-sdk/cmdline-tools/latest/bin/sdkmanager --version
#android-sdk/cmdline-tools/latest/bin/sdkmanager list

# adapt the version if needed
android-sdk/cmdline-tools/latest/bin/sdkmanager $BUILD_TOOLS --channel=0
sleep 1

echo Step 3: Install platforms.
android-sdk/cmdline-tools/latest/bin/sdkmanager $PLATFORMS
