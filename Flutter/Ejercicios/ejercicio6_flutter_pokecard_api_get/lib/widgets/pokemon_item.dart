import 'package:ejercicio6_flutter_pokecard_api_get/models/character_response/pokemon_detail_response/pokemon_detail_response.dart';
import 'package:flutter/material.dart';

class PokemonItem extends StatelessWidget {
  final PokemonDetailResponse pokemon;

  const PokemonItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Center(
        
      child: Column(
        children: [
          Image.network(
            pokemon.sprites!.frontDefault!,
            height: 100,
            width: 100,
          ),
          Text(pokemon.name!, style: const TextStyle(fontSize: 20, color: Colors.black, decoration: TextDecoration.none)),
        ],
      ),
    );
  }
}
