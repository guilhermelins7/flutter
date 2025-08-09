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
            Task('Aprender Flutter', 'assets/images/flutter.png', 3),
            Task('Andar de bike', 'assets/images/bike.jpg', 2),
            Task('Voar', 'assets/images/fly.jpg', 4),
            SizedBox(height: 80),
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
