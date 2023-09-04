import 'package:flutter/material.dart';
import 'package:myapp/presentation/counter/counter_screen.dart';
import 'package:myapp/presentation/widget_examples/widget_examples_screen.dart';
import 'package:myapp/presentation/list/list_screen.dart';
import 'package:myapp/root_bottom_navigation.dart';

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
        // home: const WidgetExampleScreen());
        // home: const ListScreen());
        // home: const CounterScreen());
        home: const RootBottomNavigation());
  }
}
