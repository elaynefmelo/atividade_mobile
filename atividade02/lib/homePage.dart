import 'package:atividade02/saibaMais.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, //cor da barra
        title: const Text('Início'),
      ),
      backgroundColor:
          const Color.fromARGB(255, 168, 168, 168), // cor de fundo da página
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Mas o que é Flutter?',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/imagem02.jpeg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SaibaMais(
                    imagem: '',
                  ),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Cor de fundo do botão
              ),
              child: const Text('Saiba mais'),
            ),
          ],
        ),
      ),
    );
  }
}
