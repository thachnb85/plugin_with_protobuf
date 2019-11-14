Create plugin with protobuf support

# Create project:
flutter create -t plugin -i swift -a kotlin plugin_with_protobuf

Quick check:
cd plugin_with_protobuf/example
flutter run

# Prepare protobuf
brew install protobuf
brew install swift-protobuf

brew tap dart-lang/dart
brew install dart
pub global activate protoc_plugin

# Edit bash_profile
export PATH=$PATH:~/flutter/bin: ~/.pub-cache/bin

# Prepare IDE
Android Studio: Protobuf Support
VSCode: vscode-proto3

# Create protos folder in plugin
- Create person.proto file

# Gen dart code:
protoc --dart_out=./lib/gen ./protos/person.proto

# Adding dependencies in pubspec.yaml
 dependencies:
   protobuf: any
   
# Generate swift code
protoc --swift_out=./ios/Classes ./protos/person.proto

then modify podspec for iOS project at: ios/plugin_with_protobuf.podspec
Adding:
+  s.dependency 'SwiftProtobuf', '~> 1.4'
+  s.ios.deployment_target = '9.0'

# Sending data from iOS to Flutter
Right click on iOS -> Flutter -> Open iOS module in XCode

Method channel should be in SwiftPluginWithProtobufPlugin.swift
Search for that file -> see PluginWithProtobufPlugin.m

# Implement Swift method
# Implement Dart to call Swift method, easy can be done via Xcode
plugin_with_protobuf/ios/Classes/SwiftPluginWithProtobufPlugin.swift

# Adding support in Android Gradle file
-  Try to run on Android simulator/device to test Gradle build file
- Implement in Kotlin, can open Android Studio project in another window
plugin_with_protobuf/android/src/main/kotlin/com/example/plugin_with_protobuf/PluginWithProtobufPlugin.kt






 




