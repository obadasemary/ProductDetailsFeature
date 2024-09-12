// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProductDetailsFeature",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ProductDetailsFeature",
            targets: ["ProductDetailsFeature"]),
    ],
    dependencies: [
        .package(url: "https://github.com/obadasemary/AppDependencyModule.git", .upToNextMajor(from: "1.0.1")),
        .package(url: "https://github.com/obadasemary/BrandUseCase.git", .upToNextMajor(from: "1.0.4")),
        .package(url: "https://github.com/obadasemary/BrandUI.git", .upToNextMajor(from: "1.0.2")),
        .package(url: "https://github.com/obadasemary/BrandRemoteImage.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ProductDetailsFeature",
            dependencies: [
                "AppDependencyModule",
                "BrandUseCase",
                "BrandUI",
                "BrandRemoteImage"
            ]
        ),
        .testTarget(
            name: "ProductDetailsFeatureTests",
            dependencies: ["ProductDetailsFeature"]
        ),
    ]
)
