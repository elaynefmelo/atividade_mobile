// ignore: file_names
import 'package:flutter/material.dart';
import 'package:pokemons/models/pokemon.dart';
import 'package:pokemons/pages/pokemon_detalhes_page.dart';
import 'package:pokemons/repositories/pokemon_repository.dart';

// ignore: must_be_immutable
class PokemonsPage extends StatefulWidget {
  const PokemonsPage({Key? key}) : super(key: key);

  @override
  State<PokemonsPage> createState() => _PokemonsPageState();
}

class _PokemonsPageState extends State<PokemonsPage> {
  final tabela = PokemonRepository.tabela;
  List<Pokemon> selecionados = [];

  // ignore: non_constant_identifier_names
  AppBarDinamica() {
    if (selecionados.isEmpty) {
      return AppBar(
        title: const Text('Pokemóns Kanto'),
      );
    } else {
      return AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                selecionados = [];
              });
            },
          ),
          title: Text('${selecionados.length} selecionados'),
          backgroundColor: Colors.blueGrey[50],
          elevation: 1,
          iconTheme: const IconThemeData(color: Colors.black87),
          toolbarTextStyle: const TextTheme(
              headline6: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )).bodyText2,
          titleTextStyle: const TextTheme(
              headline6: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )).headline6);
    }
  }

  mostrarDetalhes(BuildContext context, Pokemon pokemon) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PokemonDetalhesPage(pokemon: pokemon),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDinamica(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int pokemon) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            leading: (selecionados.contains(tabela[pokemon]))
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(
                    width: 80,
                    child: Image.asset(tabela[pokemon].icone),
                  ),
            title: Text(
              tabela[pokemon].nome,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(tabela[pokemon].tipo),
            selected: selecionados.contains(tabela[pokemon]),
            selectedTileColor: Colors.blue[50],
            onLongPress: () {
              setState(() {
                (selecionados.contains(tabela[pokemon]))
                    ? selecionados.remove(tabela[pokemon])
                    : selecionados.add(tabela[pokemon]);
              });
            },
            onTap: () => mostrarDetalhes(context, tabela[pokemon]),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, ___) => const Divider(),
        itemCount: tabela.length,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionados.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.star),
              label: const Text(
                'FAVORITAR',
                style: TextStyle(
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
