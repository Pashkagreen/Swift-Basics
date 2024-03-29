// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "FirstProject",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "FirstProject",
            targets: ["AppModule"],
            bundleIdentifier: "com.paulgrin.FirstProject",
            teamIdentifier: "WU5YL8MKBY",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .weights),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)