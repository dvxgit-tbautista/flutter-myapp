import 'package:flutter/material.dart';

class StackFirstImage extends StatelessWidget {
  const StackFirstImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            'assets/taylor.jpg',
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(top: 80, left: 10, child: Text('Taylor Swift'))
      ],
    );
  }
}
