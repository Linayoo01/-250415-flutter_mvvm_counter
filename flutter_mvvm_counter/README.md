# Flutter MVVM Counter

A simple Flutter application demonstrating the MVVM (Model-View-ViewModel) architecture pattern.

## Project Structure

```
flutter_mvvm_counter/
├─ lib/
│  ├─ main.dart
│  ├─ view/
│  │   └─ counter_screen.dart
│  ├─ view_model/
│  │   └─ counter_view_model.dart
│  └─ model/
│      └─ counter_model.dart
├─ pubspec.yaml
└─ README.md
```

## Architecture

This project follows the MVVM (Model-View-ViewModel) architecture pattern:

- **Model**: Contains the business logic and data (`CounterModel`)
- **View**: Handles the UI and user interactions (`CounterScreen`)
- **ViewModel**: Acts as a bridge between Model and View, handling presentation logic (`CounterViewModel`)

## Features

- Increment and decrement counter
- State management using Provider package
- Clean MVVM architecture
- Material Design 3 theming

## Getting Started

1. Make sure you have Flutter installed
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Run the app using `flutter run`

## Dependencies

- flutter: ^3.0.0
- provider: ^6.1.1 