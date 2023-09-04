import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final String title;
  final int index;

  // Constructor to initialize the ListItem with a title and an index.
  const ListItem({Key? key, required this.title, required this.index})
      : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isSelected = false; // Track whether the item is selected or not.

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        title: Text(widget.title), // Display the title of the item.
        subtitle: Text(
            'item number ${widget.index}'), // Display the item's index as a subtitle.
        leading: Checkbox(
          value:
              _isSelected, // Use the _isSelected variable to control the Checkbox's state.
          onChanged: (value) {
            setState(() {
              _isSelected = value ??
                  false; // Update the _isSelected state when the Checkbox value changes.
            });
          },
        ),
      ),
    );
  }
}
