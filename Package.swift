// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "WebAuthnKit",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "WebAuthnKit",
            targets: ["WebAuthnKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", exact: "8.2.0"),
        .package(url: "https://github.com/agens-no/EllipticCurveKeyPair.git", revision: "23c10206e15cf3276f25fad0b52cd5b16c9c6537"),
        .package(url: "https://github.com/teamprex/KeychainAccess.git", exact: "4.2.2"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", exact: "1.9.0"),
    ],
    targets: [
        .target(
            name: "WebAuthnKit",
            dependencies: [
                "PromiseKit",
                "EllipticCurveKeyPair",
                "KeychainAccess",
                "CryptoSwift",
            ],
            path: "WebAuthnKit/Sources")
    ])
