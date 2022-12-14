// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DevTools",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DevTools",
            targets: ["DevTools"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/bannzai/Gedatsu.git", from: "1.2.0"),
        .package(url: "https://github.com/FLEXTool/FLEX.git", from: "5.22.10"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DevTools",
            dependencies: [
                "Gedatsu",
                "FLEX",
                .product(name: "Logging", package: "swift-log")
            ]
        ),
        .testTarget(
            name: "DevToolsTests",
            dependencies: ["DevTools"]),
    ]
)
