# reuseify_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

-   [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
-   [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```
reuseify_app
├─ android
│  ├─ .gitignore
│  ├─ .gradle
│  │  ├─ 7.6.3
│  │  │  ├─ checksums
│  │  │  │  ├─ checksums.lock
│  │  │  │  ├─ md5-checksums.bin
│  │  │  │  └─ sha1-checksums.bin
│  │  │  ├─ dependencies-accessors
│  │  │  │  ├─ dependencies-accessors.lock
│  │  │  │  └─ gc.properties
│  │  │  ├─ executionHistory
│  │  │  │  ├─ executionHistory.bin
│  │  │  │  └─ executionHistory.lock
│  │  │  ├─ fileChanges
│  │  │  │  └─ last-build.bin
│  │  │  ├─ fileHashes
│  │  │  │  ├─ fileHashes.bin
│  │  │  │  ├─ fileHashes.lock
│  │  │  │  └─ resourceHashesCache.bin
│  │  │  ├─ gc.properties
│  │  │  └─ vcsMetadata
│  │  ├─ buildOutputCleanup
│  │  │  ├─ buildOutputCleanup.lock
│  │  │  ├─ cache.properties
│  │  │  └─ outputFiles.bin
│  │  ├─ file-system.probe
│  │  └─ vcs-1
│  │     └─ gc.properties
│  ├─ app
│  │  ├─ build.gradle
│  │  └─ src
│  │     ├─ debug
│  │     │  └─ AndroidManifest.xml
│  │     ├─ main
│  │     │  ├─ AndroidManifest.xml
│  │     │  ├─ java
│  │     │  │  └─ io
│  │     │  │     └─ flutter
│  │     │  │        └─ plugins
│  │     │  │           └─ GeneratedPluginRegistrant.java
│  │     │  ├─ kotlin
│  │     │  │  └─ com
│  │     │  │     └─ example
│  │     │  │        └─ reuseify_app
│  │     │  │           └─ MainActivity.kt
│  │     │  └─ res
│  │     │     ├─ drawable
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ drawable-v21
│  │     │     │  └─ launch_background.xml
│  │     │     ├─ mipmap-hdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-mdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ mipmap-xxxhdpi
│  │     │     │  └─ ic_launcher.png
│  │     │     ├─ values
│  │     │     │  └─ styles.xml
│  │     │     └─ values-night
│  │     │        └─ styles.xml
│  │     └─ profile
│  │        └─ AndroidManifest.xml
│  ├─ build.gradle
│  ├─ gradle
│  │  └─ wrapper
│  │     ├─ gradle-wrapper.jar
│  │     └─ gradle-wrapper.properties
│  ├─ gradle.properties
│  ├─ gradlew
│  ├─ gradlew.bat
│  ├─ local.properties
│  └─ settings.gradle
├─ assets
│  ├─ fonts
│  │  ├─ Poppins-Bold.ttf
│  │  ├─ Poppins-Regular.ttf
│  │  ├─ Poppins-Thin.ttf
│  │  ├─ Roboto-Black.ttf
│  │  ├─ Roboto-Bold.ttf
│  │  ├─ Roboto-Light.ttf
│  │  ├─ Roboto-Regular.ttf
│  │  └─ Roboto_Black_Italic.ttf
│  └─ images
│     ├─ onboard-1.png
│     ├─ onboard-2.png
│     ├─ onboard-3.png
│     ├─ onboard-4.png
│     └─ scanner.png
├─ ios
│  ├─ .gitignore
│  ├─ Flutter
│  │  ├─ AppFrameworkInfo.plist
│  │  ├─ Debug.xcconfig
│  │  ├─ flutter_export_environment.sh
│  │  ├─ Generated.xcconfig
│  │  └─ Release.xcconfig
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  ├─ AppIcon.appiconset
│  │  │  │  ├─ Contents.json
│  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │  │  │  ├─ Icon-App-20x20@1x.png
│  │  │  │  ├─ Icon-App-20x20@2x.png
│  │  │  │  ├─ Icon-App-20x20@3x.png
│  │  │  │  ├─ Icon-App-29x29@1x.png
│  │  │  │  ├─ Icon-App-29x29@2x.png
│  │  │  │  ├─ Icon-App-29x29@3x.png
│  │  │  │  ├─ Icon-App-40x40@1x.png
│  │  │  │  ├─ Icon-App-40x40@2x.png
│  │  │  │  ├─ Icon-App-40x40@3x.png
│  │  │  │  ├─ Icon-App-60x60@2x.png
│  │  │  │  ├─ Icon-App-60x60@3x.png
│  │  │  │  ├─ Icon-App-76x76@1x.png
│  │  │  │  ├─ Icon-App-76x76@2x.png
│  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │  │  └─ LaunchImage.imageset
│  │  │     ├─ Contents.json
│  │  │     ├─ LaunchImage.png
│  │  │     ├─ LaunchImage@2x.png
│  │  │     ├─ LaunchImage@3x.png
│  │  │     └─ README.md
│  │  ├─ Base.lproj
│  │  │  ├─ LaunchScreen.storyboard
│  │  │  └─ Main.storyboard
│  │  ├─ GeneratedPluginRegistrant.h
│  │  ├─ GeneratedPluginRegistrant.m
│  │  ├─ Info.plist
│  │  └─ Runner-Bridging-Header.h
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  ├─ contents.xcworkspacedata
│  │  │  └─ xcshareddata
│  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     └─ WorkspaceSettings.xcsettings
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     ├─ IDEWorkspaceChecks.plist
│  │     └─ WorkspaceSettings.xcsettings
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ lib
│  ├─ core
│  │  ├─ common
│  │  │  ├─ cubits
│  │  │  │  └─ app_user
│  │  │  │     ├─ app_user_cubit.dart
│  │  │  │     └─ app_user_state.dart
│  │  │  ├─ entities
│  │  │  │  ├─ api_response.dart
│  │  │  │  ├─ onboarding_data.dart
│  │  │  │  └─ user.dart
│  │  │  ├─ repositories
│  │  │  │  └─ local_storage_repo.dart
│  │  │  └─ widgets
│  │  │     ├─ loader.dart
│  │  │     └─ primary_button.dart
│  │  ├─ constants
│  │  │  ├─ constants.dart
│  │  │  └─ local_storage_keys.dart
│  │  ├─ error
│  │  │  ├─ exceptions.dart
│  │  │  └─ failures.dart
│  │  ├─ network
│  │  │  ├─ api_client_repo.dart
│  │  │  ├─ api_configs.dart
│  │  │  ├─ api_endpoints.dart
│  │  │  ├─ connection_checker.dart
│  │  │  ├─ dio_api_client.dart
│  │  │  └─ http_status.dart
│  │  ├─ secrets
│  │  ├─ theme
│  │  │  ├─ app_pallete.dart
│  │  │  └─ theme.dart
│  │  ├─ usecase
│  │  │  └─ usecase.dart
│  │  └─ utils
│  │     └─ show_snackbar.dart
│  ├─ features
│  │  ├─ auth
│  │  │  ├─ data
│  │  │  │  ├─ datasources
│  │  │  │  │  └─ auth_remote_data_source.dart
│  │  │  │  ├─ models
│  │  │  │  │  └─ user_model.dart
│  │  │  │  └─ repositories
│  │  │  │     └─ auth_repository_impl.dart
│  │  │  ├─ domain
│  │  │  │  ├─ entities
│  │  │  │  ├─ repositories
│  │  │  │  │  └─ auth_repository.dart
│  │  │  │  └─ usecases
│  │  │  │     ├─ current_user.dart
│  │  │  │     ├─ user_login.dart
│  │  │  │     └─ user_sign_up.dart
│  │  │  └─ presentation
│  │  │     ├─ bloc
│  │  │     │  ├─ auth_bloc.dart
│  │  │     │  ├─ auth_event.dart
│  │  │     │  └─ auth_state.dart
│  │  │     ├─ pages
│  │  │     │  ├─ login_page.dart
│  │  │     │  └─ signup_page.dart
│  │  │     └─ widgets
│  │  │        ├─ auth_field.dart
│  │  │        └─ onboarding_widget.dart
│  │  └─ home
│  │     ├─ data
│  │     │  ├─ datasources
│  │     │  ├─ models
│  │     │  └─ repositories
│  │     ├─ domain
│  │     │  ├─ entities
│  │     │  ├─ repositories
│  │     │  │  └─ home_repo.dart
│  │     │  └─ usecases
│  │     └─ presentation
│  │        ├─ bloc
│  │        │  ├─ home_bloc.dart
│  │        │  ├─ home_event.dart
│  │        │  └─ home_state.dart
│  │        ├─ pages
│  │        │  ├─ bottom_nav_page.dart
│  │        │  ├─ cart_page.dart
│  │        │  ├─ home_page.dart
│  │        │  ├─ notification_page.dart
│  │        │  └─ profile_page.dart
│  │        └─ widgets
│  │           └─ bottom_nav_custom_painter.dart
│  ├─ locator.dart
│  ├─ main.dart
│  └─ onboarding_page.dart
├─ linux
│  ├─ .gitignore
│  ├─ CMakeLists.txt
│  ├─ flutter
│  │  ├─ CMakeLists.txt
│  │  ├─ ephemeral
│  │  │  └─ .plugin_symlinks
│  │  │     ├─ connectivity_plus
│  │  │     │  ├─ android
│  │  │     │  │  ├─ build.gradle
│  │  │     │  │  ├─ gradle
│  │  │     │  │  │  └─ wrapper
│  │  │     │  │  │     └─ gradle-wrapper.properties
│  │  │     │  │  ├─ gradle.properties
│  │  │     │  │  ├─ settings.gradle
│  │  │     │  │  └─ src
│  │  │     │  │     └─ main
│  │  │     │  │        ├─ AndroidManifest.xml
│  │  │     │  │        └─ java
│  │  │     │  │           └─ dev
│  │  │     │  │              └─ fluttercommunity
│  │  │     │  │                 └─ plus
│  │  │     │  │                    └─ connectivity
│  │  │     │  │                       ├─ Connectivity.java
│  │  │     │  │                       ├─ ConnectivityBroadcastReceiver.java
│  │  │     │  │                       ├─ ConnectivityMethodChannelHandler.java
│  │  │     │  │                       └─ ConnectivityPlugin.java
│  │  │     │  ├─ CHANGELOG.md
│  │  │     │  ├─ darwin
│  │  │     │  │  ├─ Classes
│  │  │     │  │  │  ├─ ConnectivityPlusPlugin.h
│  │  │     │  │  │  ├─ ConnectivityPlusPlugin.m
│  │  │     │  │  │  ├─ ConnectivityProvider.swift
│  │  │     │  │  │  ├─ PathMonitorConnectivityProvider.swift
│  │  │     │  │  │  └─ SwiftConnectivityPlusPlugin.swift
│  │  │     │  │  ├─ connectivity_plus.podspec
│  │  │     │  │  └─ PrivacyInfo.xcprivacy
│  │  │     │  ├─ example
│  │  │     │  │  ├─ analysis_options.yaml
│  │  │     │  │  ├─ android
│  │  │     │  │  │  ├─ app
│  │  │     │  │  │  │  ├─ build.gradle
│  │  │     │  │  │  │  └─ src
│  │  │     │  │  │  │     └─ main
│  │  │     │  │  │  │        ├─ AndroidManifest.xml
│  │  │     │  │  │  │        ├─ java
│  │  │     │  │  │  │        │  └─ io
│  │  │     │  │  │  │        │     └─ flutter
│  │  │     │  │  │  │        │        └─ plugins
│  │  │     │  │  │  │        │           └─ connectivityexample
│  │  │     │  │  │  │        │              └─ FlutterActivityTest.java
│  │  │     │  │  │  │        └─ res
│  │  │     │  │  │  │           ├─ mipmap-hdpi
│  │  │     │  │  │  │           │  └─ ic_launcher.png
│  │  │     │  │  │  │           ├─ mipmap-mdpi
│  │  │     │  │  │  │           │  └─ ic_launcher.png
│  │  │     │  │  │  │           ├─ mipmap-xhdpi
│  │  │     │  │  │  │           │  └─ ic_launcher.png
│  │  │     │  │  │  │           ├─ mipmap-xxhdpi
│  │  │     │  │  │  │           │  └─ ic_launcher.png
│  │  │     │  │  │  │           └─ mipmap-xxxhdpi
│  │  │     │  │  │  │              └─ ic_launcher.png
│  │  │     │  │  │  ├─ build.gradle
│  │  │     │  │  │  ├─ gradle
│  │  │     │  │  │  │  └─ wrapper
│  │  │     │  │  │  │     └─ gradle-wrapper.properties
│  │  │     │  │  │  ├─ gradle.properties
│  │  │     │  │  │  └─ settings.gradle
│  │  │     │  │  ├─ integration_test
│  │  │     │  │  │  └─ connectivity_plus_test.dart
│  │  │     │  │  ├─ ios
│  │  │     │  │  │  ├─ Flutter
│  │  │     │  │  │  │  ├─ AppFrameworkInfo.plist
│  │  │     │  │  │  │  ├─ Debug.xcconfig
│  │  │     │  │  │  │  └─ Release.xcconfig
│  │  │     │  │  │  ├─ Runner
│  │  │     │  │  │  │  ├─ AppDelegate.swift
│  │  │     │  │  │  │  ├─ Assets.xcassets
│  │  │     │  │  │  │  │  ├─ AppIcon.appiconset
│  │  │     │  │  │  │  │  │  ├─ Contents.json
│  │  │     │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
│  │  │     │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
│  │  │     │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
│  │  │     │  │  │  │  │  └─ LaunchImage.imageset
│  │  │     │  │  │  │  │     ├─ Contents.json
│  │  │     │  │  │  │  │     ├─ LaunchImage.png
│  │  │     │  │  │  │  │     ├─ LaunchImage@2x.png
│  │  │     │  │  │  │  │     ├─ LaunchImage@3x.png
│  │  │     │  │  │  │  │     └─ README.md
│  │  │     │  │  │  │  ├─ Base.lproj
│  │  │     │  │  │  │  │  ├─ LaunchScreen.storyboard
│  │  │     │  │  │  │  │  └─ Main.storyboard
│  │  │     │  │  │  │  ├─ Info.plist
│  │  │     │  │  │  │  └─ Runner-Bridging-Header.h
│  │  │     │  │  │  ├─ Runner.xcodeproj
│  │  │     │  │  │  │  ├─ project.pbxproj
│  │  │     │  │  │  │  ├─ project.xcworkspace
│  │  │     │  │  │  │  │  ├─ contents.xcworkspacedata
│  │  │     │  │  │  │  │  └─ xcshareddata
│  │  │     │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     │  │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │  │     │  │  │  │  └─ xcshareddata
│  │  │     │  │  │  │     └─ xcschemes
│  │  │     │  │  │  │        └─ Runner.xcscheme
│  │  │     │  │  │  ├─ Runner.xcworkspace
│  │  │     │  │  │  │  ├─ contents.xcworkspacedata
│  │  │     │  │  │  │  └─ xcshareddata
│  │  │     │  │  │  │     ├─ IDEWorkspaceChecks.plist
│  │  │     │  │  │  │     └─ WorkspaceSettings.xcsettings
│  │  │     │  │  │  └─ RunnerTests
│  │  │     │  │  │     └─ RunnerTests.swift
│  │  │     │  │  ├─ lib
│  │  │     │  │  │  └─ main.dart
│  │  │     │  │  ├─ linux
│  │  │     │  │  │  ├─ CMakeLists.txt
│  │  │     │  │  │  ├─ flutter
│  │  │     │  │  │  │  └─ CMakeLists.txt
│  │  │     │  │  │  ├─ main.cc
│  │  │     │  │  │  ├─ my_application.cc
│  │  │     │  │  │  └─ my_application.h
│  │  │     │  │  ├─ macos
│  │  │     │  │  │  ├─ Flutter
│  │  │     │  │  │  │  ├─ Flutter-Debug.xcconfig
│  │  │     │  │  │  │  └─ Flutter-Release.xcconfig
│  │  │     │  │  │  ├─ Runner
│  │  │     │  │  │  │  ├─ AppDelegate.swift
│  │  │     │  │  │  │  ├─ Assets.xcassets
│  │  │     │  │  │  │  │  └─ AppIcon.appiconset
│  │  │     │  │  │  │  │     ├─ app_icon_1024.png
│  │  │     │  │  │  │  │     ├─ app_icon_128.png
│  │  │     │  │  │  │  │     ├─ app_icon_16.png
│  │  │     │  │  │  │  │     ├─ app_icon_256.png
│  │  │     │  │  │  │  │     ├─ app_icon_32.png
│  │  │     │  │  │  │  │     ├─ app_icon_512.png
│  │  │     │  │  │  │  │     ├─ app_icon_64.png
│  │  │     │  │  │  │  │     └─ Contents.json
│  │  │     │  │  │  │  ├─ Base.lproj
│  │  │     │  │  │  │  │  └─ MainMenu.xib
│  │  │     │  │  │  │  ├─ Configs
│  │  │     │  │  │  │  │  ├─ AppInfo.xcconfig
│  │  │     │  │  │  │  │  ├─ Debug.xcconfig
│  │  │     │  │  │  │  │  ├─ Release.xcconfig
│  │  │     │  │  │  │  │  └─ Warnings.xcconfig
│  │  │     │  │  │  │  ├─ DebugProfile.entitlements
│  │  │     │  │  │  │  ├─ Info.plist
│  │  │     │  │  │  │  ├─ MainFlutterWindow.swift
│  │  │     │  │  │  │  └─ Release.entitlements
│  │  │     │  │  │  ├─ Runner.xcodeproj
│  │  │     │  │  │  │  ├─ project.pbxproj
│  │  │     │  │  │  │  ├─ project.xcworkspace
│  │  │     │  │  │  │  │  └─ xcshareddata
│  │  │     │  │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │  │     │  │  │  │  └─ xcshareddata
│  │  │     │  │  │  │     └─ xcschemes
│  │  │     │  │  │  │        └─ Runner.xcscheme
│  │  │     │  │  │  ├─ Runner.xcworkspace
│  │  │     │  │  │  │  ├─ contents.xcworkspacedata
│  │  │     │  │  │  │  └─ xcshareddata
│  │  │     │  │  │  │     └─ IDEWorkspaceChecks.plist
│  │  │     │  │  │  └─ RunnerTests
│  │  │     │  │  │     └─ RunnerTests.swift
│  │  │     │  │  ├─ pubspec.yaml
│  │  │     │  │  ├─ README.md
│  │  │     │  │  ├─ web
│  │  │     │  │  │  ├─ favicon.png
│  │  │     │  │  │  ├─ icons
│  │  │     │  │  │  │  ├─ Icon-192.png
│  │  │     │  │  │  │  ├─ Icon-512.png
│  │  │     │  │  │  │  ├─ Icon-maskable-192.png
│  │  │     │  │  │  │  └─ Icon-maskable-512.png
│  │  │     │  │  │  ├─ index.html
│  │  │     │  │  │  └─ manifest.json
│  │  │     │  │  └─ windows
│  │  │     │  │     ├─ CMakeLists.txt
│  │  │     │  │     ├─ flutter
│  │  │     │  │     │  └─ CMakeLists.txt
│  │  │     │  │     └─ runner
│  │  │     │  │        ├─ CMakeLists.txt
│  │  │     │  │        ├─ flutter_window.cpp
│  │  │     │  │        ├─ flutter_window.h
│  │  │     │  │        ├─ main.cpp
│  │  │     │  │        ├─ resource.h
│  │  │     │  │        ├─ resources
│  │  │     │  │        │  └─ app_icon.ico
│  │  │     │  │        ├─ runner.exe.manifest
│  │  │     │  │        ├─ Runner.rc
│  │  │     │  │        ├─ run_loop.cpp
│  │  │     │  │        ├─ run_loop.h
│  │  │     │  │        ├─ utils.cpp
│  │  │     │  │        ├─ utils.h
│  │  │     │  │        ├─ win32_window.cpp
│  │  │     │  │        └─ win32_window.h
│  │  │     │  ├─ lib
│  │  │     │  │  ├─ connectivity_plus.dart
│  │  │     │  │  └─ src
│  │  │     │  │     ├─ connectivity_plus_linux.dart
│  │  │     │  │     ├─ connectivity_plus_web.dart
│  │  │     │  │     └─ web
│  │  │     │  │        ├─ dart_html_connectivity_plugin.dart
│  │  │     │  │        └─ utils
│  │  │     │  │           └─ connectivity_result.dart
│  │  │     │  ├─ LICENSE
│  │  │     │  ├─ pubspec.yaml
│  │  │     │  ├─ README.md
│  │  │     │  ├─ test
│  │  │     │  │  ├─ connectivity_plus_linux_test.dart
│  │  │     │  │  ├─ connectivity_plus_linux_test.mocks.dart
│  │  │     │  │  └─ connectivity_test.dart
│  │  │     │  └─ windows
│  │  │     │     ├─ CMakeLists.txt
│  │  │     │     ├─ connectivity_plus_plugin.cpp
│  │  │     │     ├─ include
│  │  │     │     │  └─ connectivity_plus
│  │  │     │     │     ├─ connectivity_plus_windows_plugin.h
│  │  │     │     │     └─ network_manager.h
│  │  │     │     └─ network_manager.cpp
│  │  │     ├─ path_provider_linux
│  │  │     │  ├─ AUTHORS
│  │  │     │  ├─ CHANGELOG.md
│  │  │     │  ├─ example
│  │  │     │  │  ├─ integration_test
│  │  │     │  │  │  └─ path_provider_test.dart
│  │  │     │  │  ├─ lib
│  │  │     │  │  │  └─ main.dart
│  │  │     │  │  ├─ linux
│  │  │     │  │  │  ├─ CMakeLists.txt
│  │  │     │  │  │  ├─ flutter
│  │  │     │  │  │  │  ├─ CMakeLists.txt
│  │  │     │  │  │  │  └─ generated_plugins.cmake
│  │  │     │  │  │  ├─ main.cc
│  │  │     │  │  │  ├─ my_application.cc
│  │  │     │  │  │  └─ my_application.h
│  │  │     │  │  ├─ pubspec.yaml
│  │  │     │  │  ├─ README.md
│  │  │     │  │  └─ test_driver
│  │  │     │  │     └─ integration_test.dart
│  │  │     │  ├─ lib
│  │  │     │  │  ├─ path_provider_linux.dart
│  │  │     │  │  └─ src
│  │  │     │  │     ├─ get_application_id.dart
│  │  │     │  │     ├─ get_application_id_real.dart
│  │  │     │  │     ├─ get_application_id_stub.dart
│  │  │     │  │     └─ path_provider_linux.dart
│  │  │     │  ├─ LICENSE
│  │  │     │  ├─ pubspec.yaml
│  │  │     │  ├─ README.md
│  │  │     │  └─ test
│  │  │     │     ├─ get_application_id_test.dart
│  │  │     │     └─ path_provider_linux_test.dart
│  │  │     └─ shared_preferences_linux
│  │  │        ├─ AUTHORS
│  │  │        ├─ CHANGELOG.md
│  │  │        ├─ example
│  │  │        │  ├─ integration_test
│  │  │        │  │  └─ shared_preferences_test.dart
│  │  │        │  ├─ lib
│  │  │        │  │  └─ main.dart
│  │  │        │  ├─ linux
│  │  │        │  │  ├─ CMakeLists.txt
│  │  │        │  │  ├─ flutter
│  │  │        │  │  │  ├─ CMakeLists.txt
│  │  │        │  │  │  └─ generated_plugins.cmake
│  │  │        │  │  ├─ main.cc
│  │  │        │  │  ├─ my_application.cc
│  │  │        │  │  └─ my_application.h
│  │  │        │  ├─ pubspec.yaml
│  │  │        │  ├─ README.md
│  │  │        │  └─ test_driver
│  │  │        │     └─ integration_test.dart
│  │  │        ├─ lib
│  │  │        │  └─ shared_preferences_linux.dart
│  │  │        ├─ LICENSE
│  │  │        ├─ pubspec.yaml
│  │  │        ├─ README.md
│  │  │        └─ test
│  │  │           └─ shared_preferences_linux_test.dart
│  │  ├─ generated_plugins.cmake
│  │  ├─ generated_plugin_registrant.cc
│  │  └─ generated_plugin_registrant.h
│  ├─ main.cc
│  ├─ my_application.cc
│  └─ my_application.h
├─ macos
│  ├─ .gitignore
│  ├─ Flutter
│  │  ├─ ephemeral
│  │  │  ├─ Flutter-Generated.xcconfig
│  │  │  └─ flutter_export_environment.sh
│  │  ├─ Flutter-Debug.xcconfig
│  │  ├─ Flutter-Release.xcconfig
│  │  └─ GeneratedPluginRegistrant.swift
│  ├─ Runner
│  │  ├─ AppDelegate.swift
│  │  ├─ Assets.xcassets
│  │  │  └─ AppIcon.appiconset
│  │  │     ├─ app_icon_1024.png
│  │  │     ├─ app_icon_128.png
│  │  │     ├─ app_icon_16.png
│  │  │     ├─ app_icon_256.png
│  │  │     ├─ app_icon_32.png
│  │  │     ├─ app_icon_512.png
│  │  │     ├─ app_icon_64.png
│  │  │     └─ Contents.json
│  │  ├─ Base.lproj
│  │  │  └─ MainMenu.xib
│  │  ├─ Configs
│  │  │  ├─ AppInfo.xcconfig
│  │  │  ├─ Debug.xcconfig
│  │  │  ├─ Release.xcconfig
│  │  │  └─ Warnings.xcconfig
│  │  ├─ DebugProfile.entitlements
│  │  ├─ Info.plist
│  │  ├─ MainFlutterWindow.swift
│  │  └─ Release.entitlements
│  ├─ Runner.xcodeproj
│  │  ├─ project.pbxproj
│  │  ├─ project.xcworkspace
│  │  │  └─ xcshareddata
│  │  │     └─ IDEWorkspaceChecks.plist
│  │  └─ xcshareddata
│  │     └─ xcschemes
│  │        └─ Runner.xcscheme
│  ├─ Runner.xcworkspace
│  │  ├─ contents.xcworkspacedata
│  │  └─ xcshareddata
│  │     └─ IDEWorkspaceChecks.plist
│  └─ RunnerTests
│     └─ RunnerTests.swift
├─ pubspec.lock
├─ pubspec.yaml
├─ README.md
├─ test
│  └─ widget_test.dart
├─ web
│  ├─ favicon.png
│  ├─ icons
│  │  ├─ Icon-192.png
│  │  ├─ Icon-512.png
│  │  ├─ Icon-maskable-192.png
│  │  └─ Icon-maskable-512.png
│  ├─ index.html
│  └─ manifest.json
└─ windows
   ├─ .gitignore
   ├─ CMakeLists.txt
   ├─ flutter
   │  ├─ CMakeLists.txt
   │  ├─ ephemeral
   │  │  └─ .plugin_symlinks
   │  │     ├─ connectivity_plus
   │  │     │  ├─ android
   │  │     │  │  ├─ build.gradle
   │  │     │  │  ├─ gradle
   │  │     │  │  │  └─ wrapper
   │  │     │  │  │     └─ gradle-wrapper.properties
   │  │     │  │  ├─ gradle.properties
   │  │     │  │  ├─ settings.gradle
   │  │     │  │  └─ src
   │  │     │  │     └─ main
   │  │     │  │        ├─ AndroidManifest.xml
   │  │     │  │        └─ java
   │  │     │  │           └─ dev
   │  │     │  │              └─ fluttercommunity
   │  │     │  │                 └─ plus
   │  │     │  │                    └─ connectivity
   │  │     │  │                       ├─ Connectivity.java
   │  │     │  │                       ├─ ConnectivityBroadcastReceiver.java
   │  │     │  │                       ├─ ConnectivityMethodChannelHandler.java
   │  │     │  │                       └─ ConnectivityPlugin.java
   │  │     │  ├─ CHANGELOG.md
   │  │     │  ├─ darwin
   │  │     │  │  ├─ Classes
   │  │     │  │  │  ├─ ConnectivityPlusPlugin.h
   │  │     │  │  │  ├─ ConnectivityPlusPlugin.m
   │  │     │  │  │  ├─ ConnectivityProvider.swift
   │  │     │  │  │  ├─ PathMonitorConnectivityProvider.swift
   │  │     │  │  │  └─ SwiftConnectivityPlusPlugin.swift
   │  │     │  │  ├─ connectivity_plus.podspec
   │  │     │  │  └─ PrivacyInfo.xcprivacy
   │  │     │  ├─ example
   │  │     │  │  ├─ analysis_options.yaml
   │  │     │  │  ├─ android
   │  │     │  │  │  ├─ app
   │  │     │  │  │  │  ├─ build.gradle
   │  │     │  │  │  │  └─ src
   │  │     │  │  │  │     └─ main
   │  │     │  │  │  │        ├─ AndroidManifest.xml
   │  │     │  │  │  │        ├─ java
   │  │     │  │  │  │        │  └─ io
   │  │     │  │  │  │        │     └─ flutter
   │  │     │  │  │  │        │        └─ plugins
   │  │     │  │  │  │        │           └─ connectivityexample
   │  │     │  │  │  │        │              └─ FlutterActivityTest.java
   │  │     │  │  │  │        └─ res
   │  │     │  │  │  │           ├─ mipmap-hdpi
   │  │     │  │  │  │           │  └─ ic_launcher.png
   │  │     │  │  │  │           ├─ mipmap-mdpi
   │  │     │  │  │  │           │  └─ ic_launcher.png
   │  │     │  │  │  │           ├─ mipmap-xhdpi
   │  │     │  │  │  │           │  └─ ic_launcher.png
   │  │     │  │  │  │           ├─ mipmap-xxhdpi
   │  │     │  │  │  │           │  └─ ic_launcher.png
   │  │     │  │  │  │           └─ mipmap-xxxhdpi
   │  │     │  │  │  │              └─ ic_launcher.png
   │  │     │  │  │  ├─ build.gradle
   │  │     │  │  │  ├─ gradle
   │  │     │  │  │  │  └─ wrapper
   │  │     │  │  │  │     └─ gradle-wrapper.properties
   │  │     │  │  │  ├─ gradle.properties
   │  │     │  │  │  └─ settings.gradle
   │  │     │  │  ├─ integration_test
   │  │     │  │  │  └─ connectivity_plus_test.dart
   │  │     │  │  ├─ ios
   │  │     │  │  │  ├─ Flutter
   │  │     │  │  │  │  ├─ AppFrameworkInfo.plist
   │  │     │  │  │  │  ├─ Debug.xcconfig
   │  │     │  │  │  │  └─ Release.xcconfig
   │  │     │  │  │  ├─ Runner
   │  │     │  │  │  │  ├─ AppDelegate.swift
   │  │     │  │  │  │  ├─ Assets.xcassets
   │  │     │  │  │  │  │  ├─ AppIcon.appiconset
   │  │     │  │  │  │  │  │  ├─ Contents.json
   │  │     │  │  │  │  │  │  ├─ Icon-App-1024x1024@1x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-20x20@1x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-20x20@2x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-20x20@3x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-29x29@1x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-29x29@2x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-29x29@3x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-40x40@1x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-40x40@2x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-40x40@3x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-60x60@2x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-60x60@3x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-76x76@1x.png
   │  │     │  │  │  │  │  │  ├─ Icon-App-76x76@2x.png
   │  │     │  │  │  │  │  │  └─ Icon-App-83.5x83.5@2x.png
   │  │     │  │  │  │  │  └─ LaunchImage.imageset
   │  │     │  │  │  │  │     ├─ Contents.json
   │  │     │  │  │  │  │     ├─ LaunchImage.png
   │  │     │  │  │  │  │     ├─ LaunchImage@2x.png
   │  │     │  │  │  │  │     ├─ LaunchImage@3x.png
   │  │     │  │  │  │  │     └─ README.md
   │  │     │  │  │  │  ├─ Base.lproj
   │  │     │  │  │  │  │  ├─ LaunchScreen.storyboard
   │  │     │  │  │  │  │  └─ Main.storyboard
   │  │     │  │  │  │  ├─ Info.plist
   │  │     │  │  │  │  └─ Runner-Bridging-Header.h
   │  │     │  │  │  ├─ Runner.xcodeproj
   │  │     │  │  │  │  ├─ project.pbxproj
   │  │     │  │  │  │  ├─ project.xcworkspace
   │  │     │  │  │  │  │  ├─ contents.xcworkspacedata
   │  │     │  │  │  │  │  └─ xcshareddata
   │  │     │  │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │  │     │  │  │  │  │     └─ WorkspaceSettings.xcsettings
   │  │     │  │  │  │  └─ xcshareddata
   │  │     │  │  │  │     └─ xcschemes
   │  │     │  │  │  │        └─ Runner.xcscheme
   │  │     │  │  │  ├─ Runner.xcworkspace
   │  │     │  │  │  │  ├─ contents.xcworkspacedata
   │  │     │  │  │  │  └─ xcshareddata
   │  │     │  │  │  │     ├─ IDEWorkspaceChecks.plist
   │  │     │  │  │  │     └─ WorkspaceSettings.xcsettings
   │  │     │  │  │  └─ RunnerTests
   │  │     │  │  │     └─ RunnerTests.swift
   │  │     │  │  ├─ lib
   │  │     │  │  │  └─ main.dart
   │  │     │  │  ├─ linux
   │  │     │  │  │  ├─ CMakeLists.txt
   │  │     │  │  │  ├─ flutter
   │  │     │  │  │  │  └─ CMakeLists.txt
   │  │     │  │  │  ├─ main.cc
   │  │     │  │  │  ├─ my_application.cc
   │  │     │  │  │  └─ my_application.h
   │  │     │  │  ├─ macos
   │  │     │  │  │  ├─ Flutter
   │  │     │  │  │  │  ├─ Flutter-Debug.xcconfig
   │  │     │  │  │  │  └─ Flutter-Release.xcconfig
   │  │     │  │  │  ├─ Runner
   │  │     │  │  │  │  ├─ AppDelegate.swift
   │  │     │  │  │  │  ├─ Assets.xcassets
   │  │     │  │  │  │  │  └─ AppIcon.appiconset
   │  │     │  │  │  │  │     ├─ app_icon_1024.png
   │  │     │  │  │  │  │     ├─ app_icon_128.png
   │  │     │  │  │  │  │     ├─ app_icon_16.png
   │  │     │  │  │  │  │     ├─ app_icon_256.png
   │  │     │  │  │  │  │     ├─ app_icon_32.png
   │  │     │  │  │  │  │     ├─ app_icon_512.png
   │  │     │  │  │  │  │     ├─ app_icon_64.png
   │  │     │  │  │  │  │     └─ Contents.json
   │  │     │  │  │  │  ├─ Base.lproj
   │  │     │  │  │  │  │  └─ MainMenu.xib
   │  │     │  │  │  │  ├─ Configs
   │  │     │  │  │  │  │  ├─ AppInfo.xcconfig
   │  │     │  │  │  │  │  ├─ Debug.xcconfig
   │  │     │  │  │  │  │  ├─ Release.xcconfig
   │  │     │  │  │  │  │  └─ Warnings.xcconfig
   │  │     │  │  │  │  ├─ DebugProfile.entitlements
   │  │     │  │  │  │  ├─ Info.plist
   │  │     │  │  │  │  ├─ MainFlutterWindow.swift
   │  │     │  │  │  │  └─ Release.entitlements
   │  │     │  │  │  ├─ Runner.xcodeproj
   │  │     │  │  │  │  ├─ project.pbxproj
   │  │     │  │  │  │  ├─ project.xcworkspace
   │  │     │  │  │  │  │  └─ xcshareddata
   │  │     │  │  │  │  │     └─ IDEWorkspaceChecks.plist
   │  │     │  │  │  │  └─ xcshareddata
   │  │     │  │  │  │     └─ xcschemes
   │  │     │  │  │  │        └─ Runner.xcscheme
   │  │     │  │  │  ├─ Runner.xcworkspace
   │  │     │  │  │  │  ├─ contents.xcworkspacedata
   │  │     │  │  │  │  └─ xcshareddata
   │  │     │  │  │  │     └─ IDEWorkspaceChecks.plist
   │  │     │  │  │  └─ RunnerTests
   │  │     │  │  │     └─ RunnerTests.swift
   │  │     │  │  ├─ pubspec.yaml
   │  │     │  │  ├─ README.md
   │  │     │  │  ├─ web
   │  │     │  │  │  ├─ favicon.png
   │  │     │  │  │  ├─ icons
   │  │     │  │  │  │  ├─ Icon-192.png
   │  │     │  │  │  │  ├─ Icon-512.png
   │  │     │  │  │  │  ├─ Icon-maskable-192.png
   │  │     │  │  │  │  └─ Icon-maskable-512.png
   │  │     │  │  │  ├─ index.html
   │  │     │  │  │  └─ manifest.json
   │  │     │  │  └─ windows
   │  │     │  │     ├─ CMakeLists.txt
   │  │     │  │     ├─ flutter
   │  │     │  │     │  └─ CMakeLists.txt
   │  │     │  │     └─ runner
   │  │     │  │        ├─ CMakeLists.txt
   │  │     │  │        ├─ flutter_window.cpp
   │  │     │  │        ├─ flutter_window.h
   │  │     │  │        ├─ main.cpp
   │  │     │  │        ├─ resource.h
   │  │     │  │        ├─ resources
   │  │     │  │        │  └─ app_icon.ico
   │  │     │  │        ├─ runner.exe.manifest
   │  │     │  │        ├─ Runner.rc
   │  │     │  │        ├─ run_loop.cpp
   │  │     │  │        ├─ run_loop.h
   │  │     │  │        ├─ utils.cpp
   │  │     │  │        ├─ utils.h
   │  │     │  │        ├─ win32_window.cpp
   │  │     │  │        └─ win32_window.h
   │  │     │  ├─ lib
   │  │     │  │  ├─ connectivity_plus.dart
   │  │     │  │  └─ src
   │  │     │  │     ├─ connectivity_plus_linux.dart
   │  │     │  │     ├─ connectivity_plus_web.dart
   │  │     │  │     └─ web
   │  │     │  │        ├─ dart_html_connectivity_plugin.dart
   │  │     │  │        └─ utils
   │  │     │  │           └─ connectivity_result.dart
   │  │     │  ├─ LICENSE
   │  │     │  ├─ pubspec.yaml
   │  │     │  ├─ README.md
   │  │     │  ├─ test
   │  │     │  │  ├─ connectivity_plus_linux_test.dart
   │  │     │  │  ├─ connectivity_plus_linux_test.mocks.dart
   │  │     │  │  └─ connectivity_test.dart
   │  │     │  └─ windows
   │  │     │     ├─ CMakeLists.txt
   │  │     │     ├─ connectivity_plus_plugin.cpp
   │  │     │     ├─ include
   │  │     │     │  └─ connectivity_plus
   │  │     │     │     ├─ connectivity_plus_windows_plugin.h
   │  │     │     │     └─ network_manager.h
   │  │     │     └─ network_manager.cpp
   │  │     ├─ path_provider_windows
   │  │     │  ├─ AUTHORS
   │  │     │  ├─ CHANGELOG.md
   │  │     │  ├─ example
   │  │     │  │  ├─ integration_test
   │  │     │  │  │  └─ path_provider_test.dart
   │  │     │  │  ├─ lib
   │  │     │  │  │  └─ main.dart
   │  │     │  │  ├─ pubspec.yaml
   │  │     │  │  ├─ README.md
   │  │     │  │  ├─ test_driver
   │  │     │  │  │  └─ integration_test.dart
   │  │     │  │  └─ windows
   │  │     │  │     ├─ CMakeLists.txt
   │  │     │  │     ├─ flutter
   │  │     │  │     │  ├─ CMakeLists.txt
   │  │     │  │     │  └─ generated_plugins.cmake
   │  │     │  │     └─ runner
   │  │     │  │        ├─ CMakeLists.txt
   │  │     │  │        ├─ flutter_window.cpp
   │  │     │  │        ├─ flutter_window.h
   │  │     │  │        ├─ main.cpp
   │  │     │  │        ├─ resource.h
   │  │     │  │        ├─ resources
   │  │     │  │        │  └─ app_icon.ico
   │  │     │  │        ├─ runner.exe.manifest
   │  │     │  │        ├─ Runner.rc
   │  │     │  │        ├─ run_loop.cpp
   │  │     │  │        ├─ run_loop.h
   │  │     │  │        ├─ utils.cpp
   │  │     │  │        ├─ utils.h
   │  │     │  │        ├─ win32_window.cpp
   │  │     │  │        └─ win32_window.h
   │  │     │  ├─ lib
   │  │     │  │  ├─ path_provider_windows.dart
   │  │     │  │  └─ src
   │  │     │  │     ├─ folders.dart
   │  │     │  │     ├─ folders_stub.dart
   │  │     │  │     ├─ path_provider_windows_real.dart
   │  │     │  │     └─ path_provider_windows_stub.dart
   │  │     │  ├─ LICENSE
   │  │     │  ├─ pubspec.yaml
   │  │     │  ├─ README.md
   │  │     │  └─ test
   │  │     │     └─ path_provider_windows_test.dart
   │  │     └─ shared_preferences_windows
   │  │        ├─ AUTHORS
   │  │        ├─ CHANGELOG.md
   │  │        ├─ example
   │  │        │  ├─ AUTHORS
   │  │        │  ├─ integration_test
   │  │        │  │  └─ shared_preferences_test.dart
   │  │        │  ├─ lib
   │  │        │  │  └─ main.dart
   │  │        │  ├─ LICENSE
   │  │        │  ├─ pubspec.yaml
   │  │        │  ├─ README.md
   │  │        │  ├─ test_driver
   │  │        │  │  └─ integration_test.dart
   │  │        │  └─ windows
   │  │        │     ├─ CMakeLists.txt
   │  │        │     ├─ flutter
   │  │        │     │  ├─ CMakeLists.txt
   │  │        │     │  └─ generated_plugins.cmake
   │  │        │     └─ runner
   │  │        │        ├─ CMakeLists.txt
   │  │        │        ├─ flutter_window.cpp
   │  │        │        ├─ flutter_window.h
   │  │        │        ├─ main.cpp
   │  │        │        ├─ resource.h
   │  │        │        ├─ resources
   │  │        │        │  └─ app_icon.ico
   │  │        │        ├─ runner.exe.manifest
   │  │        │        ├─ Runner.rc
   │  │        │        ├─ run_loop.cpp
   │  │        │        ├─ run_loop.h
   │  │        │        ├─ utils.cpp
   │  │        │        ├─ utils.h
   │  │        │        ├─ win32_window.cpp
   │  │        │        └─ win32_window.h
   │  │        ├─ lib
   │  │        │  └─ shared_preferences_windows.dart
   │  │        ├─ LICENSE
   │  │        ├─ pubspec.yaml
   │  │        ├─ README.md
   │  │        └─ test
   │  │           └─ shared_preferences_windows_test.dart
   │  ├─ generated_plugins.cmake
   │  ├─ generated_plugin_registrant.cc
   │  └─ generated_plugin_registrant.h
   └─ runner
      ├─ CMakeLists.txt
      ├─ flutter_window.cpp
      ├─ flutter_window.h
      ├─ main.cpp
      ├─ resource.h
      ├─ resources
      │  └─ app_icon.ico
      ├─ runner.exe.manifest
      ├─ Runner.rc
      ├─ utils.cpp
      ├─ utils.h
      ├─ win32_window.cpp
      └─ win32_window.h

```
