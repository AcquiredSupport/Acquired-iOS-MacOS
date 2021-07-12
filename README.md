# Acquired-iOS-MacOS

## Description
The Acquired-iOS-MacOS SDK allows you to easily integrate Apple Pay and a hosted payment page for card payments into your iOS or MacOS app. 

## Requirements
- iOS 13+
- MacOS 11+
- xCode 12.3+ 

## Installation
Use [Swift Package Manager](https://swift.org/package-manager/) to install this SDK. 

1. Follow the steps in [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)
2. Set the repository URL to https://github.com/AcquiredSupport/Acquired-iOS-MacOS. 

import ACQPaymentGateway

## Configuration 

Contact support@acquired.com to get started using the SDK, you will need a companyId, companyPass, CompanyHash & companyMidId to be configured within your app. 

Once you've got this, the SDK can be fully configured within the [Acquired.com Hub](https://qahub.acquired.com) allowing you to define what is supported and should be requested from the user on the payment sheet. This includes:

- Supported Card Networks (Visa, MasterCard, Amex)
- Supported Card Types (Credit, Debit)
- Required Billing Data (Address, Email, Phone)
- Required Shipping Data (Address, Email, Phone)

## Examples
Take a look at at the [Acquired-iOS-ExampleApp](https://github.com/AcquiredSupport/Acquired-iOS-ExampleApp) for a SwiftUI implementation of the SDK. 
