// swift-tools-version:5.3
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
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.4/Core.zip",
            checksum: "414935b76265dfd76a48d171d3f7753e46dff576fc81d7b4a2b528dc015fedcb"
        ),
        .binaryTarget(
            name: "ACQNetworkSecurity",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.4/ACQNetworkSecurity.zip",
            checksum: "d8bc09b967ae7747b13c1469adccf748590824cefaa34e8abcf36d692c4e7af5"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.4/ACQCore.zip",
            checksum: "c567f5871464dfb317df485f6766e6f8ecb737d7d3a10d1ccd41ade0ff8b5142"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.4/ACQApplePay.zip",
            checksum: "88d74d091b163d15cef5e00d8f7983f6cb63a75cd668d0b1badb1236464a5e0b"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.4/ACQCardPayment.zip",
            checksum: "769ca0b8ce5895ae7f1615a90d61c360ed4e916531fc5803ee7c0e332c58511d"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.4/ACQRemoteClient.zip",
            checksum: "dfef4823566f5c1d1c33406ae09061f9f92fea6e22d694795cd9475282a35d70"
        ),
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.4/ACQPaymentGateway.zip",
            checksum: "1f91698b5c8bf53eeaca4977b2c9c2578102c0f371004c334c2757417f4f7279"
        )
    ]
)
