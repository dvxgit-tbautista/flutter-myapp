import 'package:flutter/material.dart';
import 'package:myapp/presentation/widget_examples/widget_examples_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
          // appBarTheme:
          //     const AppBarTheme(backgroundColor: Colors.greenAccent),
        ),
        home: const WidgetExampleScreen());
  }
}
