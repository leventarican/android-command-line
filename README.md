# Android Development from command line

__Motivation__

Android Development without Android Studio IDE. Why should usethis approach? In my opinion it's much faster then startup the code environment. Two steps only.

```bash
./start-emulator # ready within: ~ 1-2s
./gradlew installDebug # install up: ~ 1s
```

Our starting point will be installing the command line tools (around 100MB).
The Android SDK isn't delivered in the command line tools.

_NOTE_ The Android SDK Command-Line Tools package replaces the deprecated SDK Tools package.

Use a fast editor e.g. Atom (with kotlin support: `apm install language-kotlin`)

__What about logging in console?__

With logcat (platform-tools) you can watch the logs of an app.
More about logcat: https://developer.android.com/studio/command-line/logcat#filteringOutput
```bash
# example show only debug logs with tag # (#:D) and silent all others (*:S)
android_sdk/platform-tools/adb logcat #:D "*:S"
```

__What about android sources?__

You can just install the sources package you prefer with sdkmanager.
```bash
android_sdk/cmdline-tools/latest/bin/sdkmanager "sources;android-30"
```

## Setup Android SDK and Emulator from command line
The following scripts will download, setup the android sdk, create virtual device and starts the emulator.
All artifacts will be downloaded in current path under folder `android-sdk`. No `~/.android` is used. Because of environment variable usage.

You want to _uninstall_ the sdk?
```bash
rm -rf android-sdk/
```

Script: download cmdline-tools, install buildtools, install platforms.
```bash
install-android-sdk.sh

# android-sdk folder structure after script.
tree -L 1 android-sdk/
android-sdk/
├── build-tools
├── cmdline-tools
├── emulator
├── licenses
├── patcher
├── platforms
├── platform-tools
└── tools

8 directories, 0 files
```

Script: download system image, create virtual device, start emulator
```bash
setup-emulator.sh

# android-sdk folder structure after script.
tree -L 1 android-sdk/avd/
android-sdk/avd/
├── pixel_5
└── pixel_5.ini

tree -L 1 android-sdk/system-images/
android-sdk/system-images/
└── android-32

1 directory, 0 files
```

## Code
```bash
# start the emulator
./start-emulator.sh

# copy this template: cp -R ...
cd boilerplate
./gradlew build

# deploy
./gradlew installDebug
./gradlew uninstallDebug
```
