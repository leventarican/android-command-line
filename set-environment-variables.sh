#!/bin/bash

# run with: source set-environment-variables.sh

echo Step 4: Set environment variables ANDROID_SDK_ROOT and ANDROID_AVD_HOME
export ANDROID_HOME=$PWD/android-sdk

export ANDROID_SDK_ROOT=$ANDROID_HOME
tree -L 1 $ANDROID_SDK_ROOT

export ANDROID_AVD_HOME=$ANDROID_HOME/avd/
tree -L 1 $ANDROID_AVD_HOME
