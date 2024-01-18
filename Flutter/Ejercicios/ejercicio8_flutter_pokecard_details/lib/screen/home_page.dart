import 'package:ejercicio6_flutter_pokecard_api_get/widgets/pokemon_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    HomePageScreen(
      pokemons: List<PokemonWidget>.generate(10, (i) => 'Item $i'),
    ),
  );
}
class HomePageScreen extends StatelessWidget {
  final List<PokemonWidget> pokemons;
  const HomePageScreen({super.key, required this.pokemons});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pokemones"),
        ),
      body: ListView.builder(
        itemCount: .length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, items){
          return ListTile(
            
          )
        }
      ),
      ),
    );
  }
}
