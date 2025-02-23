# Auth_SwiftUI

An iOS app built with SwiftUI that integrates Firebase Authentication for user login, sign-up, and profile management. The app also utilizes Firestore to store and retrieve user data and offers a modern authentication experience with support for Google and Apple login (Under development). Built using the MVVM (Model-View-ViewModel) architecture, this app is structured to ensure separation of concerns, scalability, and testability.

## Features

- **MVVM Architecture**: Utilizes MVVM to organize code and separate business logic from UI components.
- **User Authentication**: Users can sign up, log in, and log out using email and password.
- **Google and Apple Sign-In**: Supports sign-in with Google and Apple accounts.
- **Firestore Integration**: Stores user information in Firestore for easy access and management.
- **Profile Management**: Displays user profile information with options to delete the account or sign out.
- **Custom Components & Utilities**: Includes custom views and helper functions, including `PersonNameComponentsFormatter` to format user names.

## Project Structure

- **`Auth_SwiftUIApp.swift`**: Main entry point and Firebase configuration setup.
- **`ContentView.swift`**: Determines whether the user should see the `LoginView` or `ProfileView` based on the session.
- **Views**:
  - **`LoginView.swift`**: Login screen with email/password login, Google, and Apple login options.
  - **`CreateAccountView.swift`**: Sign-up screen allowing users to create an account.
  - **`ProfileView.swift`**: Displays user profile details, along with options to sign out or delete the account.
  - **Reusable Components**: Includes `LogoView`, `GreetingTitleView`, `TextfieldView`, etc.
- **ViewModel**:
  - **`AuthViewModel.swift`**: Manages authentication state and business logic for logging in, signing up, and managing user sessions.
  - **Utilities**: Helper functions for handling tasks like formatting names with `PersonNameComponentsFormatter`, data validation, and error handling.

## Requirements

- **Xcode**: Version 14.0 or higher
- **iOS**: iOS 16.0 or higher
- **Swift**: Swift 5.7 or higher
- **Firebase**: Firebase Authentication and Firestore configured

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/Auth_SwiftUI.git
   cd Auth_SwiftUI

   
## Setup Firebase

1. Create a Firebase project at [Firebase Console](https://console.firebase.google.com/).
2. Enable **Authentication** with the following methods:
   - Email/Password
   - Google Sign-In
   - Apple Sign-In
3. Enable **Firestore Database** to store user data.
4. Download the `GoogleService-Info.plist` file from Firebase and add it to your Xcode project.

## Install Dependencies

1. Open the project in Xcode and add the Firebase SDK via **Swift Package Manager**.
2. Add the following Firebase packages:
   - `Firebase/Auth`
   - `Firebase/Firestore`

## Configuration

- **Firebase Initialization**: The Firebase SDK is initialized in `Auth_SwiftUIApp.swift` within the `AppDelegate`.
- **EnvironmentObject**: The `AuthViewModel` instance is passed to views as an environment object to manage the authentication state across the app.


## Usage

#### Authentication

1. **Login**:
   - Enter your email and password in `LoginView`, then press **Login** to sign in.
   - Alternatively, use the **Sign in with Apple** or **Sign in with Google** buttons.

2. **Sign Up**:
   - In `LoginView`, navigate to **Sign Up** to create a new account.
   - Fill in the required details and create your account. This information is saved in Firestore.

3. **Profile**:
   - After logging in, the app navigates to `ProfileView`, displaying the user’s profile info.
   - Options to **Sign Out** or **Delete Account** are available in the profile.
  
## Key Components

- **MVVM Architecture**: `AuthViewModel` handles all authentication logic, while views like `LoginView`, `CreateAccountView`, and `ProfileView` are responsible for presenting data to the user.
- **PersonNameComponentsFormatter**: Used in `ProfileView` to format and display the user’s name cleanly.
- **Custom Helper Functions**: Includes various helper functions for validation, error handling, and UI styling utilities.

## Screenshots
<p align="center">  
  <img src="https://github.com/user-attachments/assets/6c9a5dba-ba83-4d72-81a7-e34d37fd19e9" width="300" alt="Login Page">
  <img src="https://github.com/user-attachments/assets/4d56f3bd-3e3f-4376-8e06-08e2a7ebab12" width="300" alt="Sign Up Page">
  <img src="https://github.com/user-attachments/assets/bf85aeb1-4fc6-435d-9b67-5d26a17c6cdf" width="300" alt="Profile Page">
</p>

## Testing

1. **Manual Testing**:
   - Verify login and sign-up flows using email/password and third-party authentication options.
   - Test Firestore data saving and retrieval functionalities.
   - Ensure that sign-out and delete account functionalities work as expected.

## Troubleshooting

- **Login Issues**: Ensure your app's Firebase project credentials are correctly configured.
- **Third-Party Sign-In Issues**: Double-check that Google and Apple sign-in methods are enabled in Firebase Console.
- **Firestore Data Retrieval Issues**: Verify that Firestore security rules allow authenticated users access.
