import 'package:ejercicio10_flutter_listas_moviedb/model/actor_list/actor_list_response/actor_list_response.dart';
import 'package:ejercicio10_flutter_listas_moviedb/model/movie_list/movie_list_response.dart';
import 'package:ejercicio10_flutter_listas_moviedb/screen/movie_page.dart';
import 'package:ejercicio10_flutter_listas_moviedb/screen/people_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<ActorListResponse> fetchActor() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=fba6287e1b5585e45727ead4703af755'));

  if (response.statusCode == 200) {
    return ActorListResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

Future<MovieListResponse> fetchMovie() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/trending/movie/day?api_key=fba6287e1b5585e45727ead4703af755'));

  if (response.statusCode == 200) {
    return MovieListResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

// Hago las listas Future en el homePage, tanto de los actores como de las pelis.
// En el _HomeScreen instancio las listas future.
// Generar un future late de las listas, hago el init state para iniciar la petición. y se le pasa un IndexedStack

class _HomeScreenPageState extends State<HomeScreenPage> {
  int _selectedIndex = 0;
  late Future<ActorListResponse> actorList;
  late Future<MovieListResponse> movieList;

  @override
  void initState() {
    super.initState();
    actorList = fetchActor();
    movieList = fetchMovie();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TheMovieDB'),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          FutureBuilder<ActorListResponse>(
              future: actorList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ActorsPage(actorList: snapshot.data!.results!);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),
          FutureBuilder<MovieListResponse>(
              future: movieList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return MoviesPage(movieList: snapshot.data!.results!);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
