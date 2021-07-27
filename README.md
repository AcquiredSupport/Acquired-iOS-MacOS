# Acquired-iOS-MacOS

## Description
The Acquired-iOS-MacOS SDK allows you to easily and securely integrate Apple Pay and Card Payments into your iOS or MacOS app. 

## Requirements
- iOS 13+
- MacOS 11+

## Install the SDK
Use [Swift Package Manager](https://swift.org/package-manager/) to install this SDK. 

1. Follow the steps in [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)
2. Set the repository URL to https://github.com/AcquiredSupport/Acquired-iOS-MacOS. 

Once this is completed add "import ACQPaymentGateway".

## Getting Started

Contact support@acquired.com to get started using the SDK. You will need the required configuration details as well as access to our backoffice. 

Once you've got this, the SDK can be fully configured within the [Acquired.com Hub](https://qahub.acquired.com) allowing you to define what is supported and should be requested from the user on the payment sheet. For Apple Pay this includes:

- Supported Card Networks (Visa, MasterCard, Amex)
- Supported Card Types (Credit, Debit, Prepaid)
- Required Billing Data (Address, Email, Phone)
- Required Shipping Data (Address, Email, Phone)

Changes can be easily made to your configuration and payment page without the need to update or release your app.

## Examples
Take a look at at the [Acquired-iOS-ExampleApp](https://github.com/AcquiredSupport/Acquired-iOS-ExampleApp) for a SwiftUI implementation of the SDK.

## How to use the SDK

### Configuration
Create an instance of the PaymentGateway with a configuration: 
```swift
private let paymentGateway: PaymentGateway = {
    let configuration = Configuration(
        companyId: "459",
        companyPass: "re3vKdCG",
        companyHash: "cXaFMLbH",
        companyMidId: "1687",
        baseUrl: "https://qaapi.acquired.com/",
        baseHppUrl: "https://qahpp.acquired.com",
        requestRetryAttempts: 3
    )
    return PaymentGateway(configuration: configuration)
}()
```

### Payment Data
Get the available payment methods and required configuration data as configured in the Hub:
```swift
private func getData() {
      paymentGateway?.getPaymentData {
          switch $0 {
          case .success(let paymentData):
              let currency = paymentData.currency
              currencyCodeIso3 = currency.currencyCode
              currencyDigits = currency.currencyDigits
              paymentsTexts = paymentData.availablePaymentTypes.filter { $0.isActive }

          case .failure(let error):
              display(error: error)
          }
      }
  }
```
### Start a Payment
Create a Transaction object and using a paymentMethod from the paymentData process a payment:
```swift
private func transaction() throws -> ACQTransaction {
    var merchantOrderId = Date().timeIntervalSince1970.description
    merchantOrderId = merchantOrderId.filter { $0 != "." }
    return ACQTransaction(
        transactionType: .authCapture,
        subscriptionType: .initial,
        merchantOrderId: merchantOrderId,
        merchantCustomerId: "5678",
        merchantCustom1: "custom1",
        merchantCustom2: "custom2",
        merchantCustom3: "custom3"
    )
}

private func cellTapped(_ paymentType: PaymentType) {
    guard let acqTransaction = try? transaction() else {
        return
    }
    pay(with: paymentType, for: acqTransaction)
}

func pay(with paymentType: PaymentType, for transaction: ACQTransaction) {
    paymentGateway?.pay(
        for: orderSummary,
        with: paymentType,
        transaction: transaction,
        window: window
    ) { result in
        switch result {
        case .success(let data):
            print("data: \(String(describing: data))")
            displaySuccess()

        case .failure(let error):
            display(error: error)
        }
        orderSummary.selectedShippingMethod = orderSummary.shippingMethods.first
    }
}
```
## Error Handling 

All known declines and errors are caught and handled by the SDK. 

### General Failures

Other than the ones detailed below, all other errors (for example, a parsing error from the Swift JsonDecoder) are just returned as standard Swift Errors.

PaymentError.userCancelled
PaymentError.MissingInformation(String)

### Specific Failures
When you get the PaymentData, we return an array of grouped response_code values returned in a PaymentAuthorizationError:

PaymentAuthorizationError.Declined<br>
PaymentAuthorizationError.Error<br>
PaymentAuthorizationError.Blocked<br>
PaymentAuthorizationError.Pending<br>
PaymentAuthorizationError.Quarantined<br>
PaymentAuthorizationError.TdsFailure<br>
PaymentAuthorizationError.Unknown<br>
PaymentAuthorizationError.InvalidCode<br>

In there is a validation issue when loading the payment page, we will return a HostedPaymentError which has a code and localizedDecription. 

### Security Error

The SDK is secured using Certificate Pinning through TrustKit. In the event that this fails the SDK will return a CertificatePinningError.  

## Examples
Take a look at at the [Acquired-iOS-ExampleApp](https://github.com/AcquiredSupport/Acquired-iOS-ExampleApp) for a SwiftUI implementation of the SDK. 
