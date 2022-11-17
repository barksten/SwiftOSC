// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SwiftOSC",
    products: [
        .library(
            name: "SwiftOSC",
            targets: ["SwiftOSC"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftOSC",
            dependencies: [
                "ysocket",
            ]
        ),
        .target(
            name: "ysocket",
            dependencies: [
                "ysocketC"
            ],
            path: "Sources/ysocket/Swift"
        ),
        .target(
            name: "ysocketC",
            dependencies: [],
            path: "Sources/ysocket/C"
        ),
    ]
)
