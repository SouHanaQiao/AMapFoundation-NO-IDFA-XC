// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AMapFoundation-NO-IDFA-XC",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AMapFoundation-NO-IDFA-XC",
            targets: ["AMapFoundation-NO-IDFA-XC"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "AMapFoundation-NO-IDFA-XC", url: "https://github.com/SouHanaQiao/AMapFoundation-NO-IDFA-XC/releases/download/1.8.2/AMapFoundation-NO-IDFA.zip", checksum: "fa6428e01adb6879680dc219103ddf0caceae4c550c0076cc984e300fb034084"),
        .testTarget(
            name: "AMapFoundation-NO-IDFA-XCTests",
            dependencies: ["AMapFoundation-NO-IDFA-XC"]),
    ]
)
