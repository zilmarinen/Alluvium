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
    dependencies: [
        .package(url: "git@github.com:nicklockwood/Euclid.git",
                 branch: "main"),
    ],
    targets: [
        .target(name: "Alluvium",
                dependencies: ["Euclid"]),
        .testTarget(name: "AlluviumTests",
                    dependencies: ["Alluvium"])
    ]
)
