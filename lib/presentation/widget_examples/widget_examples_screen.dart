import 'package:flutter/material.dart';
import 'package:myapp/presentation/components/custom_button.dart';
import 'package:myapp/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:myapp/presentation/widget_examples/widgets/hello_world.dart';
import 'package:myapp/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/row_expanded_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/second_image.dart';
import 'package:myapp/presentation/widget_examples/widgets/stack_first_image.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Basics")),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const RowExpandedExample(),
              const SizedBox(
                height: 20,
              ),
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
              const SecondImage(),
              const SizedBox(
                height: 40,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 40,
              ),
              const LayoutBuilderExample(),
              const SizedBox(
                height: 40,
              ),
              const ButtonExamples(),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  print("tapped");
                },
                icon: Icons.home,
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonGesture(
                  onTap: () {
                    print("CustomButtonGesture tapped");
                  },
                  text: "gesture button"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('clicked'),
        child: const Icon(Icons.ac_unit),
      ),
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
