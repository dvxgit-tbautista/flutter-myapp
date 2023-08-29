import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme:
                const AppBarTheme(backgroundColor: Colors.greenAccent)),
        home: Scaffold(
          appBar: AppBar(title: const Text("Flutter Basics")),
          body: Container(
            color: Colors.lightBlue,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
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
                      color: Colors.white,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                Container(
                  color: Colors.green,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('First Column child'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amberAccent),
                  child: const Center(
                    child: Text(
                      'Hello World!',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/taylor.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(top: 80, child: Text('Taylor Swift'))
                  ],
                ),
                const SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.wsj.net/im-213677?width=1280&size=1.33333333'),
                    )),
                const SizedBox(
                  height: 40,
                ),
                const Text('Last Column Child')
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => debugPrint('clicked'),
              child: const Icon(Icons.add)),
        ));
  }
}
