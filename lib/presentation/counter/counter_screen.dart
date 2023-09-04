// Import necessary Flutter packages
import 'package:flutter/material.dart';

// Create a Flutter StatefulWidget called CounterScreen
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  // Create a State object for CounterScreen
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// Create the State class for CounterScreen
class _CounterScreenState extends State<CounterScreen> {
  // Initialize a counter variable
  int _counter = 0;

  // Build the UI for the CounterScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')), // App bar with a title
      body: Center(
        // Center-align the child
        child: Text(
          _counter.toString(), // Display the counter value as text
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
            color: _counter > 0
                ? Colors.green
                : Colors.black, // Change text color based on counter value
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                // Decrease the counter when the '-' button is pressed
                setState(() {
                  _counter = _counter - 1;
                });
              },
              backgroundColor: Colors.red, // Set button background color to red
              child:
                  const Icon(Icons.remove), // Display a '-' icon on the button
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                // Increase the counter when the '+' button is pressed
                setState(() {
                  _counter = _counter + 1;
                });
              },
              backgroundColor:
                  Colors.green, // Set button background color to green
              child: const Icon(Icons.add), // Display a '+' icon on the button
            ),
          ],
        ),
      ),
    );
  }
}
