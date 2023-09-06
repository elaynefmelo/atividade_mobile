import 'package:pokemons/models/pokemon.dart';

class PokemonRepository {
  static List<Pokemon> tabela = [
    Pokemon(
        icone: 'images/bulbasaur.jpeg',
        nome: 'Bulbasaur',
        tipo: 'Planta',
        ataque: 'Chicote de vinha'),
    Pokemon(
        icone: 'images/charmander.jpeg',
        nome: 'Charmander',
        tipo: 'Fogo',
        ataque: 'Produzir chamas'),
    Pokemon(
        icone: 'images/squirtle.png',
        nome: 'Squirtle',
        tipo: 'Água',
        ataque: 'Atirar água de sua boca')
  ];
}
