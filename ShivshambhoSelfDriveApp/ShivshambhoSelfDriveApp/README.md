# Shivshambho Self Drive Mobile App

This package wraps the supplied website in native Android and iOS WebViews. The original HTML content/data is bundled locally.

## Android APK
Open `android/` in Android Studio, allow Gradle sync, then Build > Build APK(s). The generated debug APK will be under `android/app/build/outputs/apk/debug/`.

Command line (with Android SDK/Gradle available):
`cd android && gradlew.bat assembleDebug` on Windows or `./gradlew assembleDebug` on macOS/Linux.

## iOS
Open `ios/ShivshambhoSelfDrive.xcodeproj` in Xcode, select a development team/signing identity, choose an iPhone/simulator, and Build/Archive. An `.ipa` requires Apple signing and distribution credentials.

## Important
The website currently references Google Fonts, Font Awesome, and car images hosted on external URLs, so the app needs internet access for those external assets. WhatsApp booking also requires WhatsApp/web access on the device.
