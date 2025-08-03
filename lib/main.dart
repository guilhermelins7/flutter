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
            Task(
              'Aprender Flutter',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              3,
            ),
            Task(
              'Andar de bike',
              'https://hips.hearstapps.com/runnersworld-uk/i/15829/cyclingrunning.jpg',
              2,
            ),
            Task(
              'Voar',
              'https://www.robertotranjan.com.br/wp-content/uploads/Voe-e-deixe-Voar.jpg',
              4,
            ),
            Task(
              'Aprender Flutter',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              3,
            ),
            Task(
              'Andar de bike',
              'https://hips.hearstapps.com/runnersworld-uk/i/15829/cyclingrunning.jpg',
              2,
            ),
            Task(
              'Voar',
              'https://www.robertotranjan.com.br/wp-content/uploads/Voe-e-deixe-Voar.jpg',
              4,
            ),
            Task(
              'Aprender Flutter',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              3,
            ),
            Task(
              'Andar de bike',
              'https://hips.hearstapps.com/runnersworld-uk/i/15829/cyclingrunning.jpg',
              2,
            ),
            Task(
              'Voar',
              'https://www.robertotranjan.com.br/wp-content/uploads/Voe-e-deixe-Voar.jpg',
              4,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome; // Imutável após ser definida, comum em StatelessWidget.
  final String foto;
  final int dificuldade;
  const Task(this.nome, this.foto, this.dificuldade, {super.key});

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
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(widget.foto, fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.nome,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 24),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: widget.dificuldade >= 1
                                      ? Colors.blue
                                      : Colors.blue[200],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: widget.dificuldade >= 2
                                      ? Colors.blue
                                      : Colors.blue[200],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: widget.dificuldade >= 3
                                      ? Colors.blue
                                      : Colors.blue[200],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: widget.dificuldade >= 4
                                      ? Colors.blue
                                      : Colors.blue[200],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: widget.dificuldade >= 5
                                      ? Colors.blue
                                      : Colors.blue[200],
                                ),
                              ],
                            ),
                          ],
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
                            value: widget.dificuldade > 0
                                ? (nivel / widget.dificuldade) / 10
                                : 1,
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
