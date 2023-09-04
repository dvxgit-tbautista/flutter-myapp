// Import necessary packages and files
import 'package:flutter/material.dart';
import 'package:myapp/application/theme_service.dart';
import 'package:myapp/presentation/navigation_example_screens/screen_one.dart';
import 'package:myapp/presentation/navigation_example_screens/screen_two.dart';
import 'package:myapp/root_bottom_navigation.dart';
import 'package:myapp/theme.dart';
import 'package:provider/provider.dart';

// Main function, entry point of the application
void main() {
  // Run the app with a ChangeNotifierProvider to manage themes
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(), // Create a ThemeService instance
    child: const MyApp(), // Use MyApp as the root widget
  ));
}

// The main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        // Set the theme mode based on the user's preference
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme, // Light theme
        darkTheme: AppTheme.darkTheme, // Dark theme
        home:
            const RootBottomNavigation(), // Initial screen is RootBottomNavigation
        routes: <String, WidgetBuilder>{
          '/root': (BuildContext context) => const RootBottomNavigation(),
          '/screenOne': (BuildContext context) => const ScreenOne(),
          '/screenTwo': (BuildContext context) => const ScreenTwo(),
        },
      );
    });
  }
}
