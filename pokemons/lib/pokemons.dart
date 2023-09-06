import 'package:flutter/material.dart';
import 'package:pokemons/pages/pokemonsPage.dart';

class Pokemons extends StatelessWidget {
  const Pokemons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémons Kanto',
      home: PokemonsPage(),
    );
  }
}
