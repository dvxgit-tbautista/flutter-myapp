import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.amberAccent),
        child: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
