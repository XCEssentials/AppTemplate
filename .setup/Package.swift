// swift-tools-version:4.2
// Managed by ice

import PackageDescription

let package = Package(
    name: "AppTemplateSetup",
    dependencies: [
        .package(url: "https://github.com/kylef/PathKit", from: "1.0.0"),
        .package(url: "https://github.com/XCEssentials/RepoConfigurator", from: "2.7.0")
    ],
    targets: [
        .target(
            name: "AppTemplateSetup",
            dependencies: ["XCERepoConfigurator", "PathKit"],
            path: ".",
            sources: ["main.swift"]
        )
    ]
)
