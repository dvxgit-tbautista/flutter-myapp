// Import necessary packages
import 'package:flutter/material.dart';
import 'package:myapp/presentation/navigation_example_screens/screen_one.dart';

// Create a StatelessWidget named ScreenTwo
class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the UI for Screen Two
    return Scaffold(
      appBar: AppBar(
        // Set the app bar title
        title: const Text('Screen Two'),
        // Set the app bar background color
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // Create a TextButton widget with a callback to navigate to Screen One
        child: TextButton(
          child: const Text('Go To Screen One'),
          onPressed: () {
            // Use Navigator to push a new ScreenOne onto the stack
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) => const ScreenOne())));
          },
        ),
      ),
    );
  }
}
