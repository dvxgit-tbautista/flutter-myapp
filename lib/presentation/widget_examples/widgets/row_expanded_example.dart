import 'package:flutter/material.dart';

class RowExpandedExample extends StatelessWidget {
  const RowExpandedExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
            flex: 2,
            child: Text(
              'Taylor Swift',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
        Container(
          height: 20,
          width: 20,
          color: Colors.pinkAccent,
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.greenAccent,
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
