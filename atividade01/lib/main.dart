import 'package:flutter/material.dart';

void main() {
  runApp(const Questao01());
}

class Questao01 extends StatefulWidget {
  const Questao01({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Questao01State createState() => _Questao01State();
}

class _Questao01State extends State<Questao01> {
  String mensagem = 'Bem vindo(a)';

  void alterarMensagem() {
    setState(() {
      mensagem = 'Hora de aprender Flutter!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink, // Define a cor de fundo da AppBar
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questão 01 - Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                mensagem,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: alterarMensagem,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.pink, // Define a cor de fundo do botão
                ),
                child: const Text('Vamos lá?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
