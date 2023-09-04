import 'package:flutter/material.dart';
import 'package:myapp/application/theme_service.dart';
import 'package:myapp/presentation/components/custom_button.dart';
import 'package:myapp/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:myapp/presentation/widget_examples/widgets/hello_world.dart';
import 'package:myapp/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/person.dart';
import 'package:myapp/presentation/widget_examples/widgets/row_expanded_example.dart';
import 'package:myapp/presentation/widget_examples/widgets/second_image.dart';
import 'package:myapp/presentation/widget_examples/widgets/stack_first_image.dart';
import 'package:provider/provider.dart';

// WidgetExampleScreen displays various widgets as examples
class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Basics")),
      body: SingleChildScrollView(
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
            const Person(
              name: 'Joji',
              age: '30',
              country: 'USA',
              job: 'loml',
              pictureUrl: 'assets/Joji.jpg',
            ),
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
              height: 20,
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
                Navigator.pushNamed(context, '/screenOne');
              },
              icon: Icons.home,
              iconColor: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonGesture(
              onTap: () {
                Navigator.pushNamed(context, '/screenTwo');
              },
              text: 'gesture button',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Toggle the theme when the FloatingActionButton is pressed
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
        },
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}

// MediaQueryExample widget demonstrates the use of MediaQuery
class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size using MediaQuery
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
