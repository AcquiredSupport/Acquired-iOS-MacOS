// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ACQPaymentGateway",
    products: [
        .library(
            name: "ACQPaymentGateway",
            targets: ["ACQPaymentGateway", "Core", "ACQCore", "ACQRemoteClient", "ACQCardPayment", "ACQApplePay", "ACQNetworkSecurity"]),
    ],
    targets: [
        .binaryTarget(
            name: "ACQPaymentGateway",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.4/ACQPaymentGateway.zip",
            checksum: "59071712017d19436c1f6a3589bf704b460f73c2ce5d93c3b91ed6add6d01ace"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.4/Core.zip",
            checksum: "769b01d0c125cd6cf91b3aa44b358c12eb6730a7a1cb34aa58fda2c310a68b20"
        ),
        .binaryTarget(
            name: "ACQCore",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.4/ACQCore.zip",
            checksum: "796c92dcd99c60d1927e55bf4835ee1cdb4f367506b3e06451e09c6241f9e8b8"
        ),
        .binaryTarget(
            name: "ACQRemoteClient",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.4/ACQRemoteClient.zip",
            checksum: "ce9d8f858b21ce896976347482f08e92aa3245d960de994d2dd52cd1146b1681"
        ),
        .binaryTarget(
            name: "ACQCardPayment",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.4/ACQCardPayment.zip",
            checksum: "aa45c52b39672a029e32d994c48825ce131dc70bdcdd83c5983de79d3b3c4330"
        ),
        .binaryTarget(
            name: "ACQApplePay",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.4/ACQApplePay.zip",
            checksum: "24676ad14035854d315e7805afdb2a20a11bb2eb5df98ef2fcda83a6f323649e"
        ),
        .binaryTarget(
            name: "ACQNetworkSecurity",
            url: "https://github.com/AcquiredSupport/Acquired-iOS-MacOS/releases/download/0.0.4/ACQNetworkSecurity.zip",
            checksum: "8610a2dafbc7d84385bccac97184d92f7b7d59b2c6a1daf1f62b51c8b632a95b"
        )
    ]
)
