import 'package:flutter/material.dart';

class SaibaMais extends StatelessWidget {
  const SaibaMais({super.key, required String imagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, //cor do AppBar
        title: const Text('Saiba Mais'),
      ),
      backgroundColor:
          const Color.fromARGB(255, 168, 168, 168), //cor de fundo da página
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter é um framework criado pelo Google.',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/imagem01.jpeg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, //cor do botão
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Voltar para a tela anterior
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
