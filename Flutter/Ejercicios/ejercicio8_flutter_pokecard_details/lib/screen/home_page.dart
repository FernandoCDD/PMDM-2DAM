import 'package:ejercicio6_flutter_pokecard_api_get/models/character_response/pokemon_list_response/pokemon_list_response.dart';
import 'package:ejercicio6_flutter_pokecard_api_get/widgets/pokemon_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePageScreen extends StatefulWidget {
  final List<PokemonListResponse> pokemonList;
  const HomePageScreen({super.key, required this.pokemonList});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  bool _enabled = true;

  @override
  void initState() {
    super.initState();
    // Aquí puedes realizar la lógica para cargar la petición y luego cambiar el estado de _enabled.
    // Por ejemplo, podrías realizar una llamada a una función asincrónica para cargar datos.
    _loadData();
  }

  Future<void> _loadData() async {
    // Simulación de carga de datos.
    await Future.delayed(const Duration(seconds: 2));

    // Después de cargar los datos, cambia el estado de _enabled.
    setState(() {
      _enabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pokemon List"),
        ),
        body: Skeletonizer(
          enabled: _enabled,
          child: ListView.builder(
            itemCount: widget.pokemonList.length,
            itemBuilder: (context, index) {
              return PokemonItem(pokemon: widget.pokemonList[index])
            },
          )
        ),
      ),
    );
  }
}
