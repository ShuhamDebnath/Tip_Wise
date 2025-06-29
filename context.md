# 📱 TipWise – Tip Calculator App in Flutter

Build a modern, production-ready **Tip Calculator App** named **TipWise** using Flutter, designed for Android and iOS. The app will calculate tips based on bill amount, tip percentage, and number of people. It will follow best practices in Flutter app architecture and UI/UX.

---

## 🧠 App Goals

- Simple, beautiful, and functional UI
- Input for bill amount, tip percentage, and split
- Real-time calculation
- Currency formatting (intl)
- Responsive design
- Dark and Light themes
- Modern architecture: Riverpod, Freezed, Hooks
- Platform: Android + iOS

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.5.1
  flutter_hooks: ^0.20.4
  freezed_annotation: ^2.4.1
  intl: ^0.18.1
  responsive_framework: ^1.1.0
  google_fonts: ^6.1.0

dev_dependencies:
  build_runner: ^2.4.6
  freezed: ^2.4.5

## 📦 Folder Structure 

lib/
├── main.dart
├── app.dart                     # Root MaterialApp setup
├── core/
│   ├── theme/                   # Themes (light, dark)
│   └── utils/                   # Formatters, extensions
├── features/
│   └── tip_calculator/
│       ├── data/
│       │   ├── models/
│       │   │   └── tip_input.dart
│       │   └── services/
│       │       └── tip_service.dart
│       ├── domain/
│       │   └── providers.dart
│       └── presentation/
│           ├── screens/
│           │   └── tip_screen.dart
│           └── widgets/
│               ├── input_field.dart
│               ├── slider_tip.dart
│               ├── people_selector.dart
│               └── result_card.dart
├── l10n/
│   └── intl_en.arb              # Localization