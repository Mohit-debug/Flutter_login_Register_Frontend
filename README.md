# Flutter Login/Register App

  This project consists of a Flutter frontend application and an Express/Node.js/Mongodb backend for login and registration functionality.

# Frontend Setup (Flutter)

  Step 1: Install Dependencies
    - Run the following command to install all necessary Flutter dependencies 
     command: pub get

  Step 2: Run Flutter Application
    - Run the application.

# Backend Setup (Express)

  Step 3: Clone/Download Backend
    - Clone or download the backend from the following repository: 
      https://github.com/Mohit-debug/Flutter_login_Register_Backend

  Step 4: Configure Environment Variables
    - Go to the .env file in the backend directory and add the following variables:
      MONGODB_URL = "<your_mongo_db_url>"
      JWT = "Token"
      ACCESS_TOKEN_EXPIRY = "7d"
      ACCESS_TOKEN_SECRET = "1d"
      FRONTEND_URL = "http://localhost:4200"
      BACKEND_URL = "http://localhost:8080"

  Step 5: Run Backend
    - To start the backend server, run the following command:
      npm start


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
