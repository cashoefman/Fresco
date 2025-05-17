// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fresco",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "Fresco",
            targets: ["Fresco"]
        )
    ],
    targets: [
        .target(
            name: "Fresco",
            resources: [
                .process("Resources/Assets.xcassets"),
                .process("Resources/AppThemes.json") // 👈 Add this line clearly
            ]
        ),
        .testTarget(
            name: "FrescoTests",
            dependencies: ["Fresco"]
        )
    ]
)
