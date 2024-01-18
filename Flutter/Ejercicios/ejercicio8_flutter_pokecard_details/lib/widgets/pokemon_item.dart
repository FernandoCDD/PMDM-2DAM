import 'package:ejercicio6_flutter_pokecard_api_get/models/character_response/pokemon_detail_response/pokemon_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class PokemonItem extends StatelessWidget {
  final PokemonDetailResponse pokemon;

  const PokemonItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            front: SizedBox(
              width: 250,
              height: 150,
              child: Card(
                color: Colors.grey[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      pokemon.sprites!.frontDefault!,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(pokemon.name!,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            decoration: TextDecoration.none)),
                  ],
                ),
              ),
            ),
            back: SizedBox(
              width: 250,
              height: 150,
              child: Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: ${pokemon.name!}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text('Height: ${pokemon.height}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text('Number: ${pokemon.id}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text('Base Experience: ${pokemon.baseExperience}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
