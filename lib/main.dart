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

class Task extends StatefulWidget {
  final String nome; // Imutável após ser definida, comum em StatelessWidget.
  const Task(this.nome, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(color: Colors.blue, height: 140),
            Column(
              children: [
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
                          widget.nome,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                          print(nivel);
                        },
                        child: Icon(Icons.arrow_drop_up),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Nivel: $nivel',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                LinearProgressIndicator(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
