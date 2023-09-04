import 'package:flutter/material.dart';

// Define a custom widget called "Person" that extends StatelessWidget.
class Person extends StatelessWidget {
  final String pictureUrl; // URL for the person's picture
  final String name; // Person's name
  final String age; // Person's age
  final String country; // Person's country
  final String job; // Person's job

  // Constructor for the Person widget, which requires several properties.
  const Person({
    required this.pictureUrl,
    required this.name,
    required this.age,
    required this.country,
    required this.job,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a Container with a teal background and rounded corners.
    return Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // Create a stack for the person's image and name.
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Display the person's image fetched locally.
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Image.asset(
                  pictureUrl, // Use Image.asset with the provided asset path
                  fit: BoxFit.cover,
                ),
              ),
              // Display a white container with the person's name.
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white54,
                ),
                width: double.infinity,
                child: Center(
                    child: Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                )),
              ),
            ],
          ),
          // Create a padding for the person's information (age, job, country).
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                // Create a row for displaying the age.
                _createPersonInfoRow(key: 'age', value: age, context: context),
                const SizedBox(
                  height: 4,
                ),
                // Create a row for displaying the job.
                _createPersonInfoRow(key: 'job', value: job, context: context),
                const SizedBox(
                  height: 4,
                ),
                // Create a row for displaying the country.
                _createPersonInfoRow(
                    key: 'country', value: country, context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to create a row for displaying person information.
  Row _createPersonInfoRow(
      {required String key,
      required String value,
      required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display the information key (e.g., "Age:") on the left.
        Flexible(
            child: Text(
          '$key:',
          style: Theme.of(context).textTheme.bodyLarge,
        )),
        const Spacer(),
        // Display the information value (e.g., "30") on the right.
        Expanded(
            child: Text(
          value,
          style: Theme.of(context).textTheme.titleSmall,
        )),
      ],
    );
  }
}
