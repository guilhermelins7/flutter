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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(title: Text('Nova Tarefa')),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 0,
                right: 8,
                bottom: 16,
                left: 8,
              ),
              child: Container(
                height: 675,
                width: 355,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return 'Informação vazia. Por favor, insira o nome da tarefa';
                          }
                          return null;
                        },
                        controller: nameController,
                        keyboardType: TextInputType.text,
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
                        validator: (value) {
                          if (value!.isEmpty ||
                              int.parse(value) > 5 ||
                              int.parse(value) < 1) {
                            // mesma condição de forma diferente da primeira.
                            return "Dificuldade inválida. Por favor, informe um valor entre 1 e 5.";
                          }
                        },
                        controller: dificultyController,
                        keyboardType: TextInputType.number,
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "URL de imagem inválida.";
                          }
                        },
                        controller: imageController,
                        keyboardType: TextInputType.url,
                        onChanged: (text) {
                          setState(
                            () {},
                          ); // Atualizar imagem sempre que mudar o campo.
                        },
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Imagem', // definindo o placeholder
                          fillColor: Colors.white70,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.blue),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageController.text,
                          errorBuilder:
                              (
                                BuildContext context,
                                Object exception,
                                StackTrace? stackTrace,
                              ) {
                                return Image.asset(
                                  'assets/images/nophoto.png',
                                  fit: BoxFit.cover,
                                );
                              },
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print(
                            'Conteúdo do contoller nome: ${nameController.text}',
                          );
                          print(
                            'Conteúdo do contoller dificuldade: ${dificultyController.text}',
                          );
                          print(
                            'Conteúdo do contoller imagem: ${imageController.text}',
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Salvando nova tarefa."),
                            ),
                          );
                        }
                      },
                      child: Text('Adicionar'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
