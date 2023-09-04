import 'package:flutter/material.dart';

// This class defines custom app themes using Material 3 design principles.
// You can learn more about Material 3 at https://m3.material.io/
// The useMaterial3 flag enables Material 3 features in the app's theme.
// More info on useMaterial3: https://api.flutter.dev/flutter/material/ThemeData/useMaterial3.html

class AppTheme {
  AppTheme._(); // Private constructor to prevent accidental instantiation.

  // Define the primary color for the light theme.
  static const _primaryColorLight = Colors.lightBlueAccent;

  // Define the primary color for the dark theme.
  static const _primaryColorDark = Colors.lightGreenAccent;

  // Create a ThemeData instance for the light theme.
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColorLight,
      brightness: Brightness.light,
    ),
    useMaterial3: true, // Enable Material 3 features.
  );

  // Create a ThemeData instance for the dark theme.
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true, // Enable Material 3 features.
    appBarTheme: const AppBarTheme(
      centerTitle: false, // Set the app bar title alignment to the left.
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColorDark,
      brightness: Brightness.dark,
    ),
  );
}
