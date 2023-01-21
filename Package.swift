// swift-tools-version:5.3
// v1.0.5
import PackageDescription

let package = Package(
    name: "ACQPaymentSDK",
    products: [
        .library(
            name: "ACQPaymentSDK",
            targets: [
                "Core",
                "ACQNetworkSecurity",
                "ACQCore",
                "ACQApplePay",
                "ACQCardPayment",
                "ACQRemoteClient",
                "ACQPaymentGateway"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Core",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.5/Core.zip",
            checksum: "28e2c8cca74cd4529cb6256a0a5a2c2d68c24532ef804fb9d801f251eba50b75"
        ),
        .binaryTarget(
            name: "ACQNetworkSecurity",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.5/ACQNetworkSecurity.zip",
            checksum: "ffcdfbdd33ed0d0d8b8629c4dbfd34bf06dc7dcfe68aaa94134ddee86807fb2b"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.5/ACQCore.zip",
            checksum: "e3d6033a3f0b9622448bd9969cf5060e842db82dd3ae969bc23cf33f0317f0c4"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.5/ACQApplePay.zip",
            checksum: "1ac351706fff9283613c893f22730947e3ed7f81b9e4a31e93d2cf3242b7dcd4"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.5/ACQCardPayment.zip",
            checksum: "d3ed82a19df78ebe0c6842038b3e8838d1e98294e0562eef2f0a054daa9e83ae"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.5/ACQRemoteClient.zip",
            checksum: "6f778e395a1daa84a69ee0c0397c02863b3fc967cfd0fd5d7485ce1d32f30c47"
        ),
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.5/ACQPaymentGateway.zip",
            checksum: "6965fa32ac6cc5dde2be350f0bc39bd4919b8d1bc61a9be7041c1795011871f1"
        )
    ]
)
