import 'package:flutter/material.dart';
import 'package:pokemons/models/pokemon.dart';

// ignore: must_be_immutable
class PokemonDetalhesPage extends StatefulWidget {
  Pokemon pokemon;

  PokemonDetalhesPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PokemonDetalhesPageState createState() => _PokemonDetalhesPageState();
}

class _PokemonDetalhesPageState extends State<PokemonDetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Você escolheu o',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Image.asset(widget.pokemon.icone),
                ),
                Container(width: 10),
                Text(
                  widget.pokemon.nome,
                  style: const TextStyle(
                    fontSize: 26,
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
