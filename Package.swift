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
            resources: [
                .process("Resources/foliate-js/reader.html"),
                .process("Resources/foliate-js/reader.js"),
                .process("Resources/foliate-js/view.js"),
                .process("Resources/foliate-js/ui/tree.js"),
                .process("Resources/foliate-js/ui/menu.js"),
                .process("Resources/foliate-js/overlayer.js"),
                .process("Resources/foliate-js/progress.js"),
                .process("Resources/foliate-js/text-walker.js"),
                .process("Resources/foliate-js/epub.js"),
                .process("Resources/foliate-js/epubcfi.js"),
                .copy("Resources/foliate-js/"),
                .copy("Resources/foliate-js/ui/")
            ],
        ),
        .testTarget(
            name: "foliate-spmTests",
            dependencies: ["foliate-spm"]
        ),
    ]
)
