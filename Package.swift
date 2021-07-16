// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ACQPaymentGateway",
    products: [
        .library(
            name: "ACQPaymentGateway",
            targets: ["ACQPaymentGateway", "Core", "ACQCore", "ACQRemoteClient", "ACQCardPayment", "ACQApplePay"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.3/ACQPaymentGateway.zip",
            checksum: "0825f7dc970f0539a8e080a4fefbd4ad4156edc26c86877467f2f38f5840eb7a"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.3/Core.zip",
            checksum: "f5b87291566d2116150d286483a5032dda7a851a97177fe7fdc87559de5886ad"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.3/ACQCore.zip",
            checksum: "4bb0ea104e96238a2ed7d14d598a1df089808f301f8a29f36610a24c48b0fbf2"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.3/ACQRemoteClient.zip",
            checksum: "7cc7d7a44e12b008de6e53eead61109a4048eff9b9d22c8456f9087548088b18"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.3/ACQCardPayment.zip",
            checksum: "0d890b793a2f13ab02b7d3ffbb346c2e229d6210471f0165f66b2486160047ef"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.3/ACQApplePay.zip",
            checksum: "a31662372d1dd721261bec495233765caf1e3068978681a6301007cf1d233324"
        )
    ]
)
