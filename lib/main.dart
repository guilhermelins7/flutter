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
      home: Scaffold(
        appBar: AppBar(
          // Cabeçalho
          title: Text('Tarefas', style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xFF2F80ED),
        ),
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Container(color: Colors.blue, height: 140),
              Container(
                color: Colors.white70,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(color: Colors.black26, width: 72, height: 100),
                    Text('Aprender Flutter'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_drop_up),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
