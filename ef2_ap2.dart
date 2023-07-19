import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ContainerCores(
                backgroundColor: Colors.grey,
                children: [
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                ],
              ),
              ContainerCores(
                backgroundColor: Colors.black,
                children: [
                  Colors.cyan,
                  Colors.purple,
                  Colors.yellow,
                ],
              ),
              ContainerCores(
                backgroundColor: null,
                children: [
                  Colors.red,
                  Colors.yellow,
                  Colors.blue,
                ],
              ),
              ContainerCores(
                backgroundColor: Colors.white,
                children: [
                  Colors.deepPurple,
                  Colors.deepOrange,
                  Colors.yellow,
                  Colors.lime,
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerCores extends StatelessWidget {
  const ContainerCores({
    this.backgroundColor,
    required this.children,
  });

  final Color? backgroundColor;
  final List<Color> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: backgroundColor,
      width: 100,
      height: 100,
      child: Stack(
        children: [
          for (var index = 0; index < children.length; index++)
            Positioned(
              top: index * 8 + 8,
              left: index * 8 + 8,
              child: Container(
                width: 50,
                height: 50,
                color: children[index],
              ),
            ),
        ],
      ),
    );
  }
}
