# 🧮 TipWise - Smart Tip Calculator

TipWise is a modern, user-friendly tip calculator app built with Flutter for Android and iOS. It helps you quickly calculate tips based on bill amount, tip percentage, and number of people sharing the bill.

![TipWise Screenshot](screenshots/app_screenshot.png) <!-- Add screenshot later -->

## ✨ Features

- 💸 Calculate tips in real-time as you input values
- 📱 Beautiful, responsive UI with dark/light theme support
- 🎚️ Intuitive controls:
  - Bill amount input field
  - Tip percentage slider (0-50%)
  - People selector with +/- buttons
- 📊 Display results:
  - Tip per person
  - Total per person
- 🌐 Currency formatting
- ⚙️ Modern architecture:
  - Riverpod for state management
  - Freezed for immutable data models
  - Hooks for efficient state management

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (version 3.8.1 or higher)
- Android Studio or Xcode (for building)
- Git (for version control)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/ShuhamDebnath/Tip_Wise.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Tip_Wise
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

### Building
- For Android:
  ```bash
  flutter build apk
  ```
- For iOS:
  ```bash
  flutter build ios
  ```

## 🧪 Running Tests
```bash
flutter test
```

## 🛠️ Built With
- [Flutter](https://flutter.dev) - Beautiful native apps in record time
- [Riverpod](https://riverpod.dev) - State management library
- [Freezed](https://pub.dev/packages/freezed) - Immutable data classes
- [Hooks](https://pub.dev/packages/flutter_hooks) - Efficient state management

## 📂 Project Structure
```
lib/
├── main.dart          # Application entry point
├── app.dart           # Root MaterialApp setup
├── core/              # Core functionality
│   ├── theme/         # Theme definitions
│   └── utils/         # Utility classes (formatters, etc.)
└── features/
    └── tip_calculator/ # Tip calculator feature
        ├── data/      # Data layer (models, services)
        ├── domain/    # Business logic (providers)
        └── presentation/ # UI layer (screens, widgets)
```

## 🤝 Contributing
Contributions are welcome! Please follow these steps:
1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a pull request

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgements
- Flutter community for amazing resources
- Riverpod and Freezed maintainers
