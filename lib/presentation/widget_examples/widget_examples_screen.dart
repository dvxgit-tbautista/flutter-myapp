import 'package:flutter/material.dart';
import 'package:myapp/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:myapp/presentation/widget_examples/widgets/hello_world.dart';
import 'package:myapp/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/row_expanded_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/second_image.dart';
import 'package:myapp/presentation/widget_examples/widgets/stack_first_image.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Basics")),
      body: Container(
        color: Colors.white,
        // DO NOT USE EXPANDED IN A SCROLL VIEW VERTICALLY
        child: const SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RowExpandedExample(),
              FirstColumnChild(),
              SizedBox(
                height: 20,
              ),
              HelloWorld(),
              SizedBox(
                height: 20,
              ),
              StackFirstImage(),
              SizedBox(
                height: 20,
              ),
              SecondImage(),
              SizedBox(
                height: 20,
              ),
              MediaQueryExample(),
              SizedBox(
                height: 20,
              ),
              LayoutBuilderExample(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('clicked'), child: const Icon(Icons.add)),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width / 2,
      height: size.height / 2,
      child: const Center(
        child: Text("Mediaquery Example"),
      ),
    );
  }
}
