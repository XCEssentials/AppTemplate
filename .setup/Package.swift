// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "AppTemplateSetup",
    platforms: [
        .macOS(.v10_14),
    ],
    products: [
        .executable(
            name: "AppTemplateSetup",
            targets: ["AppTemplateSetup"]),
    ],
    dependencies: [
        .package(
            name: "PathKit",
            url: "https://github.com/kylef/PathKit",
            from: "1.0.0"),
        .package(
            name: "XCERepoConfigurator",
            url: "https://github.com/XCEssentials/RepoConfigurator",
            from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "AppTemplateSetup",
            dependencies: [
                .product(
                    name: "XCERepoConfigurator",
                    package: "XCERepoConfigurator"),
                .product(
                    name: "PathKit",
                    package: "PathKit")
            ]
        )
    ]
)
