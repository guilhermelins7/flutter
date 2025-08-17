import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dificultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nova Tarefa')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, right: 8, bottom: 16, left: 8),
          child: Container(
            height: 675,
            width: 355,
            decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nome', // definindo o placeholder
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: dificultyController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Dificuldade', // definindo o placeholder
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: imageController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Imagem', // definindo o placeholder
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Conteúdo do contoller nome: ${nameController.text}');
                    print(
                      'Conteúdo do contoller dificuldade: ${dificultyController.text}',
                    );
                    print(
                      'Conteúdo do contoller imagem: ${imageController.text}',
                    );
                  },
                  child: Text('Adicionar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
