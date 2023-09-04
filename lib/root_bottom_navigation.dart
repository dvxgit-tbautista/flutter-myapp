import 'package:flutter/material.dart';
import 'package:myapp/presentation/counter/counter_screen.dart';
import 'package:myapp/presentation/list/list_screen.dart';
import 'package:myapp/presentation/widget_examples/widget_examples_screen.dart';

// This class represents the root widget for the bottom navigation.
class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({Key? key}) : super(key: key);

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0; // The index of the currently selected tab.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The main content area that displays the selected screen.
      body: IndexedStack(index: _currentIndex, children: const [
        WidgetExampleScreen(), // Screen for widget examples.
        CounterScreen(), // Screen for a counter.
        ListScreen(), // Screen for displaying a list.
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            Colors.amber, // Background color of the bottom navigation bar.
        selectedItemColor: Colors.blue, // Color of the selected item's icon.
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab index.
          });
        },
        currentIndex: _currentIndex, // Set the currently selected tab.
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'examples'), // Icon and label for the first tab.
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'counter'), // Icon and label for the second tab.
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'list'), // Icon and label for the third tab.
        ],
      ),
    );
  }
}
