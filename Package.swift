// swift-tools-version:5.3
// v1.0.6
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
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.6/Core.zip",
            checksum: "3e7fcb5bc623077af996f6a5a6ecd86bb72348265d76971dfcaed53d8af2390f"
        ),
        .binaryTarget(
            name: "ACQNetworkSecurity",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.6/ACQNetworkSecurity.zip",
            checksum: "601a4fca355ea75e075e575a3e045d5dfc2cd0bc8a06f47db36af07ac1d8f852"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.6/ACQCore.zip",
            checksum: "eb1ada20cdbbb168f4e8a21a9a18cae66fd8fe1ae5a40192bf4acd7f5e054c5e"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.6/ACQApplePay.zip",
            checksum: "30af10c0a05cab7d5c556d78cb9aa9ea1beb6c0ccc4d5bab82f85056a502281f"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.6/ACQCardPayment.zip",
            checksum: "ab4f3811755cc8c7b47052ec6a8ee3c15a34e15f154155fa0d5c603740aded53"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.6/ACQRemoteClient.zip",
            checksum: "42e557f3c8b348723f239d2e56bb43c108b6f82a4d2cd9b4d53033f54096c6bc"
        ),
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/1.0.6/ACQPaymentGateway.zip",
            checksum: "7f3905fe4ed1b6b39f90108b37e88c83bf129d67f795130d2ac9f2df2399706d"
        )
    ]
)
