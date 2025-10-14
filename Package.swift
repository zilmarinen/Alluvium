// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Alluvium",
    platforms: [.macOS(.v14),
                .iOS(.v17)],
    products: [
        .library(name: "Alluvium",
                 targets: ["Alluvium"])
    ],
    targets: [
        .target(name: "Alluvium"),
        .testTarget(name: "AlluviumTests",
                    dependencies: ["Alluvium"])
    ]
)
