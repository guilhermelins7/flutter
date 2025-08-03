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
          leading: Container(),
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
                      Container(
                        width: 64,
                        height: 64,
                        margin: EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                            print(nivel);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text('UP', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          width: 200,
                          child: LinearProgressIndicator(
                            value: nivel / 10,
                            color: Colors.cyan,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          'Nivel: $nivel',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
