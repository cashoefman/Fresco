//  swift-tools-version: 6.1
//  The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fresco",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Fresco",
            targets: ["Fresco"]
        ),
    ],
    targets: [
        .target(
            name: "Fresco",
            resources: [
                .process("Resources/Assets.xcassets")
            ]
        )
    ]
)
