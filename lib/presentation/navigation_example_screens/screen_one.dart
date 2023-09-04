// Import the necessary Flutter material package.
import 'package:flutter/material.dart';

// Create a new Flutter widget named ScreenOne, which is a StatelessWidget.
class ScreenOne extends StatelessWidget {
  // Constructor for ScreenOne, it takes an optional Key as an argument.
  const ScreenOne({Key? key}) : super(key: key);

  // The build method required for StatelessWidget.
  @override
  Widget build(BuildContext context) {
    // Create a Scaffold widget, which provides a basic app structure.
    return Scaffold(
      // Define an AppBar at the top of the screen.
      appBar: AppBar(
        // Set the title of the AppBar to 'Screen One'.
        title: const Text('Screen One'),
        // Set the background color of the AppBar to green.
        backgroundColor: Colors.green,
      ),
      // Define the main content of the screen's body, centered.
      body: Center(
        // Create a TextButton widget with a text label 'Go Back'.
        child: TextButton(
          child: const Text('Go Back'),
          // Define the action to be performed when the button is pressed.
          onPressed: () {
            // Use the Navigator to pop (close) the current screen and return to the previous screen.

            //  Navigator.popUntil is used to pop routes until a specific condition is met, while Navigator.pop is used to pop the current route and return to the previous route in the navigation stack in a Flutter application.

            Navigator.popUntil(context, (route) => route.isFirst);
            // Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
