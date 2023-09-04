import 'package:flutter/material.dart';
import 'package:myapp/presentation/list/widgets/list_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a list of example strings to display in the ListView
    List<String> example = ['diane', 'dane', 'azel', 'rezwan'];

    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Example'), // Title for the app bar
        ),
        body: Padding(
          padding: const EdgeInsets.all(10), // Add padding around the ListView
          child: ListView.separated(
              itemCount: example.length, // Number of items in the ListView
              separatorBuilder: (context, index) {
                // Add space between list items with a SizedBox
                return const SizedBox(
                    height: 10); // 10 pixels of vertical space
              },
              itemBuilder: (context, index) {
                // Create and return a ListItem widget for each item in the list
                return ListItem(
                  title: example[
                      index], // Pass the current item's text to the ListItem
                  index: index, // Pass the current item's index to the ListItem
                );
              }),
        ));
  }
}
