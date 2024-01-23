import 'package:ejercicio10_flutter_listas_moviedb/model/movie_list/results.dart';
import 'package:ejercicio10_flutter_listas_moviedb/widget/movie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MoviesPage extends StatefulWidget {
  final List<Results> movieList;

  const MoviesPage({super.key, required this.movieList});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  bool _activado = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _activado = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie List'),
        centerTitle: true,
      ),
      body: Skeletonizer(
          enabled: _activado,
          child: ListView.builder(
            itemCount: widget.movieList.length,
            itemBuilder: (context, index) {
              return MovieListItem(movie: widget.movieList[index]);
            },
          )),
    );
  }
}
