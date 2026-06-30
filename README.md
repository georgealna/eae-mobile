# EAE Mobile

EAE Mobile is a Flutter application for an assessment and analytics workflow. It includes secure access, authentication, assessment inventory, assessment setup, assessment sessions, forensic checkpoints, analytics, and settings screens.

The project follows a feature-based structure and uses Cubit/BLoC for state management, Dio for API requests, get_it for dependency injection, shared_preferences for local storage, and json_serializable/freezed for generated models and states.

## Main Features

- Splash and app initialization flow
- Secure access screen
- Login authentication connected through the networking layer
- Assessment inventory and assessment selection
- Assessment setup and pre-check flow
- Assessment session screens for questions, uploads, navigation, and submission
- Forensics checkpoint screen
- Analytics dashboard
- Settings screen with profile, security, notifications, and support sections
- Light/dark mode and language direction handling

## Tech Stack

- Flutter
- Dart SDK `^3.9.2`
- flutter_bloc
- get_it
- dio
- shared_preferences
- internet_connection_checker
- flutter_screenutil
- freezed
- json_serializable
- build_runner

## Project Structure

```text
lib/
  core/
    constants/
    di/
    helpers/
    language/
    networking/
    public_widgets/
    routing/
    theme/
  features/
    analytics/
    assessment_inventory/
    assessment_setup/
    assessment_session/
    auth/
    bottom_nav/
    forensics_checkpoint/
    secure_access/
    settings/
    splash/
  eae_app.dart
  main.dart
```

## Prerequisites

Before running the project, install:

- Flutter SDK
- Dart SDK supported by the Flutter version
- Android Studio or VS Code
- Android SDK and an emulator, or a connected physical device
- Xcode if running on iOS or macOS

Check your local setup:

```bash
flutter doctor
```

## Installation

1. Clone the repository:

```bash
git clone <repository-url>
cd eae_mobile
```

2. Install dependencies:

```bash
flutter pub get
```

3. Generate required files:

```bash
dart run build_runner build --delete-conflicting-outputs
```

4. Run the app:

```bash
flutter run
```

## Development Commands

Install packages:

```bash
flutter pub get
```

Run code generation:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Analyze the project:

```bash
flutter analyze
```

Run tests:

```bash
flutter test
```

Run on a selected device:

```bash
flutter devices
flutter run -d <device-id>
```

## Backend Integration Pattern

Backend integrations should follow the structure:

- Request and response models in `data/models`
- Remote data source in `data/datasources`
- Repository in `data/repos`
- Cubit and state in `logic`
- Dependency injection registration in `core/di/dependency_injection.dart`
- UI calls the Cubit only, not the API layer directly

After adding or editing `json_serializable` or `freezed` files, run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

