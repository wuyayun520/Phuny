# Setting Up In-App Purchases for Phuny

This guide explains how to configure in-app purchases in App Store Connect for the Phuny app.

## Prerequisites

1. An Apple Developer account with access to App Store Connect
2. The app already created in App Store Connect
3. A valid Apple bank account and tax information set up in App Store Connect

## Product IDs Used in the App

The app uses the following product IDs:

### Post Updates
- `phuny1_5`: 5 Post Updates for $5.99
- `phuny1_15`: 15 Post Updates for $15.99
- `phuny1_19`: 19 Post Updates for $19.99

### Send Messages
- `phuny2_6`: 6 Messages for $6.99
- `phuny2_19`: 19 Messages for $19.99
- `phuny2_29`: 29 Messages for $29.99

### Send Pictures
- `phuny3_8`: 8 Pictures for $8.99
- `phuny3_19`: 19 Pictures for $19.99
- `phuny3_39`: 39 Pictures for $39.99

### Send Voice
- `phuny4_8`: 8 Voice Messages for $8.99
- `phuny4_19`: 19 Voice Messages for $19.99
- `phuny4_39`: 39 Voice Messages for $39.99

## Steps to Configure In-App Purchases

1. **Sign in to App Store Connect**
   - Go to [App Store Connect](https://appstoreconnect.apple.com/)
   - Sign in with your Apple Developer account

2. **Navigate to Your App**
   - Click on "My Apps"
   - Select the Phuny app

3. **Set Up In-App Purchases**
   - Click on the "Features" tab
   - Select "In-App Purchases" from the sidebar
   - Click the "+" button to add a new in-app purchase

4. **Create Consumable In-App Purchases**
   - For each product ID, choose "Consumable" as the type
   - Enter the product ID exactly as listed above (e.g., `phuny1_5`)
   - Set the reference name (e.g., "5 Post Updates")
   - Add a description visible to users in the App Store

5. **Configure Pricing**
   - Set the price tier corresponding to the price listed above
   - For example, for `phuny1_5`, select the tier that equals $5.99 in the US

6. **Add Localizations**
   - Add display name and description for each language you support
   - Use clear, descriptive names like "5 Post Updates" or "8 Voice Messages"

7. **Review and Submit**
   - Review all details
   - Submit the in-app purchases for review

8. **Testing**
   - Add sandbox testers in App Store Connect under Users and Access > Sandbox > Testers
   - Provide these test accounts with valid information but fake payment details
   - Test the purchases in development environment using these sandbox accounts

## Code Implementation

The Phuny app already integrates with the in_app_purchase plugin for Flutter. The main implementation is in the `lib/screens/balance_screen.dart` file, which:

1. Initializes the in-app purchase system
2. Displays available products grouped by category
3. Handles purchase flow
4. Processes successful transactions and updates user balances

## Troubleshooting

### Common Issues

1. **Product not appearing in the app**
   - Ensure the product ID in App Store Connect exactly matches the ID in the app
   - Verify the product is "Approved" in App Store Connect
   - Try signing out and back into your App Store account on the test device

2. **Failed purchases**
   - Check sandbox tester account is properly set up
   - Verify your app is using the StoreKit testing environment in development
   - Review Apple's purchase receipt validation requirements

3. **Receipt validation errors**
   - The app currently implements local validation only
   - For production, consider implementing server-side receipt validation

### Error Messages

The app displays user-friendly error messages in English for various error scenarios. These messages are displayed in red alert banners and include:

- "The store is not available right now. Please try again later."
- "A transaction is already in progress. Please wait."
- "Product not found. Please try again later."
- "Invalid purchase. Please try again or contact support."

## Support

For any issues with in-app purchases implementation, contact the development team or refer to Apple's StoreKit documentation. 