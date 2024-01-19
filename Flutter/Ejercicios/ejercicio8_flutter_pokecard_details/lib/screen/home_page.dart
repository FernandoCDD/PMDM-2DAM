import 'package:ejercicio6_flutter_pokecard_api_get/models/character_response/pokemon_list_response/pokemon_list_response.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePageScreen extends StatefulWidget {
  final List<PokemonListResponse> pokemonList;
  const HomePageScreen({super.key, required this.pokemonList});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pokemon List"),
        ),
        body: Skeletonizer(),
      ),
    );
  }
}
