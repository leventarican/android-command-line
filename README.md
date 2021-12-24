# Android Development from command line

__Motivation__: Android Development without Android Studio IDE.

__Used tools__: command line, bash, atom editor with java/kotlin syntax.

## Setup Android SDK and Emulator from command line
The following scripts will download, setup the android sdk, create virtual device and starts the emulator.
All artifacts will be downloaded in current path under folder `android-sdk`. No `~/.android` is used.

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

```
