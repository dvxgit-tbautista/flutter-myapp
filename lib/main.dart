import 'package:flutter/material.dart';
import 'package:myapp/presentation/counter/counter_screen.dart';
import 'package:myapp/presentation/navigation_example_screens/screen_one.dart';
import 'package:myapp/presentation/navigation_example_screens/screen_two.dart';
import 'package:myapp/presentation/widget_examples/widget_examples_screen.dart';
import 'package:myapp/presentation/list/list_screen.dart';
import 'package:myapp/root_bottom_navigation.dart';
import 'package:myapp/theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const RootBottomNavigation(),
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => const RootBottomNavigation(),
        '/screenOne': (BuildContext context) => const ScreenOne(),
        '/screenTwo': (BuildContext context) => const ScreenTwo(),
      },
    );
  }
}
