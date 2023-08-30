import 'package:flutter/material.dart';

class SecondImage extends StatelessWidget {
  const SecondImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 100,
        height: 100,
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.wsj.net/im-213677?width=1280&size=1.33333333'),
        ));
  }
}
