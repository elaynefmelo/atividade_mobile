import 'package:flutter/material.dart';
import 'homePage.dart';
// ignore: unused_import
import 'saibaMais.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(), // Use a tela principal como tela inicial
    );
  }
}
