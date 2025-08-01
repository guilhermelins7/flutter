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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Task('Aprender Flutter'),
            Task('Andar de bike'),
            Task('Voar'),
            Task('Aprender Flutter'),
            Task('Andar de bike'),
            Task('Voar'),
            Task('Aprender Flutter'),
            Task('Andar de bike'),
            Task('Voar'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome; // Imutável após ser definida, comum em StatelessWidget.

  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(color: Colors.blue, height: 140),
            Container(
              color: Colors.white70,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(color: Colors.black26, width: 72, height: 100),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      nome,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 24),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
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
    );
  }
}
