import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: MyWidget()),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: 50,
            height: 50,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
        ],
      ),
      Container(
        color: Colors.yellow,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              color: Colors.purple,
              width: 50,
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              color: Colors.cyan,
              width: 50,
              height: 100,
            ),
            Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        color: Colors.purple,
                        width: 50,
                        height: 50,
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min),
                      ),
                      Container(
                        color: Colors.cyan,
                        width: 50,
                        height: 50,
                      ),
                    ])),
          ],
        ),
      ),
    ]));
  }
}
