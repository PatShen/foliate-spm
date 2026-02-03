// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "foliate-spm",
    platforms: [
        .iOS(.v26)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "foliate-spm",
            targets: ["foliate-spm"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "foliate-spm",
            path: "Sources/",
            exclude: [
                "Resources/foliate-js/LICENSE",
                "Resources/foliate-js/README.md",
                "Resources/foliate-js/reader.html",
                "Resources/foliate-js/rollup/"
            ],
            resources: [
                .process("Resources/foliate-js/"),
            ],
        ),
        .testTarget(
            name: "foliate-spmTests",
            dependencies: ["foliate-spm"]
        ),
    ]
)
