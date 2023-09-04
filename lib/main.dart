import 'package:flutter/material.dart';
import 'package:myapp/presentation/counter/counter_screen.dart';
import 'package:myapp/presentation/navigation_example_screens/screen_one.dart';
import 'package:myapp/presentation/navigation_example_screens/screen_two.dart';
import 'package:myapp/presentation/widget_examples/widget_examples_screen.dart';
import 'package:myapp/presentation/list/list_screen.dart';
import 'package:myapp/root_bottom_navigation.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor for MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal, // Define the primary color theme
        // appBarTheme:
        //     const AppBarTheme(backgroundColor: Colors.greenAccent),
      ),
      // Define the initial route for the app
      home: const RootBottomNavigation(), // Set the home screen

      // Define named routes for navigation
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => const RootBottomNavigation(),
        '/screenOne': (BuildContext context) => const ScreenOne(),
        '/screenTwo': (BuildContext context) => const ScreenTwo(),
      },
    );
  }
}
