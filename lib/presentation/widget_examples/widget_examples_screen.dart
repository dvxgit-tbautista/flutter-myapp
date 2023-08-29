import 'package:flutter/material.dart';
import 'package:myapp/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:myapp/presentation/widget_examples/widgets/hello_world.dart';
import 'package:myapp/presentation/widget_examples/widgets/row_expanded_example.dart';
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
        child: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const RowExpandedExample(),
              const FirstColumnChild(),
              const SizedBox(
                height: 20,
              ),
              const HelloWorld(),
              const SizedBox(
                height: 20,
              ),
              const StackFirstImage(),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.wsj.net/im-213677?width=1280&size=1.33333333'),
                  )),
              const SizedBox(
                height: 20,
              ),
              mediaQueryExample(context),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Center(
                    child: Container(
                      color: Colors.lightBlue,
                      width: constraints.maxWidth / 2,
                      height: constraints.maxHeight / 2,
                      child: const Center(
                        child: Text("Layout Builder Example"),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(
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

  Container mediaQueryExample(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width / 2,
      height: size.height / 5,
      child: const Center(
        child: Text("Mediaquery Example"),
      ),
    );
  }
}
