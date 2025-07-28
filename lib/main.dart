import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.red, height: 100, width: 100),
                Container(color: Colors.orange, height: 100, width: 100),
                Container(color: Colors.yellow, height: 100, width: 100),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.green, height: 100, width: 100),
                Container(color: Colors.cyan, height: 100, width: 100),
                Container(color: Colors.blue, height: 100, width: 100),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(color: Colors.purple, height: 100, width: 100),
                Container(color: Colors.pinkAccent, height: 100, width: 100),
                Container(color: Colors.white, height: 100, width: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
