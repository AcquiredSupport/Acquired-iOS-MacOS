// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ACQPaymentGateway",
    products: [
        .library(
            name: "ACQPaymentGateway",
            targets: ["ACQPaymentGateway"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.1/ACQPaymentGateway.zip",
            checksum: "53378a3b4c8eaba7ba37089f225a06eba4795419085fba09d716f3cde59cae64"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.1/Core.zip",
            checksum: "e897a1f9346a8edba1fc110b3d0459aaefb5cae0bc2292e799939a8030fb3327"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.1/ACQCore.zip",
            checksum: "126993a0ea49462eb1980d77646a87793dbf01918c928510c7fc22402a2cc89b"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.1/ACQRemoteClient.zip",
            checksum: "e1c8f9eac51f31d4a59194a17cf0f2d2e9dc980fabda309531f3134bbe88e202"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.1/ACQCardPayment.zip",
            checksum: "504e2635f19735b0705c36f33c6f316ce67aa5e75e27ea01be548ec78fd70271"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.1/ACQApplePay.zip",
            checksum: "c2add70bdc03ac0ab50993221c5879fb7ec5f5af082ef5c5bc60615047d142d7"
        )
    ]
)
