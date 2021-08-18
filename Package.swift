// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ACQPaymentGateway",
    products: [
        .library(
            name: "ACQPaymentGateway",
            targets: [
                "ACQPaymentGateway",
                "Core",
                "ACQCore",
                "ACQRemoteClient",
                "ACQCardPayment",
                "ACQApplePay",
                "ACQNetworkSecurity",
                "TrustKit"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/ACQPaymentGateway.zip",
            checksum: "75d1f7d5587049e70b7ec7f1e34906bc873c12cf0303f024857d6fc92340dd98% "
        ),
        .binaryTarget(
            name: "Core",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/Core.zip",
            checksum: "3659cc10437fcbb1447f84618efdea4e4a3af95ee780b6016dbbe820711c0331"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/ACQCore.zip",
            checksum: "86af087c2f11ba8d9b3be491f6564c64828f2aa51470a3213f7b53202ff53e3f"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/ACQRemoteClient.zip",
            checksum: "03079bb0beb4530e1c1a90887fee3020b18eab63007e56b83f6a3189636aa0ab"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/ACQCardPayment.zip",
            checksum: "65d9b3873220523b2ccc638622978798c76c00d2eb6daed6d5a68e0e2f1960d6"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/ACQApplePay.zip",
            checksum: "be20faf155abed26b86c7aea2425e895d10b400c4edae703c14cdcff75402e79"
        ),
        .binaryTarget(
            name: "ACQNetworkSecurity",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/ACQNetworkSecurity.zip",
            checksum: "6fa6d08dbe209d936435149b3345879f576de9b2fae0c4e3a69a1b8b7880b5b1"
        ),
        .binaryTarget(
            name: "TrustKit",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.5/TrustKit.zip",
            checksum: "5a185420ebfc9514c39c9fc15af06c54f2abf26c64c49299c3da061ab56f5d1b"
        )
    ]
)
