// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Base32Crockford",
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(
      name: "Base32Crockford",
      targets: ["Base32Crockford"]
    ),

    .executable(
      name: "base32dc",
      targets: ["base32dc"]
    )
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
      name: "Base32Crockford",
      dependencies: []
    ),
    .target(
      name: "base32dc",
      dependencies: ["Base32Crockford"]
    ),
    .testTarget(
      name: "Base32CrockfordTests",
      dependencies: ["Base32Crockford"]
    )
  ]
)
