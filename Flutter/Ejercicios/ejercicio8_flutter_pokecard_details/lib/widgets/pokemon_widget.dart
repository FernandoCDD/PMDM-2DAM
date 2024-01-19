import 'package:ejercicio6_flutter_pokecard_api_get/models/character_response/pokemon_detail_response/pokemon_detail_response.dart';
import 'package:ejercicio6_flutter_pokecard_api_get/models/character_response/pokemon_list_response/pokemon_list_response.dart';
import 'package:ejercicio6_flutter_pokecard_api_get/screen/home_page.dart';
import 'package:ejercicio6_flutter_pokecard_api_get/widgets/pokemon_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<PokemonListResponse> fetchCharacter() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));

  if (response.statusCode == 200) {
    return PokemonListResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class PokemonWidget extends StatefulWidget {
  const PokemonWidget({super.key});

  @override
  State<PokemonWidget> createState() => _PokemonWidgetState();
}

class _PokemonWidgetState extends State<PokemonWidget> {
  late Future<PokemonListResponse> pokemonList;

  @override
  void initState() {
    super.initState();
    pokemonList = fetchCharacter();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<PokemonListResponse>(
        future: pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePageScreen(pokemonList: snapshot.data!.results!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
