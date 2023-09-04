// Import necessary Flutter libraries
import 'package:flutter/material.dart';

// Define a class called ButtonExamples that extends StatefulWidget
class ButtonExamples extends StatefulWidget {
  const ButtonExamples({Key? key}) : super(key: key);

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

// Define the state for the ButtonExamples class
class _ButtonExamplesState extends State<ButtonExamples> {
  // Initialize a boolean variable to keep track of the switch state
  bool switchState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Create a TextButton with event handlers for onPressed and onLongPress
        TextButton(
            onLongPress: () {
              print('Long pressed'); // Print a message when long-pressed
            },
            onPressed: () {
              print('TextButton pressed'); // Print a message when pressed
            },
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.blue, // Set button background color
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Text Button', // Display text on the button
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ))),
        // Create an IconButton with an event handler for onPressed
        IconButton(
            onPressed: () {
              print('icon pressed'); // Print a message when the icon is pressed
            },
            icon: const Icon(Icons.play_arrow)), // Display a play arrow icon
        // Create a Switch widget with a value and an onChanged event handler
        Switch(
            value: switchState, // Set the value of the switch
            onChanged: (value) {
              switchState = value; // Update the switch state
              setState(() {}); // Trigger a rebuild of the widget
            })
      ],
    );
  }
}
