// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WWSignInWith3rd+LINE",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "WWSignInWith3rd+LINE", targets: ["WWSignInWith3rd+LINE"]),
    ],
    dependencies: [
        .package(name: "WWSignInWith3rd+Apple", url: "https://github.com/William-Weng/WWSignInWith3rd_Apple", .upToNextMinor(from: "1.0.1")),
        .package(name: "LineSDK", url: "https://github.com/line/line-sdk-ios-swift", from: "5.10.0"),
    ],
    targets: [
        .target(name: "WWSignInWith3rd+LINE", dependencies: ["WWSignInWith3rd+Apple", "LineSDK"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
