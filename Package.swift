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
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.0/Core.zip",
            checksum: "96458a699e5ad64f4bab47507bd36d39118a22b5bfffff856367e4a9be8885f2"
        ),
        .binaryTarget(
            name: "ACQNetworkSecurity",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.0/ACQNetworkSecurity.zip",
            checksum: "d0a81e19ef10839af5f073bb4651758e86f060ee6553321e2968ec85b635868c"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.0/ACQCore.zip",
            checksum: "4202deb65729371d6aa40d133027f50403ef51580624debea3f4ac748647573c"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.0/ACQApplePay.zip",
            checksum: "f7705dd799567f65f61f4929a7b40a075161e552d55fcce6a4ee9f4d7087a903"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.0/ACQCardPayment.zip",
            checksum: "cb858f606e25938e9c5570dde45f9f25fb654cf46c62cb32682777506794bf64"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.0/ACQRemoteClient.zip",
            checksum: "938d8cd48e674f578002647460e07a7d4d44197ff9ccf4a04f74e913e9a8112c"
        ),
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.0/ACQPaymentGateway.zip",
            checksum: "714c4a04571531566d33c7e7fd3794ee5b43ff158e027b8a4c0eff452671e5eb"
        )
    ]
)
