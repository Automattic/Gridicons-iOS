// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Gridicons",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "Gridicons",
            targets: ["Gridicons"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Gridicons",
            path: "Gridicons/Gridicons",
            sources: ["Gridicons.swift", "GridiconsGenerated.swift"],
            resources: [
                .process("Gridicons.xcassets")
            ]
        ),
        .testTarget(
            name: "GridiconsTests",
            dependencies: [.target(name: "Gridicons")],
            path: "Gridicons/GridiconsTests",
            sources: ["GridiconsTests.swift"]
        )
    ]
)
