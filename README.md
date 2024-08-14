# News App With Real Time Data

![logo](https://github.com/user-attachments/assets/6c6f2ed7-fa87-4be2-9a9a-d6f6e96d477b)

This News App is a Flutter-based application that fetches and displays the latest news articles using an API. The app supports various features such as smooth animations, text-to-speech capabilities, and custom UI components, making it a comprehensive and user-friendly news reader.

## Features

- **Latest News:** Fetches real-time news articles from a news API.
- **Smooth Animations:** Utilizes the `shimmer` package for loading animations and `lottie` for beautiful animations.
- **State Management:** Managed efficiently with the `GetX` package.
- **Toast Notifications:** Provides quick feedback to users with `fluttertoast`.
- **HTTP Requests:** Handles API requests using the `http` package.

## API Integration

This app integrates with a news API to fetch the latest articles. To use the app, you'll need to obtain an API key from a news provider (such as [NewsAPI](https://newsapi.org/)) and configure it in the app.

### Configuring the API Key

1. **Obtain your API key:** 
   - Sign up at a news provider like [NewsAPI](https://newsapi.org/) and get your API key.

2. **Add your API key to the project:**
   - Open the project in your favorite IDE.
   - Locate the file where the API key is needed, usually in the API service or constants file.
   - Replace the placeholder with your actual API key:
     ```dart
     const String apiKey = 'YOUR_API_KEY_HERE';
     ```
   - Save the file.

3. **Test the API:**
   - Run the app and check if the news articles are fetched and displayed correctly.

## Packages Used

- [**cupertino_icons**](https://pub.dev/packages/cupertino_icons): ^1.0.8  
  Provides the iOS-style icons.

- [**fluttertoast**](https://pub.dev/packages/fluttertoast): ^8.2.4  
  Displays customizable toast messages.

- [**get**](https://pub.dev/packages/get): ^4.6.6  
  Simple and powerful state management for Flutter.

- [**http**](https://pub.dev/packages/http): ^1.2.0  
  Handles HTTP requests and responses.

- [**shimmer**](https://pub.dev/packages/shimmer): ^3.0.0  
  Adds shimmer loading effects to the UI.

- [**lottie**](https://pub.dev/packages/lottie): ^3.1.2  
  Provides smooth animations using Lottie files.

## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/OmBharsakle/News-App-Api.git
   cd News-App-Api

## App Screen Shots

<div align="center">
  <img src="https://github.com/user-attachments/assets/5079240a-678a-4173-a2fd-51ee0d8cf35f" height="500">
  <img src="https://github.com/user-attachments/assets/12ed3e61-0bd8-45a1-a16e-214e166bd26f" height="500">
  <img src="https://github.com/user-attachments/assets/c429faeb-441b-423a-9e5b-86f01a51240c" height="500">
  <img src="https://github.com/user-attachments/assets/ad4372e3-2d78-4406-9dd8-160fcfbcd0d9" height="500">
  <img src="https://github.com/user-attachments/assets/d8c28f93-d332-4937-982c-9c44bdd67438" height="500">
  <img src="https://github.com/user-attachments/assets/7fc67812-7d4c-4443-bbd6-45763ab06f36" height="500">
  <img src="https://github.com/user-attachments/assets/babf16e9-a32d-4100-b0a2-2c46f986d6ba" height="500">
</div>

<h1></h1>


https://github.com/user-attachments/assets/6ba02371-b7c3-4c87-ba20-63e4637c8f8e




