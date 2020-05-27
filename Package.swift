// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Rudder",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "Rudder",
            targets: ["Rudder"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Rudder",
            dependencies: []
        ),
        .testTarget(
            name: "RudderTests",
            dependencies: ["Rudder"]),
    ]
)
