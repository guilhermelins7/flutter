import 'package:flutter/material.dart';
import 'package:app_flutter/components/task.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool opacidade = true; // Declarando um estado
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        // Cabeçalho
        title: Text('Tarefas', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF2F80ED),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1.0 : 0,
        duration: Duration(milliseconds: 1000),
        child: ListView(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
