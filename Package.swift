// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "Nimble",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Nimble", targets: ["Nimble"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattgallagher/CwlPreconditionTesting.git", .upToNextMajor(from: "2.0.0")),
    ],
    targets: [
        .target(
            name: "Nimble", 
            dependencies: {
                return []
            }()
        ),
        .testTarget(
            name: "NimbleTests", 
            dependencies: ["Nimble"], 
            exclude: ["objc"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
